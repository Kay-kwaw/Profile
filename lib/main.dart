import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Gradient',
      theme: ThemeData(
          scaffoldBackgroundColor: Color.fromARGB(154, 106, 128, 125),
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: const MyHomePage(
        title: '',
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 120,
          ),
          const CircleAvatar(
            backgroundImage: AssetImage("assets/images/kaykwaw.JPG"),
            radius: 70.0,
          ),
          const Divider(
            height: 50,
            color: Color.fromARGB(255, 164, 135, 95),
          ),
          Text(
            "Kwaw Kumi Miezah Arthur",
            style: GoogleFonts.comforter(
                fontSize: 35, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: const EdgeInsets.only(bottom: 8),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                color: Color.fromARGB(255, 208, 208, 208),
                width: 1.0,
              ))),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  "SOFTWARE ENGINEER",
                  style: GoogleFonts.quicksand(
                    fontSize: 18,
                    color: const Color.fromARGB(255, 221, 221, 221),
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.black,
                  )),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: const BorderSide(color: Colors.black)),
                  prefixIcon: const Icon(
                    Icons.email,
                    color: Colors.black,
                  ),
                  hintText: "kwawkumi9@gmail.com",
                  hintStyle: const TextStyle(color: Colors.black),
                  filled: true,
                  fillColor: Colors.white),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(5.0),
            child: TextField(
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.black,
                  )),
                  focusedBorder: OutlineInputBorder(
                      // borderRadius: BorderRadius.circular(150),
                      borderSide: BorderSide(color: Colors.black)),
                  prefixIcon: Icon(
                    Icons.phone,
                    color: Colors.black,
                  ),
                  hintText: "+233599144982",
                  hintStyle: TextStyle(color: Colors.black),
                  filled: true,
                  fillColor: Colors.white),
            ),
          ),
        ],
      ),
    ));
  }
}
