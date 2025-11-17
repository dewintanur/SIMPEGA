<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
class EselonSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run()
    {
        $eselon = [
            'I',
            'II',
            'III',
            'IV'
        ];

        foreach ($eselon as $e) {
            DB::table('eselon')->insert([
                'nama' => $e,
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }
    }

}
