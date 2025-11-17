<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\AuthController;
use App\Http\Controllers\Api\PegawaiController;
use App\Http\Controllers\Api\AgamaController;
use App\Http\Controllers\Api\JabatanController;
use App\Http\Controllers\Api\GolonganController;
use App\Http\Controllers\Api\EselonController;
use App\Http\Controllers\Api\UnitKerjaController;
use App\Http\Controllers\Api\ProfileController;
// LOGIN API (tanpa auth)
Route::post('/login', [AuthController::class, 'login']);


Route::middleware('auth:sanctum')->group(function () {
    Route::get('/me', [ProfileController::class, 'me']);
    Route::put('/profile/update', [ProfileController::class, 'updateProfile']);
});
// ROUTE YANG BUTUH LOGIN
Route::middleware('auth:sanctum')->group(function () {

    // LOGOUT
    Route::post('/logout', [AuthController::class, 'logout']);

    // PEGAWAI CRUD
    Route::get('/pegawai', [PegawaiController::class, 'index']);
    Route::post('/pegawai', [PegawaiController::class, 'store']);
    Route::get('/pegawai/options', [PegawaiController::class, 'options']);
    Route::get('/pegawai/{id}', [PegawaiController::class, 'show']);
    Route::put('/pegawai/{id}', [PegawaiController::class, 'update']);
    Route::delete('/pegawai/{id}', [PegawaiController::class, 'destroy']);
    // MASTER: Agama
    Route::get('/agama', [AgamaController::class, 'index']);
    Route::post('/agama', [AgamaController::class, 'store']);
    Route::delete('/agama/{id}', [AgamaController::class, 'destroy']);

    // MASTER: Jabatan
    Route::get('/jabatan', [JabatanController::class, 'index']);
    Route::post('/jabatan', [JabatanController::class, 'store']);
    Route::delete('/jabatan/{id}', [JabatanController::class, 'destroy']);

    // MASTER: Golongan
    Route::get('/golongan', [GolonganController::class, 'index']);
    Route::post('/golongan', [GolonganController::class, 'store']);
    Route::delete('/golongan/{id}', [GolonganController::class, 'destroy']);

    // MASTER: Eselon
    Route::get('/eselon', [EselonController::class, 'index']);
    Route::post('/eselon', [EselonController::class, 'store']);
    Route::delete('/eselon/{id}', [EselonController::class, 'destroy']);

    // MASTER: Unit Kerja
    Route::get('/unit-kerja', [UnitKerjaController::class, 'index']);
    Route::post('/unit-kerja', [UnitKerjaController::class, 'store']);
    Route::delete('/unit-kerja/{id}', [UnitKerjaController::class, 'destroy']);
});
