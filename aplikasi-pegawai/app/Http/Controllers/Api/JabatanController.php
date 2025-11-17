<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Jabatan;
use Illuminate\Http\Request;

class JabatanController extends Controller
{
    public function index()
    {
        return Jabatan::all();
    }

    public function store(Request $request)
    {
        $data = $request->validate(['nama' => 'required']);
        return Jabatan::create($data);
    }

    public function destroy($id)
    {
        Jabatan::findOrFail($id)->delete();
        return ['message' => 'deleted'];
    }
}
