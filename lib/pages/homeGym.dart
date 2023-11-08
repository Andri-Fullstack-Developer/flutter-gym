// ignore: file_names
// import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: camel_case_types
class homeGym extends StatefulWidget {
  const homeGym({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeGymState createState() => _HomeGymState();
}

class _HomeGymState extends State<homeGym> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const AboutScreen(),
    const MotivasiScreen(),
   
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 70, 1, 1),
        title: const Text(
          'Selamat Datang',
          style: TextStyle(
            color: Color.fromRGBO(252, 251, 231, 1),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        color: const Color.fromRGBO(
            24, 23, 26, 1), // Warna latar belakang di luar GridView
        child: _pages[_currentIndex], // Menampilkan halaman yang sesuai
      ),
      // body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: FaIcon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.circleInfo),
            label: 'Informasi',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.star),
            label: 'Motivasi',
          ),
     
        ],
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.white,
        selectedItemColor: const Color.fromRGBO(255, 70, 1, 1),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          // padding: EdgeInsets.only(top: 30),
          color: const Color.fromRGBO(24, 23, 26, 1),
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Image.asset(
                    'images/profil1.png',
                    fit: BoxFit.cover,
                    width: 600,
                    // height: 800,
                  ),
                  const Positioned(
                    bottom: 190,
                    left: 0,
                    right: 0,
                    child: Text(
                      "PROGRESS  RESULT",
                      style: TextStyle(
                          color: Color(0xFFFF4300),
                          fontSize: 23,
                          fontFamily: 'viga',
                          letterSpacing: 6,
                          shadows: <Shadow>[
                            Shadow(
                                offset: Offset(0, 5),
                                blurRadius: 8.2,
                                color: Color.fromRGBO(255, 98, 1, 0.5))
                          ]),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Positioned(
                    bottom: 60,
                    left: 0,
                    right: 0,
                    child: Text(
                      "SPYRO",
                      style: TextStyle(
                          color: Color(0xFFFF4300),
                          fontSize: 60,
                          fontFamily: 'viga',
                          letterSpacing: 8,
                          shadows: <Shadow>[
                            Shadow(
                                offset: Offset(0, 5),
                                blurRadius: 8.2,
                                color: Color.fromRGBO(255, 98, 1, 0.5))
                          ]),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Positioned(
                    bottom: -4,
                    left: 0,
                    right: 0,
                    child: Image(
                      image: AssetImage('images/bg-taranfaran.png'),
                    ),
                  )
                ],
              ),
              const Text(
                "Fit for your lifestyle",
                style: TextStyle(
                    fontFamily: 'Outfit',
                    color: Colors.white,
                    fontSize: 24,
                    letterSpacing: 1),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(16.0, 20, 16.0, 30),
                child: const Text(
                  "Wake up with a sunrise meditation, sweat it out with lunchtime HIIT, or unwind with an evening flow. You’ll find movement for every mood with classes sorted by time, style, and skill level.",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Outfit',
                      fontSize: 18,
                      letterSpacing: .8),
                ),
              ),
              Stack(
                alignment: AlignmentDirectional.center,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(top: 102),
                    width: 300,
                    height: 100, // Sesuaikan dengan ukuran gambar
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(
                          255, 70, 1, 1), 
                      borderRadius: BorderRadius.circular(
                          10.0),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(
                        10.0),
                    child: Image.asset(
                      'images/Rectangle.png',
                      width: 290,
                    ),
                  )
                ],
              ),
              const Padding(padding: EdgeInsets.only(bottom: 40))
            ],
          ),
        ),
      ),
    );
  }
}

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Informasi',
              style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Outfit',
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3,
                  color: Colors.white),
            ),
          ),
          const Image(
            image: AssetImage('images/Rectangle 48.png'),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                image: AssetImage('images/project/05.png'),
              ),
            ),
            width: 360,
            height: 150,
          ),
          GridView.count(
            shrinkWrap: true, 
            physics:
                const NeverScrollableScrollPhysics(),
            crossAxisCount: 1,
            padding: const EdgeInsets.all(16.0),
            mainAxisSpacing: 16.0,
            crossAxisSpacing: 16.0,
            children: const <Widget>[
              GridItem(
                color: Colors.white,
                imageAsset: 'images/project/01.png',
              ),
              GridItem(
                color: Colors.blue,
                imageAsset: 'images/project/02.png',
              ),
              GridItem(
                color: Colors.green,
                imageAsset: 'images/project/03.png',
              ),
              GridItem(
                color: Colors.yellow,
                imageAsset: 'images/project/01.png',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  final Color color;
  // final String label;
  final String imageAsset;

  const GridItem({
    super.key,
    required this.color,
    // required this.label,
    required this.imageAsset,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(
            color: const Color.fromARGB(255, 255, 255, 255), width: 2.0),
        borderRadius: BorderRadius.circular(5),
        color: const Color.fromARGB(255, 255, 255, 255),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            imageAsset,
            width: 130,
            height: 130,
          ),
          const SizedBox(height: 8),
          // Text(label),
        ],
      ),
    );
  }
}




class MotivasiScreen extends StatelessWidget {
  const MotivasiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: const Color.fromRGBO(255, 70, 1, 1),
                borderRadius: BorderRadius.circular(10)),
            width: 5,
            height: 800,
          ),
          const SizedBox(width: 20),
          Expanded(
            child: ListView(
              children: <Widget>[
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(100),
                        bottomLeft: Radius.circular(100),
                      ),
                      color: Color.fromRGBO(255, 98, 1, 0.5)),
                  child: const ListTile(
                    title: Padding(
                      padding: EdgeInsets.only(left: 20.0, right: 16.0),
                      child: Text(
                        "This is quite simple. Either you do it, or you don't.",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(100),
                          bottomLeft: Radius.circular(100)),
                      color: Color.fromRGBO(255, 98, 1, 0.5)),
                  child: const ListTile(
                    title: Padding(
                      padding: EdgeInsets.only(left: 20, right: 16),
                      child: Text(
                        "Do not be afraid to chase what sets your soul on fire.",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(100),
                          bottomLeft: Radius.circular(100)),
                      color: Color.fromRGBO(255, 98, 1, 0.5)),
                  child: const ListTile(
                    title: Padding(
                      padding: EdgeInsets.only(left: 20, right: 16),
                      child: Text(
                        "Don't wait for tomorrow to motivate you to exercise! You'll find another reason to quit. Start now!",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(100),
                          bottomLeft: Radius.circular(100)),
                      color: Color.fromRGBO(255, 98, 1, 0.5)),
                  child: const ListTile(
                    title: Padding(
                      padding: EdgeInsets.only(left: 20, right: 16),
                      child: Text(
                        "Your fitness is 100% mental! If your mind doesn't push harder, your body won't go anywhere!",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(100),
                          bottomLeft: Radius.circular(100)),
                      color: Color.fromRGBO(255, 98, 1, 0.5)),
                  child: const ListTile(
                    title: Padding(
                      padding: EdgeInsets.only(left: 20, right: 16),
                      child: Text(
                        "When you see a woman with smudged lipstick and runny kajal, you know she's just finished a killer workout!",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(100),
                          bottomLeft: Radius.circular(100)),
                      color: Color.fromRGBO(255, 98, 1, 0.5)),
                  child: const ListTile(
                    title: Padding(
                      padding: EdgeInsets.only(left: 20, right: 16),
                      child: Text(
                        "Don't cry over boys! Do some squats and make them cry, hoping they still have that butt!",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(100),
                          bottomLeft: Radius.circular(100)),
                      color: Color.fromRGBO(255, 98, 1, 0.5)),
                  child: const ListTile(
                    title: Padding(
                      padding: EdgeInsets.only(left: 20, right: 16),
                      child: Text(
                        "Do you feel pain when you exercise? Good, that's weakness leaving the body.",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(100),
                          bottomLeft: Radius.circular(100)),
                      color: Color.fromRGBO(255, 98, 1, 0.5)),
                  child: const ListTile(
                    title: Padding(
                      padding: EdgeInsets.only(left: 20, right: 16),
                      child: Text(
                        "Life is a battle. But don't worry, you're going to lift and conquer it too!",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(100),
                          bottomLeft: Radius.circular(100)),
                      color: Color.fromRGBO(255, 98, 1, 0.5)),
                  child: const ListTile(
                    title: Padding(
                      padding: EdgeInsets.only(left: 20, right: 16),
                      child: Text(
                        "Life is a battle. But don't worry, you're going to lift and conquer it too!",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(100),
                          bottomLeft: Radius.circular(100)),
                      color: Color.fromRGBO(255, 98, 1, 0.5)),
                  child: const ListTile(
                    title: Padding(
                      padding: EdgeInsets.only(left: 20, right: 16),
                      child: Text(
                        "The beginning is always tough! But once you lift your butt, do some squats!",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: homeGym(),
  ));
}
