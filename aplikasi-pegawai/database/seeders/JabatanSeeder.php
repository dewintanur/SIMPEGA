<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
class JabatanSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run()
    {
        $jabatan = [
            'Kepala Sekretariat Utama',
            'Penyusun Laporan Keuangan',
            'Surveyor Pemetaan Pertama',
            'Analis Data Survei dan Pemetaan',
            'Perancang Per-UU-an',
            'Kepala Biro Perencanaan, Kepegawaian dan Hukum',
            'Widyaiswara Utama',
            'Analis Kepegawaian Madya',
            'Kepala Sub Bidang Kerjasama dan Pelayanan Riset, DKP',
            'Analis Hukum',
            'Peneliti Pertama',
            'Surveyor Pemetaan Muda',
            'Analis Jabatan',
            'Kepala Subbag Kepegawaian'
        ];

        foreach ($jabatan as $j) {
            DB::table('jabatan')->insert([
                'nama' => $j,
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }
    }

}
