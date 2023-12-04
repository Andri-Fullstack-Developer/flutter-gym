import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'pages/homeGym.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const HomeScreen({Key? key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController textController = TextEditingController();
  bool isButtonVisible = false;
  Color hoverColor = Colors.white;

  @override
  void initState() {
    super.initState();
    textController.addListener(() {
      setState(() {
        isButtonVisible = textController.text.isNotEmpty;
      });
    });
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  void _navigateToDetailPage() {
    // Fungsi ini akan mengarahkan ke halaman "DetailPage"
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) =>
              const homeGym()), // Ganti dengan halaman yang sesuai
    );
  }

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
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.settings),
              color: const Color.fromRGBO(252, 251, 231, 1),
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            decoration:
                const BoxDecoration(color: Color.fromRGBO(24, 23, 26, 1)),
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(top: 30.0),
                  child: Text(
                    "SELAMAT DATANG DI GYM",
                    style: TextStyle(
                      color: Color.fromARGB(255, 252, 251, 231),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: TextField(
                    controller: textController,
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      hintText: 'Masukkan nama',
                      disabledBorder: InputBorder.none,
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        letterSpacing: 2.0,
                        wordSpacing: 4.0,
                        textBaseline: TextBaseline.ideographic,
                        height: 1.5,
                      ),
                    ),
                  ),
                ),
                if (isButtonVisible)
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                          colors: [
                            const Color(0xFFFF4601).withOpacity(0.5),
                            const Color(0xFFFF4601)
                          ],
                        ),
                        borderRadius:
                            BorderRadius.circular(5.0), // Ubah sesuai kebutuhan
                      ),
                      child: ElevatedButton(
                        onPressed: _navigateToDetailPage,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors
                              .transparent, // Atur latar belakang tombol menjadi transparan
                          elevation: 0, // Hapus bayangan
                        ),
                        child: const Text("Let's Go!"),
                      ),
                    ),
                  ),
                Container(
                  margin: const EdgeInsets.only(top: 40),
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset: const Offset(0, 4))
                  ]),
                  child: const Image(
                    image: AssetImage("images/home.png"),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 60),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      const SizedBox(width: 20),
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.transparent, shape: BoxShape.circle),
                        child: IconButton(
                          icon: const FaIcon(
                            FontAwesomeIcons.whatsapp,
                            color: Color(0xFF25D366),
                            size: 30,
                          ),
                          onPressed: _launchWhatsApp,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.transparent, shape: BoxShape.circle),
                        child: IconButton(
                          icon: const FaIcon(
                            FontAwesomeIcons.instagram,
                            color: Color(0xFFC13584),
                            size: 30,
                          ),
                          onPressed: _launchInstagramProfile,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.transparent, shape: BoxShape.circle),
                        child: IconButton(
                          icon: const FaIcon(
                            FontAwesomeIcons.linkedinIn,
                            size: 30,
                            color: Color(0xFF0077B5),
                          ),
                          onPressed: _launchLinkedInProfile,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.transparent, shape: BoxShape.circle),
                        child: IconButton(
                          icon: const FaIcon(
                            FontAwesomeIcons.youtube,
                            size: 30,
                            color: Color(0xFFFF0000),
                          ),
                          onPressed: _launchYouTubeChannel,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }

  _launchWhatsApp() async {
    const phoneNumber =
        '6281249192305'; // Ganti dengan nomor WhatsApp yang diinginkan
    const url = 'https://wa.me/$phoneNumber';
    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: deprecated_member_use
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchInstagramProfile() async {
    const username =
        'spires.gym'; // Ganti dengan username Instagram yang diinginkan
    const url = 'https://www.instagram.com/$username';
    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: deprecated_member_use
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchLinkedInProfile() async {
    const url =
        'https://.www.linkedin.com/in/nama-profil-linkedin'; // Ganti dengan tautan profil LinkedIn yang diinginkan
    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: deprecated_member_use
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchYouTubeChannel() async {
    const url =
        'https://youtu.be/M7XLuA0ntW0?si=6kW4KEug2okZ8cAu'; // Ganti dengan tautan saluran YouTube yang diinginkan
    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: deprecated_member_use
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

// class _RotatingIconWidgetState {
// }
