# Tugas UI Flutter — Tokopedia/Shopee Product Grid

## Identitas
- **Nama**: [Nama Anda]
- **NIM**: [NIM Anda]
- **Kelas**: [Kelas Anda]
- **Mata Kuliah**: Pemrograman Mobile / Flutter

---

## Deskripsi Proyek

Aplikasi Flutter yang menampilkan UI halaman produk mirip Tokopedia/Shopee. Pengguna dapat mencari produk, memfilter berdasarkan kategori, dan menambahkan produk ke keranjang belanja.

---

## Fitur Utama

- 🔍 **Search Bar** — Pencarian produk secara real-time menggunakan `TextField`
- 🛒 **Cart Icon** — Ikon keranjang dengan badge jumlah item menggunakan `Stack`
- 📂 **TabBar** — Filter kategori: Semua, Elektronik, Fashion menggunakan `TabBar`
- 🗂️ **GridView** — Tampilan produk 2 kolom menggunakan `GridView.builder`
- 🃏 **Card Produk** — Menampilkan gambar, nama, rating bintang, harga, dan tombol tambah keranjang menggunakan `Card`

---

## Widget yang Digunakan

| Widget | Kegunaan |
|--------|----------|
| `GridView.builder` | Menampilkan daftar produk dalam grid 2 kolom |
| `TabBar` | Filter kategori produk |
| `Card` | Tampilan kartu setiap produk |
| `Stack` | Badge notifikasi di atas ikon keranjang |
| `TextField` | Search bar untuk pencarian produk |

---

## Struktur Folder

```
tugas-ui-flutter/
├── lib/
│   ├── main.dart
│   ├── pages/
│   │   └── home_page.dart
│   └── widgets/
│       ├── product_card.dart
│       └── search_bar_widget.dart
├── assets/
├── wireframe/
│   └── wireframe_foto.jpg
├── screenshot/
│   └── hasil_ui.png
├── pubspec.yaml
└── README.md
```

---

## Cara Menjalankan

```bash
# Clone repository
git clone https://github.com/[username]/tugas-ui-flutter.git

# Masuk ke folder
cd tugas-ui-flutter

# Install dependencies
flutter pub get

# Jalankan aplikasi
flutter run
```

---

## Screenshot

> Lihat folder `screenshot/hasil_ui.png`

---

## Wireframe

> Lihat folder `wireframe/wireframe_foto.jpg`
