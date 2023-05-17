import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tentang Mobile Legends: Bang Bang"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/ml.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                "Selamat datang di Mobile Legends!",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Mobile Legends adalah permainan MOBA yang dirancang untuk ponsel. Kedua tim masing-masing berisi lima orang berjuang untuk mencapai dan menghancurkan markas musuh sambil mempertahankan markas mereka sendiri untuk mengendalikan tiga jalur, yang dikenal sebagai jalur atas, tengah, dan bawah, yang menghubungkan setiap markas.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Game ini menghadirkan pertarungan seru antar pemain dalam mode 5v5, dengan berbagai pilihan hero yang memiliki keunikan dan kekuatan masing-masing.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Ayo bergabung dan rasakan keseruan bermain Mobile Legends!",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, 'Data from Third Screen');
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  primary: Colors.green,
                ),
                child: Text(
                  "GO Play",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}