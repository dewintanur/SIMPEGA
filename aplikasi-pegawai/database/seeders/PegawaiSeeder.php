<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Pegawai;
use App\Models\Jabatan;
use App\Models\UnitKerja;
use App\Models\Agama;
use App\Models\Eselon;
use App\Models\Golongan;
use Faker\Factory as Faker;

class PegawaiSeeder extends Seeder
{
    public function run()
    {
        $faker = Faker::create('id_ID');

        $unitKerjas = UnitKerja::all();
        $jabatans = Jabatan::all();
        $agamas = Agama::all();
        $eselons = Eselon::all();
        $golongans = Golongan::all();

        foreach ($unitKerjas as $unit) {
            foreach ($jabatans as $jabatan) {
                Pegawai::create([
                    'nip' => $faker->unique()->numerify('##########'),
                    'nama' => $faker->name,
                    'jk' => $faker->randomElement(['L', 'P']),
                    'tempat_lahir' => $faker->city,
                    'tgl_lahir' => $faker->date('Y-m-d', '2000-01-01'),
                    'alamat' => $faker->address,
                    'no_hp' => $faker->numerify('08##########'),
                    'npwp' => $faker->numerify('###############'),
                    'unit_kerja_id' => $unit->id,
                    'jabatan_id' => $jabatan->id,
                    'golongan_id' => $golongans->random()->id,
                    'eselon_id' => $eselons->random()->id,
                    'agama_id' => $agamas->random()->id,
                    'tempat_tugas' => $unitKerjas->random()->nama, // random tempat tugas
                    'foto' => null,
                ]);
            }
        }
    }
}
