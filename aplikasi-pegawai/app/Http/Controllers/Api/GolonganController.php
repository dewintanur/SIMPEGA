<?php


namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;

use App\Models\Golongan;
use Illuminate\Http\Request;

class GolonganController extends Controller
{
    public function index()
    {
        return response()->json(Golongan::all());
    }

    public function store(Request $request)
    {
        $data = $request->validate([
            'nama' => 'required|string'
        ]);

        $golongan = Golongan::create($data);

        return response()->json([
            'message' => 'Golongan berhasil ditambahkan',
            'data' => $golongan
        ]);
    }

    public function destroy($id)
    {
        Golongan::findOrFail($id)->delete();

        return response()->json([
            'message' => 'Golongan berhasil dihapus'
        ]);
    }
}
