<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('pegawai', function (Blueprint $table) {
            $table->id();
            $table->string('nip')->nullable();
            $table->string('nama');
            $table->string('tempat_lahir')->nullable();
            $table->date('tgl_lahir')->nullable();
            $table->enum('jk', ['L', 'P']);  // radio button
            $table->text('alamat')->nullable();

            $table->unsignedBigInteger('agama_id')->nullable();
            $table->unsignedBigInteger('unit_kerja_id')->nullable();
            $table->unsignedBigInteger('jabatan_id')->nullable();
            $table->unsignedBigInteger('golongan_id')->nullable();
            $table->unsignedBigInteger('eselon_id')->nullable();

            $table->string('tempat_tugas')->nullable();
            $table->string('no_hp')->nullable();
            $table->string('npwp')->nullable();
            $table->string('foto')->nullable();

            $table->timestamps();

            // foreign key
            $table->foreign('agama_id')->references('id')->on('agamas');
            $table->foreign('unit_kerja_id')->references('id')->on('unit_kerja');
            $table->foreign('jabatan_id')->references('id')->on('jabatan');
            $table->foreign('golongan_id')->references('id')->on('golongan');
            $table->foreign('eselon_id')->references('id')->on('eselon');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('pegawai');
    }
};
