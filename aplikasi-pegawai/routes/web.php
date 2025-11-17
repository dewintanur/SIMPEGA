<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PegawaiController;




Route::get('/', function () {
    return redirect()->route('pegawai.index');
});

// CRUD PEGAWAI

Route::middleware('auth')->group(function () {

    Route::get('/pegawai', [PegawaiController::class, 'index'])->name('pegawai.index');

    Route::get('/pegawai/create', [PegawaiController::class, 'create'])->name('pegawai.create');
    Route::post('/pegawai/store', [PegawaiController::class, 'store'])->name('pegawai.store');

    Route::get('/pegawai/{id}/edit', [PegawaiController::class, 'edit'])->name('pegawai.edit');
    Route::post('/pegawai/{id}/update', [PegawaiController::class, 'update'])->name('pegawai.update');

    Route::delete('/pegawai/{id}', [PegawaiController::class, 'destroy'])->name('pegawai.destroy');
});


