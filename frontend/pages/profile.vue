<script setup>
import { ref, onMounted } from "vue"
import api from "~/utils/api"

const user = ref({
  name: "",
  email: "",
})

const previewFoto = ref(null)
const loading = ref(false)

// Ambil data user login
onMounted(async () => {
  const res = await api.get("/me")   // sesuaikan endpoint
  user.value = res.data
})



// Update profile
const updateProfile = async () => {
  loading.value = true
  await api.put("/profile/update", {
    name: user.value.name,
    email: user.value.email
  })
  loading.value = false
  alert("Profile updated!")
}
</script>

<template>
  <div class="max-w-4xl mx-auto p-6">
    <h1 class="text-3xl font-bold text-gray-800 mb-6">My Profile</h1>

    <!-- Card -->
    <div class="bg-white rounded-2xl shadow p-6">
      <!-- Form -->
      <div class="grid grid-cols-1 gap-6">

        <div>
          <label class="block text-gray-700 font-semibold mb-1">Name</label>
          <input
            v-model="user.name"
            type="text"
            class="w-full border px-4 py-2 rounded-lg"
          />
        </div>

        <div>
          <label class="block text-gray-700 font-semibold mb-1">Email</label>
          <input
            v-model="user.email"
            type="email"
            class="w-full border px-4 py-2 rounded-lg"
          />
        </div>

        <!-- Button Update -->
        <button
          @click="updateProfile"
          class="bg-green-600 text-white px-5 py-2 rounded-lg w-max hover:bg-green-700"
        >
          <span v-if="!loading">Save Changes</span>
          <span v-else>Saving...</span>
        </button>

      </div>
    </div>
  </div>
</template>
