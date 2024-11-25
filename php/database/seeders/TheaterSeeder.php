<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class TheaterSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('theaters')->insert([
            'name' => 'AMC Marina Pacifica 12',
            'address' => '6346 E Pacific Coast Hwy, Long Beach, CA 90803'
        ]);

        DB::table('theaters')->insert([
            'name' => 'Cinemark Howard Hughes Los Angeles and XD',
            'address' => '6081 Center Dr Suite 201, Los Angeles, CA 90045'
        ]);
    }
}
