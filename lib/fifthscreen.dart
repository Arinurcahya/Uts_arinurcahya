import 'package:flutter/material.dart';

class FifthScreen extends StatelessWidget {
  final String data;
  const FifthScreen({Key? key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Spesifikasi Clash of Clans"),
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 40),
              Image.asset(
                'assets/images/coc1.jpg',
                width: 200,
                height: 200,
              ),
              SizedBox(height: 20),
              Text(
                "Clash of Clans",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Clash of Clans adalah sebuah game strategi real-time yang dikembangkan oleh Supercell. Dalam game ini, pemain membangun desa, melatih pasukan, dan berperang melawan pemain lain untuk mendapatkan sumber daya dan meningkatkan kekuatan desa mereka.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Spesifikasi Minimum:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Text("Sistem Operasi: Android 4.1 atau yang lebih baru"),
                    Text("RAM: 1.5 GB"),
                    Text("Prosesor: Dual-core 1.2 GHz atau lebih cepat"),
                    Text("Ruang Penyimpanan: 500 MB"),
                  ],
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  primary: Colors.amber,
                  textStyle: TextStyle(fontSize: 18),
                ),
                child: Text("Kembali"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
