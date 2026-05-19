# Tugas UI/UX Flutter — Tokopedia/Shopee Product Grid

## Identitas
- **Nama:** Luthfi Ahmad Fahrezi
- **NIM:** 2455201110006
- **Pilihan:** C

## Deskripsi Singkat
Aplikasi ini menampilkan halaman utama toko online mirip Tokopedia/Shopee. Halaman yang dibuat:
- **Home Page** — halaman utama dengan search bar, cart icon, tab kategori, dan grid produk
- Setiap produk ditampilkan dalam card berisi gambar, nama produk, rating bintang, dan harga
- Filter produk bisa dilakukan berdasarkan kategori (Semua, Elektronik, Fashion)
- Pencarian produk secara real-time menggunakan search bar

## Widget yang Digunakan
- `GridView.builder` — menampilkan daftar produk dalam grid 2 kolom secara efisien
- `TabBar` — navigasi filter kategori produk (Semua, Elektronik, Fashion)
- `Card` — membungkus tampilan setiap produk agar terlihat rapi
- `Stack` — menempatkan badge angka di atas ikon keranjang belanja
- `TextField` — input pencarian produk secara real-time

## Screenshot
![Hasil UI](screenshot/hasil_ui.png)

## Wireframe
![Wireframe](wireframe/wireframe_foto.jpg)

## Kesulitan yang Ditemui
- **Kendala:** Branch Git bernama `master` sehingga perintah `git push -u origin main` gagal
- **Solusi:** Menjalankan `git branch -M main` untuk rename branch sebelum push

- **Kendala:** Flutter tidak mendeteksi perangkat Android karena platform belum di-generate
- **Solusi:** Menjalankan `flutter create .` untuk generate project Android, lalu `flutter run -d <device-id>`