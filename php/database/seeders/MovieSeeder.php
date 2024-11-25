<?php

namespace Database\Seeders;

use Carbon\Carbon;
use GuzzleHttp\Client;
use GuzzleHttp\RequestOptions;
use GuzzleHttp\Utils;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class MovieSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(Client $client): void
    {
        $response = $client->get('https://api.themoviedb.org/3/movie/now_playing', [
            RequestOptions::HEADERS => ['Accept' => 'application/json'],
            RequestOptions::QUERY => ['api_key' => env('MOVIEDB_API_KEY')]
        ]);

        $movies = Utils::jsonDecode($response->getBody());
        if (empty($movies?->results)) {
            return;
        }

        $theaterMovieIds = collect($movies?->results)
            ->filter(fn ($movie) => $movie?->adult === false)
            ->map(function ($movie) {
                $movieId = DB::table('movies')->insertGetId([
                    'name' => $movie?->original_title,
                    'plot' => $movie?->overview,
                    'release_date' => Carbon::createFromFormat('Y-m-d', $movie?->release_date),
                    'language' => $movie?->original_language 
                ]);

                return DB::table('theater_movies')->insertGetId([
                    'theater_id' => random_int(1, 2),
                    'movie_id' => $movieId
                ]);
            });

        $theaterMovieIds->each(function ($theaterMovieId) {
            // Generate up to 15 random transactions for each theater/movie combo
            for ($index = 0; $index < random_int(1, 15); $index++) {
                $randomSubTotal = fake()->randomNumber();
                DB::table('theater_movie_transactions')->insert([
                    'theater_movie_id' => $theaterMovieId,
                    'sub_total' => $randomSubTotal,
                    'sales_tax' => 9.5,
                    'total' => round($randomSubTotal * 1.095, 2)
                ]);
            }
        });
    }
}
