import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:uts_arinurcahya/thirdscreen.dart';
import 'package:uts_arinurcahya/secondscreen.dart';


class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> with TickerProviderStateMixin {
  late AnimationController _animationController;
  double _imageSize = 100.0;
  double _imageMargin = 0.0;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    )..repeat(reverse: true);
    timeDilation = 2.0; // Menambahkan efek slow motion pada animasi
    _animationController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Future<void> _navigateScreen(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ThirdScreen()),
    );

    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text('$result')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Games Online"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          childAspectRatio: 0.95,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondScreen(data: 'Hello from First Screen'),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.zero,
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Image.asset(
                      'assets/images/ari.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Free Fire",
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                _navigateScreen(context);
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.zero,
              ),
              child: Column(
                children: [
                  Expanded(
                    child: AnimatedContainer(
                      duration: Duration(seconds: 2),
                      curve: Curves.easeInOut,
                      margin: EdgeInsets.all(_imageMargin),
                      child: Image.asset(
                        'assets/images/mlbb.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Mobile Legends",
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/fourth');
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.zero,
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Image.asset(
                      'assets/images/pubg.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "PUBG",
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/fifth', arguments: 'hai apa kabar');
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.zero,
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Image.asset(
                      'assets/images/coc.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Clash of Clans",
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

                 
