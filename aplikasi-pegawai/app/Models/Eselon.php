<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Eselon extends Model
{
    protected $table = 'eselon';

    protected $fillable = ['nama'];

    public function pegawai()
    {
        return $this->hasMany(Pegawai::class);
    }
}
