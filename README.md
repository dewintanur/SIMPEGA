# Aplikasi SIMPEGA
Aplikasi ini terdiri dari **Backend API (Laravel)** dan **Frontend (Nuxt 4)**. 

---

#  1. Backend API (Laravel)
Aplikasi backend menggunakan **Laravel 12** sebagai REST API untuk mengelola data pegawai.

##  Fitur API
- Login (Token-based)
- CRUD Pegawai
- Upload foto pegawai
- Master Agama
- Master Jabatan
- Master Golongan
- Master Unit Kerja

---

#  1.1. Instalasi Backend

## **Clone project**
```bash
git clone https://github.com/dewintanur/SIMPEGA.git
cd aplikasi-pegawai-api
```

## **Install dependencies**
```bash
composer install
```

## **Copy environment file**
```bash
cp .env.example .env
```

## **Generate key**
```bash
php artisan key:generate
```

## **Konfigurasi .env**
```env
APP_NAME="Aplikasi Pegawai"
APP_URL=http://localhost:8000

DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=pegawai_db
DB_USERNAME=root
DB_PASSWORD=

FILESYSTEM_DISK=public
```

## **Migrasi database**
```bash
php artisan migrate --seed
```
<!-- jika tidak ingin seed bisa menggunakan pegawai_db.sql -->
## **Menjalankan server API**
```bash
php artisan serve
```
Backend berjalan di:
```
http://localhost:8000
```

---

#  1.2. Upload Foto
Pastikan folder storage sudah di-link:
```bash
php artisan storage:link
```
Foto otomatis disimpan pada:
```
/storage/app/public/foto
```

---

#  2. Frontend (Nuxt 4)
Frontend dibangun menggunakan **Nuxt 4 + TailwindCSS**.

##  Fitur Frontend
- Login
- Melihat daftar pegawai
- Pencarian data pegawai
- CRUD pegawai
- Upload dan preview foto
- Pengaturan dropdown (agama, jabatan, unit kerja)
- pagination 
- export 2 tipe csv dan excel 
---

#  2.1. Instalasi Frontend

## **Clone project**
```bash
cd aplikasi-pegawai-frontend
```

## **Install dependencies**
```bash
npm install
```

## **Konfigurasi environment (.env)**
Buat file `.env` di root:
```env
API_BASE_URL=http://localhost:8000/api
```

---

#  2.2. Menjalankan Nuxt
```bash
npm run dev
```
Frontend berjalan di:
```
http://localhost:3000
```

---

#  3. Struktur API Endpoint

## **Login**
```
POST /api/login
```
Body:
```json
{
  "email": "admin@gmail.com",
  "password": "password"
}
```

## **Pegawai**
| Method | Endpoint | Deskripsi |
|--------|----------|-----------|
| GET | /api/pegawai | List pegawai |
| GET | /api/pegawai/{id} | Detail pegawai |
| POST | /api/pegawai | Tambah pegawai |
| POST | /api/pegawai/update/{id} | Update pegawai |
| DELETE | /api/pegawai/{id} | Hapus pegawai |

---

#  4. Struktur Folder

## **Backend (Laravel)**
```
app/
└── Http/Controllers/Api/
public/
resources/
routes/api.php
storage/
```

## **Frontend (Nuxt)**
```
pages/
components/
utils/api.js
composables/
stores/
```

---

#  5. Akun Default
Gunakan untuk login awal:
```
Email: admin@gmail.com
Password: password
```
