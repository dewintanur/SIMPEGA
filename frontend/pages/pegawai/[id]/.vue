<template>
  <div class="max-w-3xl mx-auto p-6">
    
    <!-- Card -->
    <div class="bg-white shadow-lg rounded-2xl p-6">
      
      <div class="flex items-center gap-6">
        <img 
          :src="pegawai.foto_url" 
          class="w-32 h-32 rounded-xl object-cover border"
        />

        <div>
          <h1 class="text-2xl font-bold text-gray-800">
            {{ pegawai.nama }}
          </h1>
          <p class="text-gray-600">{{ pegawai.jabatan }}</p>
          <p class="text-gray-500">{{ pegawai.departemen }}</p>
        </div>
      </div>

      <div class="mt-6 border-t pt-4">
        <p><strong>Email:</strong> {{ pegawai.email }}</p>
        <p><strong>Alamat:</strong> {{ pegawai.alamat }}</p>
        <p><strong>Nomor HP:</strong> {{ pegawai.no_hp }}</p>
      </div>

      <div class="flex justify-end mt-6 gap-3">
        <NuxtLink 
          :to="`/pegawai/${pegawai.id}/edit`"
          class="px-4 py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700"
        >
          Edit
        </NuxtLink>

        <button 
          @click="hapusData"
          class="px-4 py-2 bg-red-500 text-white rounded-lg hover:bg-red-600"
        >
          Delete
        </button>
      </div>
    </div>

  </div>
</template>

<script setup>
import { useRoute, useRouter } from 'vue-router'

const route = useRoute()
const router = useRouter()

const pegawai = ref({})

const fetchPegawai = async () => {
  const { data } = await useFetch(`http://localhost:8000/api/pegawai/${route.params.id}`)
  pegawai.value = data.value
}

const hapusData = async () => {
  await $fetch(`http://localhost:8000/api/pegawai/${route.params.id}`, {
    method: "DELETE"
  })
  router.push("/pegawai")
}

onMounted(() => fetchPegawai())
</script>
