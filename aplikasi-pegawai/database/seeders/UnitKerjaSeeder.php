<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
class UnitKerjaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run()
    {
        $units = [
            'Kepala Sekretariat Utama',
            'Keuangan',
            'Pemetaan',
            'Bidang Perencanaan',
            'Bidang Kepegawaian',
            'DKP',
            'Kepala Biro Perencanaan'
        ];

        foreach ($units as $u) {
            DB::table('unit_kerja')->insert([
                'nama' => $u,
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }
    }

}
