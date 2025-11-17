<template>
<nav class="w-full bg-white shadow mb-6">
  <div class="max-w-7xl mx-auto px-6 py-4 flex justify-between items-center">
    
    <h2 class="text-xl font-bold text-gray-800">SIMPEGA</h2>

    <div class="relative" @click="showMenu = !showMenu">
      <div class="flex items-center gap-2 cursor-pointer">
<span class="font-semibold text-gray-700">{{ user.name }}</span>
      </div>

      <div
        v-if="showMenu"
        class="absolute right-0 mt-3 w-40 bg-white shadow-lg rounded-xl border py-2 z-50"
      >
        <NuxtLink
          to="/profile"
          class="block px-4 py-2 hover:bg-gray-100 text-gray-700"
        >
          Profile
        </NuxtLink>

        <button
          @click="logout"
          class="w-full text-left px-4 py-2 hover:bg-red-50 text-red-600"
        >
          Logout
        </button>
      </div>
    </div>
  </div>
</nav>

 <div class="p-6 max-w-7xl mx-auto">
    <div class="flex items-center justify-between mb-6">
      <h1 class="text-3xl font-bold text-gray-800">Data Pegawai</h1>
      <NuxtLink
        to="/pegawai/tambah"
        class="bg-blue-500 text-white rounded-lg px-5 py-2 hover:bg-blue-600 transition"
      >
        Tambah Pegawai
      </NuxtLink>
    </div>

    <div class="flex flex-col md:flex-row md:items-center gap-4 mb-4">
      <input
        v-model="search"
        type="text"
        placeholder="Cari nama / NIP..."
        class="input input-bordered w-full md:max-w-sm"
      />

      <select v-model="unitFilter"
              class="input input-bordered w-full md:w-64">
        <option value="">Filter Unit Kerja</option>
        <option v-for="u in units" :key="u.id" :value="u.id">{{ u.nama }}</option>
      </select>

      <div class="ml-auto flex gap-2">
        <button @click="exportCSV"
                class="bg-green-500 text-white rounded px-4 py-2 hover:bg-green-600 flex items-center gap-1 transition">
          <FileText class="w-4 h-4"/>
          CSV
        </button>
        <button @click="exportExcel"
                class="bg-blue-500 text-white rounded px-4 py-2 hover:bg-blue-600 flex items-center gap-1 transition">
          <FileX class="w-4 h-4"/>
          Excel
        </button>
      </div>
    </div>

    <div class="overflow-hidden rounded-xl shadow bg-white">
      <table class="table w-full">
        <thead class="bg-gray-100">
          <tr>
            <th>Foto</th>
            <th>Nama</th>
            <th>NIP</th>
            <th>Jabatan</th>
            <th>Unit Kerja</th>
            <th>Aksi</th>
          </tr>
        </thead>

        <tbody>
          <tr v-for="p in pegawai" :key="p.id" class="hover:bg-gray-50 transition">
            <td>
              <img
                v-if="p.foto"
                :src="`http://localhost:8000/storage/pegawai/${p.foto}`"
                class="w-12 h-12 rounded-lg object-cover border"
              />
              <div v-else class="text-gray-400 italic">-</div>
            </td>

            <td class="font-semibold text-gray-800">{{ p.nama }}</td>
            <td>{{ p.nip }}</td>
            <td>
              <span class="badge badge-info px-3 py-2">
                {{ p.jabatan?.nama ?? '-' }}
              </span>
            </td>
            <td>{{ p.unit_kerja?.nama ?? '-' }}</td>

            <td class="flex gap-2">
              <NuxtLink :to="`/pegawai/${p.id}/show`" class="text-blue-600 hover:underline flex items-center gap-1">
                <Eye class="w-5 h-5"/>
                
              </NuxtLink>

              <NuxtLink :to="`/pegawai/${p.id}/edit`" class="text-orange-600 hover:underline flex items-center gap-1">
                <Edit class="w-5 h-5"/>
                
              </NuxtLink>

              <button @click="deletePegawai(p.id)" class="text-red-600 hover:underline flex items-center gap-1">
                <Trash2 class="w-5 h-5"/>
                
              </button>
            </td>
          </tr>

          <tr v-if="pegawai.length === 0">
            <td colspan="6" class="text-center py-4 text-gray-400 italic">
              Data tidak ditemukan
            </td>
          </tr>
        </tbody>
      </table>
    </div>

    <!-- Pagination -->
    <div v-if="totalPages > 1" class="flex justify-center items-center gap-2 mt-4 flex-wrap">
      <button
        @click="prevPage"
        :disabled="currentPage === 1"
        class="px-3 py-1 bg-gray-200 rounded hover:bg-gray-300 disabled:opacity-50"
      >
        Prev
      </button>

      <button
        v-for="page in pages"
        :key="page"
        @click="goToPage(page)"
        :class="[ 'px-3 py-1 rounded hover:bg-gray-300', page === currentPage ? 'bg-blue-500 text-white' : 'bg-gray-200 text-gray-800']"
      >
        {{ page }}
      </button>

      <button
        @click="nextPage"
        :disabled="currentPage === totalPages"
        class="px-3 py-1 bg-gray-200 rounded hover:bg-gray-300 disabled:opacity-50"
      >
        Next
      </button>
    </div>
  </div>
</template>

<script setup>
import { ref, computed, watch, onMounted } from "vue";
import api from "~/utils/api";
import * as XLSX from "xlsx";
import { saveAs } from "file-saver";
import { Eye, Edit, Trash2, FileText, FileX } from "lucide-vue-next";

const pegawai = ref([]);
const search = ref("");
const units = ref([]);
const unitFilter = ref("");
const currentPage = ref(1);
const totalPages = ref(1);
const showMenu = ref(false);

const user = ref({})

const loadUser = async () => {
  const res = await api.get("/me")
  user.value = res.data
}

const logout = async () => {
  await api.post("/logout");
  localStorage.removeItem("token");
  navigateTo("/login");
};

const pages = computed(() => {
  const arr = [];
  for (let i = 1; i <= totalPages.value; i++) arr.push(i);
  return arr;
});

const loadUnits = async () => {
  try {
    const res = await api.get("/unit-kerja");
    units.value = res.data ?? [];
  } catch {
    units.value = [];
  }
};

const loadPegawai = async (page = 1) => {
  try {
    const params = { page, search: search.value };
    if (unitFilter.value) params.unit_kerja_id = unitFilter.value;
    const res = await api.get("/pegawai", { params });
    pegawai.value = res.data.data ?? [];
    currentPage.value = res.data.current_page ?? page;
    totalPages.value = res.data.last_page ?? 1;
  } catch {
    pegawai.value = [];
    currentPage.value = 1;
    totalPages.value = 1;
  }
};

const deletePegawai = async (id) => {
  if (!confirm("Hapus pegawai ini?")) return;
  await api.delete(`/pegawai/${id}`);
  loadPegawai(currentPage.value);
};

const prevPage = () => { if (currentPage.value > 1) loadPegawai(currentPage.value - 1); };
const nextPage = () => { if (currentPage.value < totalPages.value) loadPegawai(currentPage.value + 1); };
const goToPage = (page) => loadPegawai(page);

watch([search, unitFilter], () => loadPegawai(1));
const exportCSV = async () => {
  try {
    const params = { search: search.value };
    if (unitFilter.value) params.unit_kerja_id = unitFilter.value;
    params.per_page = 9999;
    const res = await api.get("/pegawai", { params });
    const data = res.data.data ?? [];
    if (!data.length) return alert("Tidak ada data untuk diexport");

    const header = ["NIP","Nama","Jenis Kelamin","Tempat Lahir","Tanggal Lahir","Alamat","No HP","Jabatan","Unit Kerja","Golongan","Eselon","Agama","Tempat Tugas","NPWP","Foto URL"];
    const rows = data.map(p => [
      p.nip,p.nama,p.jk,p.tempat_lahir,p.tgl_lahir,p.alamat,
      p.no_hp,p.jabatan?.nama??"-",p.unit_kerja?.nama??"-",
      p.golongan?.nama??"-",p.eselon?.nama??"-",p.agama?.nama??"-",
      p.tempat_tugas,p.npwp,p.foto_url??(p.foto?`http://localhost:8000/storage/pegawai/${p.foto}`:"")
    ]);

    const csvContent = [header.join("\t"), ...rows.map(r=>r.join("\t"))].join("\n");
    const blob = new Blob([csvContent], { type: "text/csv;charset=utf-8;" });

    // Nama file dinamis
    let fileName = "Data Pegawai";
    if (search.value) fileName += `_search-${search.value}`;
    if (unitFilter.value) {
      const unit = units.value.find(u => u.id === unitFilter.value)?.nama ?? unitFilter.value;
      fileName += `_unit-${unit}`;
    }
    fileName += ".csv";

    const link = document.createElement("a");
    link.href = URL.createObjectURL(blob);
    link.setAttribute("download", fileName);
    link.click();
  } catch {
    alert("Gagal export CSV");
  }
};

const exportExcel = async () => {
  try {
    const params = { search: search.value };
    if (unitFilter.value) params.unit_kerja_id = unitFilter.value;
    params.per_page = 9999;
    const res = await api.get("/pegawai", { params });
    const data = res.data.data ?? [];
    if (!data.length) return alert("Tidak ada data untuk diexport");

    const ws_data = [
      ["NIP","Nama","Jenis Kelamin","Tempat Lahir","Tanggal Lahir","Alamat","No HP","Jabatan","Unit Kerja","Golongan","Eselon","Agama","Tempat Tugas","NPWP","Foto URL"]
    ];
    data.forEach(p => {
      ws_data.push([
        p.nip,p.nama,p.jk,p.tempat_lahir,p.tgl_lahir,p.alamat,
        p.no_hp,p.jabatan?.nama??"-",p.unit_kerja?.nama??"-",
        p.golongan?.nama??"-",p.eselon?.nama??"-",p.agama?.nama??"-",
        p.tempat_tugas,p.npwp,p.foto_url??(p.foto?`http://localhost:8000/storage/pegawai/${p.foto}`:"")
      ]);
    });

    const wb = XLSX.utils.book_new();
    const ws = XLSX.utils.aoa_to_sheet(ws_data);
    XLSX.utils.book_append_sheet(wb, ws, "Pegawai");
    const wbout = XLSX.write(wb,{bookType:'xlsx',type:'array'});
    let fileName = "Data Pegawai";
    if (search.value) fileName += `_search-${search.value}`;
    if (unitFilter.value) {
      const unit = units.value.find(u => u.id === unitFilter.value)?.nama ?? unitFilter.value;
      fileName += `_unit-${unit}`;
    }
    fileName += ".xlsx";

    saveAs(new Blob([wbout],{type:"application/octet-stream"}), fileName);
  } catch {
    alert("Gagal export Excel");
  }
};
 
onMounted(() => {
  loadUser();
  loadUnits();
  loadPegawai();
});
</script>
