# Tugas UI/UX Flutter — Shopee / Tokopedia Clone

## Identitas
- **Nama:** Luthfi Ahmad Fahrezi
- **NIM:** 2455201110006
- **Pilihan:** C

---

## Deskripsi Singkat

Aplikasi ini meniru tampilan halaman beranda aplikasi belanja online (Shopee/Tokopedia). Halaman yang dibuat meliputi:

- **Halaman Beranda (Home)** — menampilkan search bar, ikon keranjang belanja, tab kategori (Semua, Elektronik, Fashion), dan daftar produk dalam bentuk grid 2 kolom.
- Setiap kartu produk menampilkan gambar produk, nama produk, rating bintang, harga, dan tombol **+ Keranjang**.

---

## Widget yang Digunakan

- **AppBar** — menampilkan search bar dan ikon keranjang belanja di bagian atas halaman.
- **TextField / SearchBar** — input pencarian produk dengan placeholder "Cari produk...".
- **TabBar + TabBarView** — navigasi kategori produk: Semua, Elektronik, dan Fashion.
- **GridView.builder** — menampilkan produk dalam layout 2 kolom yang dapat di-scroll.
- **Card** — membungkus setiap produk dengan tampilan kotak bersudut rounded.
- **Stack** — menempatkan badge rating di sudut atas kartu produk.
- **Column** — menyusun elemen di dalam kartu (gambar, nama, rating, harga, tombol) secara vertikal.
- **Icon** — ikon bintang (rating) dan ikon keranjang belanja.
- **ElevatedButton** — tombol "+ Keranjang" pada setiap kartu produk.
- **Text** — menampilkan nama produk, harga, dan rating.

---

## Screenshot

![Hasil UI](screenshot/hasil_ui.png)

---

## Wireframe

![Wireframe](wireframe/wireframe_foto.jpg)

---

## Kesulitan yang Ditemui

- **Bottom Overflow pada Card produk** — Kartu produk pertama (Headphone Bluetooth Pro) mengalami overflow sebesar 1.7 pixel karena konten di dalam `Column` melebihi tinggi yang tersedia. Solusinya adalah membungkus `Column` dengan widget `Expanded` atau mengatur `mainAxisSize` dan ukuran font agar lebih proporsional terhadap tinggi kartu.
- **Menyesuaikan tinggi GridView** — Menentukan `childAspectRatio` yang tepat pada `GridView` agar kartu tidak terlalu pendek atau terlalu tinggi memerlukan beberapa kali percobaan.