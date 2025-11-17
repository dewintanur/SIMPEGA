<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\UnitKerja;
use Illuminate\Http\Request;

class UnitKerjaController extends Controller
{
    public function index()
    {
        return response()->json(UnitKerja::all());
    }

    public function store(Request $request)
    {
        $data = $request->validate([
            'nama' => 'required|string'
        ]);

        $unit = UnitKerja::create($data);

        return response()->json([
            'message' => 'Unit kerja berhasil ditambahkan',
            'data' => $unit
        ]);
    }

    public function destroy($id)
    {
        UnitKerja::findOrFail($id)->delete();

        return response()->json([
            'message' => 'Unit kerja berhasil dihapus'
        ]);
    }
}
