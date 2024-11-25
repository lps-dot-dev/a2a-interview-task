<?php

namespace App\Console\Commands;

use App\Models\Theater;
use Carbon\Carbon;
use Carbon\CarbonImmutable;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\DB;

class GetHighestSellingTheaterByDate extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'app:get-highest-selling-theater-by-date';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Prompts the user for a calendar date to find which movie theater generated the most sales for that day.';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        $this->line('Welcome to the A2A Theaters POS program! This program will present the movie theater with the most sales for a given day');

        $now = Carbon::now();
        $year = $this->anticipate('What year are you inquiring about?', [$now->year]);
        if (is_numeric($year) === false) {
            $this->fail('The given year is not a number, please try again!');
        }
        
        $month = $this->anticipate('What month are you inquiring about', [$now->month]);
        if (is_numeric($month) === false) {
            $this->fail('The given month is not a number, please try again!');
        }

        $day = $this->anticipate('Lastly, what day are you inquiring about?', [$now->day]);
        if (is_numeric($month) === false) {
            $this->fail('The given day is not a number, please try again!');
        }

        $givenDate = "{$year}-{$month}-{$day}";
        if ($this->confirm('Is the following date correct? ' . $givenDate, true) === false) {
            return 0;
        }

        $givenStartOfDay = CarbonImmutable::createFromFormat('Y-m-d', $givenDate)->startOfDay();
        $givenEndOfDay = $givenStartOfDay->copy()->endOfDay();

        // Eloquent relationships are hard =') ended up just using the query builder to get this query going
        $theaters = DB::table('theaters')
            ->selectRaw('theaters.id, theaters.name, sum(theater_movie_transactions.total) as sum_total')
            ->join('theater_movies', 'theaters.id', '=', 'theater_movies.theater_id')
            ->join('theater_movie_transactions', 'theater_movies.id', '=', 'theater_movie_transactions.theater_movie_id')
            ->whereBetween('theater_movie_transactions.created_at', [$givenStartOfDay, $givenEndOfDay])
            ->groupBy('theaters.id')
            ->get();

        if ($theaters->isEmpty()) {
            $this->line('No transactions found for the given date!');
            return 0;
        }

        $biggestTheaterTotal = $theaters->max('sum_total');
        $biggestEarningTheater = $theaters->first(fn ($theater) => $theater?->sum_total === $biggestTheaterTotal);
        $this->line($biggestEarningTheater?->name . ' has the biggest earnings at ' . round($biggestEarningTheater?->sum_total, 2));

        return 0;
    }
}
