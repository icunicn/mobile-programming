import 'package:flutter/material.dart';

class TujuanPage extends StatelessWidget {
  const TujuanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Tujuan'),
        backgroundColor: Colors.blue.shade700,
        foregroundColor: Colors.white,
        centerTitle: true,
        elevation: 2,
        leading: const Icon(Icons.flag),
      ),
      backgroundColor: Colors.blue.shade700,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              'Untuk berpindah halaman baru, gunakan metode Navigator.push(). Metode push() akan menambahkan Route ke dalam tumpukan route yang dikelola oleh navigator. route ini dapat dibuat secara kustom atau menggunakan MaterialPageRoute, yang memiliki animasi transisi sesuai dengan platform yang digunakan',
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
            const SizedBox(height: 30),
            // large icon here from assets
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Colors.white, // warna border
                  width: 4, // ketebalan border
                ),
              ),
              child: ClipRRect(
                child: Image.asset('assets/icon/marks.png', fit: BoxFit.cover),
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'Untuk menutup halaman kedua dan kembali ke halaman sebelumnya, gunakan metode Navigator.pop(). Metode pop() akan menghapus Route teratas dari tumpukan route, sehingga menampilkan halaman sebelumnya.',
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Colors.redAccent.shade100, // Warna latar belakang tombol
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
                Navigator.pop(context);
              },
              child: const Text(
                'Kembali ke Halaman Home',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
