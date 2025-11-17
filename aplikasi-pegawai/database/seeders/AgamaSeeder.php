<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
class AgamaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run()
    {
        $agamas = [
            'Islam',
            'Kristen',
            'Katolik',
            'Hindu',
            'Buddha',
            'Konghucu'
        ];

        foreach ($agamas as $a) {
            DB::table('agamas')->insert([
                'nama' => $a,
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }
    }

}
