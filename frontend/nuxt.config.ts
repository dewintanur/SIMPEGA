export default defineNuxtConfig({
  compatibilityDate: '2025-07-15',
  devtools: { enabled: true },
  pages: true,

  // Module Tailwind
  modules: ['@nuxtjs/tailwindcss'],

  // CSS global (opsional, untuk tambahan custom CSS)
  css: ['~/assets/css/main.css'],

  // Konfigurasi PostCSS (Nuxt 4 tidak pakai postcss.config.js manual)
  postcss: {
    plugins: {
      tailwindcss: {},
      autoprefixer: {},
    }
  }
})