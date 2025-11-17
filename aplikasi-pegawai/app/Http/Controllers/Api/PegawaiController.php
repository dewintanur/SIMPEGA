<?php
namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Pegawai;
use App\Models\Agama;
use App\Models\UnitKerja;
use App\Models\Jabatan;
use App\Models\Golongan;
use App\Models\Eselon;
use Illuminate\Http\Request;

class PegawaiController extends Controller
{
    public function index(Request $request)
    {
        $search = $request->search;
        $unit = $request->unit_kerja_id; // harus sama dengan frontend
        $perPage = $request->per_page ?? 10;

        $pegawai = Pegawai::with(['agama', 'unitKerja', 'jabatan', 'golongan', 'eselon'])
            ->when($search, fn($q) => $q->where('nama', 'like', "%$search%")
                ->orWhere('nip', 'like', "%$search%"))
            ->when($unit, fn($q) => $q->where('unit_kerja_id', $unit))
            ->paginate($perPage);

        return response()->json($pegawai);
    }

    public function show($id)
    {
        $p = Pegawai::with(['agama', 'unitKerja', 'jabatan', 'golongan', 'eselon'])->findOrFail($id);

        return response()->json([
            'id' => $p->id,
            'nip' => $p->nip,
            'nama' => $p->nama,
            'jk' => $p->jk,
            'tempat_lahir' => $p->tempat_lahir,
            'tgl_lahir' => $p->tgl_lahir,
            'alamat' => $p->alamat,
            'no_hp' => $p->no_hp,
            'jabatan_id' => $p->jabatan_id,
            'unit_kerja_id' => $p->unit_kerja_id,
            'golongan_id' => $p->golongan_id,
            'eselon_id' => $p->eselon_id,
            'agama_id' => $p->agama_id,
            'jabatan' => $p->jabatan,
            'unit_kerja' => $p->unitKerja,
            'golongan' => $p->golongan,
            'eselon' => $p->eselon,
            'agama' => $p->agama,
            'tempat_tugas' => $p->tempat_tugas,
            'npwp' => $p->npwp,
            'foto' => $p->foto_url,
        ]);
    }

    public function store(Request $request)
    {
        $request->validate([
            'nama' => 'required',
            'jk' => 'required',
            'foto' => 'image|mimes:jpg,png,jpeg|max:2048'
        ]);

        $data = $request->all();

        if ($request->hasFile('foto')) {
            $file = $request->file('foto');
            $filename = time() . '-' . $file->getClientOriginalName();
            $file->storeAs('pegawai', $filename, 'public');
            $data['foto'] = $filename;
        }

        $pegawai = Pegawai::create($data);

        return response()->json([
            'message' => 'Berhasil menambah data pegawai',
            'data' => $pegawai
        ]);
    }

    public function update(Request $request, $id)
    {
        $pegawai = Pegawai::findOrFail($id);

        $data = $request->only([
            'nip',
            'nama',
            'jk',
            'tempat_lahir',
            'tgl_lahir',
            'alamat',
            'no_hp',
            'jabatan_id',
            'unit_kerja_id',
            'golongan_id',
            'eselon_id',
            'agama_id',
            'tempat_tugas',
            'npwp',
        ]);

        if ($request->hasFile('foto')) {

            if ($pegawai->foto && file_exists(storage_path('app/public/pegawai/' . $pegawai->foto))) {
                unlink(storage_path('app/public/pegawai/' . $pegawai->foto));
            }

            $file = $request->file('foto');
            $filename = time() . '-' . $file->getClientOriginalName();
            $file->storeAs('pegawai', $filename, 'public');
            $data['foto'] = $filename;
        }

        $pegawai->update($data);

        return response()->json([
            'message' => 'Updated',
            'data' => [
                'id' => $pegawai->id,
                'foto_url' => $pegawai->foto_url
            ]
        ]);
    }

    public function destroy($id)
    {
        $pegawai = Pegawai::findOrFail($id);

        if ($pegawai->foto && file_exists(storage_path('app/public/pegawai/' . $pegawai->foto))) {
            unlink(storage_path('app/public/pegawai/' . $pegawai->foto));
        }

        $pegawai->delete();

        return response()->json([
            'message' => 'Pegawai berhasil dihapus'
        ]);
    }

    public function options()
    {
        return response()->json([
            'agama' => Agama::all(),
            'unit' => UnitKerja::all(),
            'jabatan' => Jabatan::all(),
            'golongan' => Golongan::all(),
            'eselon' => Eselon::all(),
        ]);
    }
    
}
