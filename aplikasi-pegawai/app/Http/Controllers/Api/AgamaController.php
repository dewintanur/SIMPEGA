<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;


use App\Models\Agama;
use Illuminate\Http\Request;

class AgamaController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return response()->json(Agama::all());
    }

    public function store(Request $request)
    {
        $data = $request->validate([
            'nama' => 'required|string'
        ]);

        $agama = Agama::create($data);
        return response()->json($agama);
    }

    public function destroy($id)
    {
        Agama::findOrFail($id)->delete();
        return response()->json(['message' => 'deleted']);
    }

}
