<script setup>
import { reactive, ref, onMounted, watch } from 'vue'
import api from '~/utils/api'
import { useRoute, useRouter } from 'vue-router'

const route = useRoute()
const router = useRouter()
const id = route.params.id

const form = reactive({
  nip: '',
  nama: '',
  jk: '',
  tempat_lahir: '',
  tgl_lahir: '',
  alamat: '',
  no_hp: '',
  jabatan_id: '',
  unit_kerja_id: '',
  golongan_id: '',
  eselon_id: '',
  agama_id: '',
  tempat_tugas: '',
  npwp: '',
  foto: null,
})

const options = reactive({
  jabatan: [],
  unit: [],
  golongan: [],
  eselon: [],
  agama: []
})

const previewFoto = ref(null)
const loading = ref(false)
const error = ref(null)
const errors = reactive({})

const loadOptions = async () => {
  const res = await api.get('/pegawai/options')
  Object.assign(options, res.data)
}

const loadData = async () => {
  const res = await api.get(`/pegawai/${id}`)
  const data = res.data

  Object.assign(form, {
    nip: data.nip,
    nama: data.nama,
    jk: data.jk,
    tempat_lahir: data.tempat_lahir,
    tgl_lahir: data.tgl_lahir,
    alamat: data.alamat,
    no_hp: data.no_hp,
    tempat_tugas: data.tempat_tugas,
    npwp: data.npwp,
    jabatan_id: data.jabatan_id,
    unit_kerja_id: data.unit_kerja_id,
    golongan_id: data.golongan_id,
    eselon_id: data.eselon_id,
    agama_id: data.agama_id,
  })

  previewFoto.value = data.foto
}

const handleFileChange = (event) => {
  const file = event.target.files?.[0]
  if (!file) return

  if (file.size > 5 * 1024 * 1024) { // 5MB limit
    errors.foto = 'Ukuran foto maksimal 5MB'
    form.foto = null
    previewFoto.value = null
    return
  }

  form.foto = file
  previewFoto.value = URL.createObjectURL(file)
  delete errors.foto
}

const removePreview = () => {
  form.foto = null
  previewFoto.value = null
}

const validate = () => {
  Object.keys(errors).forEach(k => delete errors[k])
  let valid = true

  if (!form.nip) { errors.nip = 'NIP wajib diisi'; valid = false }
  if (!form.nama) { errors.nama = 'Nama wajib diisi'; valid = false }
  if (!form.tempat_lahir) { errors.tempat_lahir = 'Tempat lahir wajib diisi'; valid = false }
  if (!form.tgl_lahir) { errors.tgl_lahir = 'Tanggal lahir wajib diisi'; valid = false }
  if (!form.jk) { errors.jk = 'Jenis kelamin wajib dipilih'; valid = false }
  if (!form.alamat) { errors.alamat = 'Alamat wajib diisi'; valid = false }
  if (!form.agama_id) { errors.agama_id = 'Agama wajib dipilih'; valid = false }
  if (!form.unit_kerja_id) { errors.unit_kerja_id = 'Unit Kerja wajib dipilih'; valid = false }
  if (!form.jabatan_id) { errors.jabatan_id = 'Jabatan wajib dipilih'; valid = false }
  if (!form.golongan_id) { errors.golongan_id = 'Golongan wajib dipilih'; valid = false }
  if (!form.eselon_id) { errors.eselon_id = 'Eselon wajib dipilih'; valid = false }
  if (!form.tempat_tugas) { errors.tempat_tugas = 'Tempat tugas wajib diisi'; valid = false }
  if (!form.no_hp) { errors.no_hp = 'No HP wajib diisi'; valid = false }
  if (!form.npwp) { errors.npwp = 'NPWP wajib diisi'; valid = false }
  if (form.foto && form.foto.size > 5 * 1024 * 1024) { errors.foto = 'Ukuran foto maksimal 5MB'; valid = false }

  return valid
}

const submit = async () => {
  if (!validate()) return

  loading.value = true
  error.value = null

  const formData = new FormData()
  Object.keys(form).forEach(key => {
    if (key !== 'foto') formData.append(key, form[key] ?? '')
  })
  if (form.foto instanceof File) formData.append('foto', form.foto)
  formData.append('_method', 'PUT')

  try {
    await api.post(`/pegawai/${id}`, formData)
    router.push('/pegawai')
  } catch (err) {
    error.value = 'Gagal mengupdate pegawai'
  }

  loading.value = false
}

onMounted(async () => {
  await loadOptions()
  await loadData()
})
</script>

<template>
<div class="max-w-5xl mx-auto p-8">
  <h1 class="text-3xl font-bold text-gray-800 mb-6 border-b pb-3">Edit Pegawai</h1>

  <div v-if="error" class="bg-red-100 text-red-700 p-3 rounded mb-4 border border-red-300">
    {{ error }}
  </div>

  <div class="bg-white rounded-2xl shadow-lg border border-gray-200 p-8">
    <form @submit.prevent="submit" class="grid grid-cols-1 md:grid-cols-2 gap-8">
      <div class="flex flex-col gap-5">
        <div>
          <label class="font-medium text-gray-700">NIP</label>
          <input v-model="form.nip" class="mt-1 p-3 border rounded-lg w-full focus:ring-2 border-gray-300 ring-blue-400" />
          <p v-if="errors.nip" class="text-red-500 text-sm mt-1">{{ errors.nip }}</p>
        </div>

        <div>
          <label class="font-medium text-gray-700">Nama</label>
          <input v-model="form.nama" class="mt-1 p-3 border rounded-lg w-full focus:ring-2 border-gray-300 ring-blue-400" />
          <p v-if="errors.nama" class="text-red-500 text-sm mt-1">{{ errors.nama }}</p>
        </div>

        <div>
          <label class="font-medium text-gray-700">Tempat Lahir</label>
          <input v-model="form.tempat_lahir" class="mt-1 p-3 border rounded-lg w-full focus:ring-2 border-gray-300 ring-blue-400" />
          <p v-if="errors.tempat_lahir" class="text-red-500 text-sm mt-1">{{ errors.tempat_lahir }}</p>
        </div>

        <div>
          <label class="font-medium text-gray-700">Tanggal Lahir</label>
          <input type="date" v-model="form.tgl_lahir" class="mt-1 p-3 border rounded-lg w-full focus:ring-2 border-gray-300 ring-blue-400" />
          <p v-if="errors.tgl_lahir" class="text-red-500 text-sm mt-1">{{ errors.tgl_lahir }}</p>
        </div>

        <div>
          <label class="font-medium text-gray-700">Jenis Kelamin</label>
          <div class="mt-2 flex gap-6">
            <label class="flex items-center gap-2">
              <input type="radio" value="L" v-model="form.jk" class="accent-blue-500" />
              Laki-laki
            </label>
            <label class="flex items-center gap-2">
              <input type="radio" value="P" v-model="form.jk" class="accent-blue-500" />
              Perempuan
            </label>
          </div>
          <p v-if="errors.jk" class="text-red-500 text-sm mt-1">{{ errors.jk }}</p>
        </div>

        <div>
          <label class="font-medium text-gray-700">Alamat</label>
          <textarea v-model="form.alamat" rows="3" class="mt-1 p-3 border rounded-lg w-full focus:ring-2 border-gray-300 ring-blue-400"></textarea>
          <p v-if="errors.alamat" class="text-red-500 text-sm mt-1">{{ errors.alamat }}</p>
        </div>
      </div>

      <div class="flex flex-col gap-5">
        <div>
          <label class="font-medium text-gray-700">Agama</label>
          <select v-model="form.agama_id" class="mt-1 p-3 border rounded-lg w-full focus:ring-2 border-gray-300 ring-blue-400">
            <option value="">Pilih Agama</option>
            <option v-for="a in options.agama" :key="a.id" :value="a.id">{{ a.nama }}</option>
          </select>
          <p v-if="errors.agama_id" class="text-red-500 text-sm mt-1">{{ errors.agama_id }}</p>
        </div>

        <div>
          <label class="font-medium text-gray-700">Unit Kerja</label>
          <select v-model="form.unit_kerja_id" class="mt-1 p-3 border rounded-lg w-full focus:ring-2 border-gray-300 ring-blue-400">
            <option value="">Pilih Unit Kerja</option>
            <option v-for="u in options.unit" :key="u.id" :value="u.id">{{ u.nama }}</option>
          </select>
          <p v-if="errors.unit_kerja_id" class="text-red-500 text-sm mt-1">{{ errors.unit_kerja_id }}</p>
        </div>

        <div>
          <label class="font-medium text-gray-700">Jabatan</label>
          <select v-model="form.jabatan_id" class="mt-1 p-3 border rounded-lg w-full focus:ring-2 border-gray-300 ring-blue-400">
            <option value="">Pilih Jabatan</option>
            <option v-for="j in options.jabatan" :key="j.id" :value="j.id">{{ j.nama }}</option>
          </select>
          <p v-if="errors.jabatan_id" class="text-red-500 text-sm mt-1">{{ errors.jabatan_id }}</p>
        </div>

        <div>
          <label class="font-medium text-gray-700">Golongan</label>
          <select v-model="form.golongan_id" class="mt-1 p-3 border rounded-lg w-full focus:ring-2 border-gray-300 ring-blue-400">
            <option value="">Pilih Golongan</option>
            <option v-for="g in options.golongan" :key="g.id" :value="g.id">{{ g.nama }}</option>
          </select>
          <p v-if="errors.golongan_id" class="text-red-500 text-sm mt-1">{{ errors.golongan_id }}</p>
        </div>

        <div>
          <label class="font-medium text-gray-700">Eselon</label>
          <select v-model="form.eselon_id" class="mt-1 p-3 border rounded-lg w-full focus:ring-2 border-gray-300 ring-blue-400">
            <option value="">Pilih Eselon</option>
            <option v-for="e in options.eselon" :key="e.id" :value="e.id">{{ e.nama }}</option>
          </select>
          <p v-if="errors.eselon_id" class="text-red-500 text-sm mt-1">{{ errors.eselon_id }}</p>
        </div>

        <div>
          <label class="font-medium text-gray-700">Tempat Tugas</label>
          <input v-model="form.tempat_tugas" class="mt-1 p-3 border rounded-lg w-full focus:ring-2 border-gray-300 ring-blue-400" />
          <p v-if="errors.tempat_tugas" class="text-red-500 text-sm mt-1">{{ errors.tempat_tugas }}</p>
        </div>

        <div>
          <label class="font-medium text-gray-700">No HP</label>
          <input v-model="form.no_hp" class="mt-1 p-3 border rounded-lg w-full focus:ring-2 border-gray-300 ring-blue-400" />
          <p v-if="errors.no_hp" class="text-red-500 text-sm mt-1">{{ errors.no_hp }}</p>
        </div>

        <div>
          <label class="font-medium text-gray-700">NPWP</label>
          <input v-model="form.npwp" class="mt-1 p-3 border rounded-lg w-full focus:ring-2 border-gray-300 ring-blue-400" />
          <p v-if="errors.npwp" class="text-red-500 text-sm mt-1">{{ errors.npwp }}</p>
        </div>
      </div>

      <div class="md:col-span-2">
        <label class="font-medium text-gray-700 mb-1 block">Upload Foto</label>
        <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
          <div class="border-2 border-dashed rounded-xl h-40 flex flex-col justify-center items-center text-gray-500 hover:border-blue-400 cursor-pointer relative">
            <input type="file" accept="image/*" @change="handleFileChange" class="absolute opacity-0 w-full h-full cursor-pointer" />
            <div class="flex flex-col items-center">
              <svg xmlns="http://www.w3.org/2000/svg" class="w-10 h-10 mb-2" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M7 16a4 4 0 118 0m-4-6v6" />
              </svg>
              <p class="text-sm">Klik atau drag file ke sini</p>
              <p class="text-xs text-gray-400">Max 5MB</p>
            </div>
          </div>

          <div class="border rounded-xl h-40 flex flex-col justify-center items-center overflow-hidden relative">
            <img v-if="previewFoto" :src="previewFoto" class="object-cover w-full h-full" />
            <span v-else class="text-gray-400">No Preview</span>

            <button v-if="previewFoto" @click.prevent="removePreview"
                    class="absolute top-2 right-2 bg-red-500 text-white px-2 py-1 text-xs rounded hover:bg-red-600">
              Hapus
            </button>
          </div>
        </div>
        <p v-if="errors.foto" class="text-red-500 text-sm mt-1">{{ errors.foto }}</p>
      </div>

    <div class="md:col-span-2 flex justify-between gap-5 mt-6">
      <button type="button" @click="router.back()"
              class="flex-1 py-3 bg-gray-300 text-gray-700 rounded-lg font-semibold hover:bg-gray-400 transition">
        Kembali
      </button>

      <button type="submit" :disabled="loading"
              class="flex-1 py-3 bg-orange-500 text-white rounded-lg font-semibold hover:bg-orange-600 transition">
        <span v-if="loading">Mengupdate...</span>
        <span v-else>Update</span>
      </button>
    </div>
    </form>
  </div>
</div>
</template>
