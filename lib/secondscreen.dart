import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String data;
  const SecondScreen({Key? key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tutorial: Cara Membuat Akun Free Fire"),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/ff.jpg'),
              SizedBox(height: 20),
              Text(
                "Selamat datang di Free Fire",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                "Berikut adalah tutorial cara membuat akun Free Fire:",
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Text(
                "1. Pilih metode login:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
             Text("Login dengan Facebook",
              ),
              SizedBox(height: 10),
               Text("Login dengan Google"),
              SizedBox(height: 10),
              Text("Login dengan VK"),
              SizedBox(height: 20),
              Text(
                "2. Jika Anda belum memiliki akun, ikuti langkah-langkah berikut:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "   a. Buka aplikasi Free Fire",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                "   b. Klik tombol 'Buat Akun' di layar utama",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                "   c. Isi informasi yang diperlukan untuk membuat akun",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                "   d. Ikuti petunjuk selanjutnya untuk menyelesaikan proses pendaftaran",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                "Selamat bermain Free Fire!",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Kembali"),
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
