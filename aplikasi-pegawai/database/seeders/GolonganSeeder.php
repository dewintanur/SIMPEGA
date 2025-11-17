<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
class GolonganSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
  public function run()
{
    $gol = [
        'IV/e','IV/d','IV/c','IV/b','IV/a',
        'III/d','III/c','III/b','III/a'
    ];

    foreach ($gol as $g) {
        DB::table('golongan')->insert([
            'nama' => $g,
            'created_at' => now(),
            'updated_at' => now(),
        ]);
    }
}
}
