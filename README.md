# parevie-flutter
# 🚀 Parevie Flutter (Versi MJ)

Aplikasi manajemen konsinyasi parfum berbasis Flutter.  
Upgrade dari versi Cordova ke sistem yang lebih cepat, stabil, dan scalable.

---

# 📁 Struktur Project

parevie_flutter/     # ROOT PROJECT
├── android/        # Konfigurasi Android
├── ios/            # Konfigurasi iOS
├── build/          # Hasil build (auto)
│
├── lib/            # SOURCE CODE UTAMA
│   ├── main.dart   # Entry point aplikasi
│
│   ├── core/             # CONFIG GLOBAL
│   │   ├── theme.dart    # Tema UI (warna, style)
│   │   └── utils.dart    # Helper (tanggal, rupiah, dll)
│
│   ├── models/           # STRUKTUR DATA
│   │   ├── toko.dart
│   │   ├── produk.dart
│   │   ├── titipan.dart
│   │   └── transaksi.dart
│
│   ├── services/         # LOGIC & BACKEND LOKAL
│   │   ├── local_db_service.dart   # Database (Hive)
│   │   ├── backup_service.dart     # Auto backup & restore
│   │   └── print_service.dart      # Print Bluetooth
│
│   ├── screens/              # HALAMAN UI
│   │   ├── home/
│   │   │   └── home_screen.dart
│   │   │
│   │   ├── kunjungan/
│   │   │   └── kunjungan_detail.dart
│   │   │
│   │   └── transaksi/
│   │       └── input_transaksi.dart
│
│   └── widgets/            # KOMPONEN UI
│       ├── area_card.dart
│       ├── toko_tile.dart
│       └── produk_tile.dart
│
├── pubspec.yaml # DEPENDENCY (WAJIB DI ROOT)
├── README.md    # Dokumentasi project
└── .gitignore   # File yang diabaikan Git

---

# 🧠 Arsitektur Aplikasi

## 🔹 1. Data Layer
- Menggunakan **Hive (local database)**
- Menggantikan:
  - SQLite
  - localStorage (Cordova)

---

## 🔹 2. Cache System
- Data disimpan di memory (RAM)
- Tujuan:
  - UI lebih cepat
  - Minim load ulang

---

## 🔹 3. Backup System
- Auto backup setiap 24 jam
- Auto restore jika data hilang
- Bisa dikembangkan ke:
  - export file
  - cloud sync

---

## 🔹 4. Flow Aplikasi

### 🏠 Home
- List area (Ceper, Jatinom, dll)
- Jumlah toko
- Status kunjungan

---

### 🏪 Detail Kunjungan
- Tab:
  - Roll On
  - Botol 20ml
  - Botol 30ml

---

### 📦 Produk
- Nama produk
- Jumlah titipan
- Tanggal masuk
- Last cek

---

### ✍️ Input Transaksi
- Input manual jumlah terjual
- Otomatis:
  - update stok
  - simpan transaksi

---

### 🧾 Output
- Print Bluetooth
- Share WhatsApp ke toko

---

# ⚙️ Setup Project

## 1. Install dependency

---

## 2. Jalankan aplikasi

---

# ⚠️ Catatan Penting

- `pubspec.yaml` HARUS di root
- Jangan taruh di dalam `lib/`
- Gunakan spasi (bukan TAB)

---

# 💎 Roadmap Pengembangan

- [ ] UI premium (branding produk MJ)
- [ ] Grafik penjualan
- [ ] Export PDF nota
- [ ] Cloud sync (Firebase / API)
- [ ] Multi user / multi device

---

# 👑 Author

MJ — Parevie System  
Powered by Elara 🚀
