<script setup>
import api from '~/utils/api'
const pegawai = ref([])

api.get('/pegawai').then(res => {
  pegawai.value = res.data
})
</script>

<template>
  <h1>Data Pegawai (API Test)</h1>

  <div v-for="p in pegawai" :key="p.id">
    {{ p.nama }}
  </div>
</template>
