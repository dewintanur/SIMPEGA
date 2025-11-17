<script setup>
import { ref } from 'vue'
import api from '~/utils/api'
import { useAuth } from '~/composables/auth'

const email = ref('')
const password = ref('')
const error = ref(null)
const loading = ref(false)

const auth = useAuth()

const login = async () => {
  loading.value = true
  error.value = null

  try {
    const res = await api.post('/login', {
      email: email.value,
      password: password.value
    })

    auth.setAuth(res.data)

    // Redirect to dashboard / pegawai
    navigateTo('/pegawai')

  } catch (err) {
    error.value = err.response?.data?.message || 'Login gagal'
  }

  loading.value = false
}
</script>

<template>
  <div class="w-full min-h-screen flex items-center justify-center bg-gray-100">
    <div class="bg-white p-8 rounded-lg shadow-lg w-full max-w-md">

      <h1 class="text-2xl font-bold text-center mb-6">Login Pegawai</h1>

      <div v-if="error" class="bg-red-100 text-red-700 px-4 py-2 mb-4 rounded">
        {{ error }}
      </div>

      <form @submit.prevent="login">

        <div class="mb-4">
          <label class="block mb-1 text-gray-700">Email</label>
          <input v-model="email" type="email" class="w-full p-2 border rounded" required>
        </div>

        <div class="mb-4">
          <label class="block mb-1 text-gray-700">Password</label>
          <input v-model="password" type="password" class="w-full p-2 border rounded" required>
        </div>

        <button :disabled="loading"
                class="w-full bg-blue-600 text-white py-2 rounded hover:bg-blue-700 transition">
          <span v-if="loading">Loading...</span>
          <span v-else>Login</span>
        </button>

      </form>
    </div>
  </div>
</template>
