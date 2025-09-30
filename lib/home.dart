import 'package:flutter/material.dart';
import 'tujuan.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Home'),
        backgroundColor: Colors.redAccent.shade100,
        foregroundColor: Colors.white,
        centerTitle: true,
        elevation: 2,
        leading: const Icon(Icons.home),
      ),
      backgroundColor: Colors.redAccent.shade100,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              'Banyak aplikasi memiliki beberapa layar untuk menampilkan informasi yang berbeda. Contohnya, ada layar untuk menampilkan daftar produk, layar untuk menampilkan detail produk, dan layar untuk menampilkan keranjang belanja.',
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
            const SizedBox(height: 30),
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.white, // warna border
                  width: 4, // ketebalan border
                ),
              ),
              child: ClipRRect(
                child: Image.asset('assets/icon/house.png', fit: BoxFit.cover),
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'Pertama kita perlu membuat dua halaman, yaitu halaman utama atau routes yang ingin kita tampilkan pertama kali saat aplikasi dijalankan, dan halaman tujuan yang akan dituju saat berpindah halaman. Selanjutnya kita gunakan method Navigator.push() pada tombol yang akan digunakan untuk berpindah halaman. Terakhir kita perlu kembali kehalaman pertama menggunakan method Navigator.pop() pada tombol yang ada di halaman tujuan.',
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Colors.blue.shade700, // Warna latar belakang tombol
                foregroundColor: Colors.white, // Warna teks tombol
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ), // Padding di dalam tombol
                textStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ), // Gaya teks tombol
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/tujuan');
              },
              child: const Text(
                'ke Halaman Tujuan',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
