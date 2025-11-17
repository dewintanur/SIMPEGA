<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Eselon;
use Illuminate\Http\Request;

class EselonController extends Controller
{
    public function index()
    {
        return response()->json(Eselon::all());
    }

    public function store(Request $request)
    {
        $data = $request->validate([
            'nama' => 'required|string'
        ]);

        $eselon = Eselon::create($data);

        return response()->json([
            'message' => 'Eselon berhasil ditambahkan',
            'data' => $eselon
        ]);
    }

    public function destroy($id)
    {
        Eselon::findOrFail($id)->delete();

        return response()->json([
            'message' => 'Eselon berhasil dihapus'
        ]);
    }
}
