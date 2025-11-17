<template>
  <div class="max-w-5xl mx-auto p-8">
    <h1 class="text-3xl font-bold mb-6 border-b pb-3">Detail Pegawai</h1>

    <div class="bg-white rounded-2xl shadow-lg border border-gray-200 p-8 grid grid-cols-1 md:grid-cols-2 gap-8">

      <!-- Foto -->
      <div>
        <label class="font-medium text-gray-700">Foto</label>
        <div class="mt-2">
          <img v-if="fotoUrl"
               :src="fotoUrl"
               class="w-40 h-40 rounded-lg object-cover border" />
          <span v-else class="text-gray-400 italic">No Foto</span>
        </div>
      </div>

      <!-- Data -->
      <div class="flex flex-col gap-2">
        <p><span class="font-medium">Nama:</span> {{ pegawai.nama }}</p>
        <p><span class="font-medium">NIP:</span> {{ pegawai.nip }}</p>
        <p><span class="font-medium">Jenis Kelamin:</span> {{ pegawai.jk === 'L' ? 'Laki-laki' : 'Perempuan' }}</p>
        <p><span class="font-medium">Tempat, Tanggal Lahir:</span> {{ pegawai.tempat_lahir }}, {{ pegawai.tgl_lahir }}</p>
        <p><span class="font-medium">Alamat:</span> {{ pegawai.alamat }}</p>
        <p><span class="font-medium">No HP:</span> {{ pegawai.no_hp }}</p>
        <p><span class="font-medium">NPWP:</span> {{ pegawai.npwp }}</p>
        <p><span class="font-medium">Agama:</span> {{ pegawai.agama?.nama ?? '-' }}</p>
        <p><span class="font-medium">Jabatan:</span> {{ pegawai.jabatan?.nama ?? '-' }}</p>
        <p><span class="font-medium">Unit Kerja:</span> {{ pegawai.unit_kerja?.nama ?? '-' }}</p>
        <p><span class="font-medium">Golongan:</span> {{ pegawai.golongan?.nama ?? '-' }}</p>
        <p><span class="font-medium">Eselon:</span> {{ pegawai.eselon?.nama ?? '-' }}</p>
        <p><span class="font-medium">Tempat Tugas:</span> {{ pegawai.tempat_tugas }}</p>
      </div>

      <div class="md:col-span-2 mt-4">
        <NuxtLink to="/pegawai"
                  class="bg-blue-500 text-white px-5 py-2 rounded hover:bg-blue-600 transition">
          Kembali
        </NuxtLink>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref, computed, onMounted } from 'vue'
import { useRoute } from 'vue-router'
import api from '~/utils/api'

const route = useRoute()
const pegawai = ref({})

const fotoUrl = computed(() => pegawai.value.foto)

const loadPegawai = async () => {
  try {
    const res = await api.get(`/pegawai/${route.params.id}`)
    pegawai.value = res.data
    console.log('Pegawai:', pegawai.value) 
  } catch (err) {
    console.error('Gagal load pegawai', err)
  }
}

onMounted(loadPegawai)
</script>
