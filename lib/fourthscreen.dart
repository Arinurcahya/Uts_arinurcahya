import 'package:flutter/material.dart';

class FourthScreen extends StatelessWidget {
  const FourthScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Game PUBG"),
        backgroundColor: Colors.yellow,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 40),
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('assets/images/pubg.jpg'),
              ),
              SizedBox(height: 20),
              Text(
                "PlayerUnknown's Battlegrounds (PUBG)",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "PUBG adalah sebuah game battle royale yang dikembangkan oleh PUBG Corporation. Dalam game ini, pemain akan dibawa ke sebuah pulau besar dan harus bertahan hidup serta bertarung melawan pemain lain hingga menjadi yang terakhir yang bertahan.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  primary: Colors.yellow,
                  textStyle: TextStyle(fontSize: 18),
                ),
                child: Text("Go"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
