# README TUGAS 7

## 1. Stateless Widget dan Stateful Widget

Stateless Widget adalah widget yang tidak memiliki keadaan internal yang berubah selama siklus hidupnya. Mereka cocok untuk tampilan yang statis dan tidak memerlukan pembaruan dinamis, seperti teks statis atau ikon yang selalu sama. Contohnya adalah widget `Text` atau `Icon` yang menampilkan informasi tetap.

Sebaliknya, Stateful Widget memiliki keadaan internal yang dapat berubah seiring waktu atau sebagai respons terhadap interaksi pengguna. Mereka berguna untuk tampilan yang dinamis dan interaktif, seperti tombol yang dapat ditekan atau formulir yang dapat diisi. Contoh Stateful Widget adalah widget yang menggunakan `setState()` untuk memperbarui UI ketika data berubah.

## 2. Widget yang Digunakan dalam Proyek Ini

Dalam proyek ini, saya menggunakan beberapa widget utama untuk membangun antarmuka pengguna:
- **Scaffold**: Menyediakan struktur dasar halaman dengan `AppBar` dan `body`, memungkinkan pengaturan layout yang konsisten.
- **AppBar**: Menampilkan judul aplikasi di bagian atas layar, memberikan navigasi dan konteks.
- **Column dan Row**: Mengatur tata letak widget secara vertikal dan horizontal untuk menyusun elemen-elemen UI.
- **Card**: Menampilkan informasi dalam kotak dengan bayangan, memberikan tampilan yang menarik dan terpisah.
- **GridView**: Menyusun tombol-tombol dalam format grid yang responsif, memastikan tata letak yang rapi pada berbagai ukuran layar.
- **InkWell**: Menangani interaksi sentuhan pada tombol, seperti mendeteksi ketukan dan menampilkan `SnackBar` sebagai umpan balik.

## 3. Fungsi dari setState()

Fungsi `setState()` digunakan dalam Stateful Widget untuk memberi tahu Flutter bahwa ada perubahan dalam keadaan widget yang memerlukan pembaruan UI. Ketika `setState()` dipanggil, Flutter akan memanggil metode `build()` kembali untuk merefleksikan perubahan tersebut pada antarmuka pengguna.

Variabel yang dapat terdampak oleh `setState()` adalah variabel yang menyimpan data atau keadaan yang mempengaruhi tampilan widget. Misalnya, jika ada variabel yang menyimpan jumlah klik tombol, memanggil `setState()` setelah mengubah variabel tersebut akan memperbarui angka yang ditampilkan di UI.

## 4. Perbedaan antara const dan final

`const` dan `final` adalah dua kata kunci di Dart yang digunakan untuk mendeklarasikan variabel yang tidak dapat diubah setelah diinisialisasi, tetapi ada perbedaannya:
- **final**: Variabel yang dideklarasikan dengan `final` dapat diinisialisasi sekali dan tidak dapat diubah lagi setelahnya. Nilainya dapat ditentukan saat runtime.
  
  ```dart
  final String name = 'Patricia';

## 5. Implementasi Proyek Flutter E-Commerce

### A. Membuat Program Flutter Baru dengan Tema E-Commerce

Saya memulai dengan membuat program Flutter baru dengan cara 

  flutter create fuudiui
  cd fuudiui

lalu saya merapikan struktur dengan membuat menu.dart, memindahkan class `MyHomePage` dan class `_MyHomePageState` ke menu.dart, serta menambahkan 

```
import 'package:fuudiui/menu.dart';
``` 
ke main.dart


### B. Membuat Tiga Tombol Sederhana dengan Ikon dan Teks

Saya membuat tiga tombol sederhana menggunakan widget `ItemCard` yang berisi ikon dan teks, masing-masing disusun dalam bentuk `GridView` untuk tampilan yang rapi dan responsif:
- **Lihat Daftar Produk**: Tombol ini menggunakan ikon `Icons.mood` dengan teks "Lihat Daftar Produk".
- **Tambah Produk**: Tombol ini menggunakan ikon `Icons.add` dengan teks "Tambah Produk".
- **Logout**: Tombol ini menggunakan ikon `Icons.logout` dengan teks "Logout".

`GridView` dipilih untuk menyusun ketiga tombol ini dalam bentuk grid tiga kolom agar terlihat rapi dan responsif di berbagai ukuran layar.

### C. Mengimplementasikan Warna-Warna Berbeda untuk Setiap Tombol

Setiap tombol diberi warna latar belakang berbeda untuk memperkuat identitas dan fungsinya:
- **Lihat Daftar Produk**: Menggunakan warna `#F6AE39` (Orange). 
- **Tambah Produk**: Menggunakan warna `#409065` (Green).
- **Logout**: Menggunakan warna `#374061` (Dark Blue).

Saya menerapkan warna-warna ini pada masing-masing instance `ItemHomepage` yang memiliki properti `color`. Ini membantu pengguna mengenali tombol-tombol dengan cepat berdasarkan warna yang konsisten.

### E. Memunculkan Snackbar saat Tombol Ditekan

Setiap tombol diatur menggunakan widget `InkWell`, yang mendeteksi sentuhan pada tombol dan memunculkan `SnackBar` yang memberikan umpan balik kepada pengguna. Saat tombol ditekan, muncul `SnackBar` yang menampilkan pesan berikut:
- **Lihat Daftar Produk**: "Kamu telah menekan tombol Lihat Daftar Produk".
- **Tambah Produk**: "Kamu telah menekan tombol Tambah Produk".
- **Logout**: "Kamu telah menekan tombol Logout".

Dengan menampilkan pesan ini, pengguna dapat memahami respons aplikasi secara langsung terhadap tindakan mereka, yang membantu meningkatkan pengalaman interaksi dan feedback secara real-time.
