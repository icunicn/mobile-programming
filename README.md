# Praktikum Modul 7 Navigation Beetwen Pages Using MaterialPageRoute and Named Route

A new Flutter project.

## Project Output (Screenshots)

Screenshots are stored in assets/screenshots.

- Output 1: Using Navigator.push() and MaterialPageRoute() to go to a new page
```
onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Tujuan()),
  );
},
```
  <img src="assets/screenshots/1.jpg" alt="Single thumbs up icon" width="200" height="auto" />

- Output 2: Using Navigator.pop() to return to the previous page
```
onPressed: () {
    Navigator.pop(context);
},
```
  <img src="assets/screenshots/2.jpg" alt="Three thumbs icons in Row and Column layout" width="200" height="auto" />

- Output 3: Using initial routes and named routes
```
initialRoute: '/',
routes: {
    '/': (context) => const HomePage(),
    '/second': (context) => const TujuanPage(),
},
```
  <img src="assets/screenshots/3.jpg" alt="Three thumbs icons in Row and Column layout" width="200" height="auto" />

- Output 4: Using Navigator.pushNamed() to navigate to a named route
```
onPressed: () {
    Navigator.pushNamed(context, '/tujuan');
},
```
  <img src="assets/screenshots/4.jpg" alt="Three thumbs icons in Row and Column layout" width="200" height="auto" />

- Output 5: Task 1 to display Home Page with a button to navigate to Second Page
```
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
```

  <img src="assets/screenshots/5.jpg" alt="Three thumbs icons in Row and Column layout" width="200" height="auto" />

- Output 6: Task 2 to display Second Page with a button to navigate back to Home Page
```
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
```
  <img src="assets/screenshots/5.jpg" alt="Three thumbs icons in Row and Column layout" width="200" height="auto" />
