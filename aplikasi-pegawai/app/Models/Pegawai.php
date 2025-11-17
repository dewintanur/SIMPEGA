<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Pegawai extends Model
{
    protected $table = 'pegawai';

    protected $fillable = [
        'nip',
        'nama',
        'jk',
        'tempat_lahir',
        'tgl_lahir',
        'alamat',
        'email',
        'no_hp',
        'jabatan_id',
        'unit_kerja_id',
        'golongan_id',
        'eselon_id',
        'agama_id',
        'tempat_tugas',
        'npwp',
        'foto'
    ];

    public function getFotoUrlAttribute()
    {
        return $this->foto ? asset('storage/pegawai/' . $this->foto) : null;
    }
    public function agama()
    {
        return $this->belongsTo(Agama::class);
    }

    public function unitKerja()
    {
        return $this->belongsTo(UnitKerja::class, 'unit_kerja_id');
    }

    public function jabatan()
    {
        return $this->belongsTo(Jabatan::class);
    }

    public function golongan()
    {
        return $this->belongsTo(Golongan::class);
    }

    public function eselon()
    {
        return $this->belongsTo(Eselon::class);
    }
}
