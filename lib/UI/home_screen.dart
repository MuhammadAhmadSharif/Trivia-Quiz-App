import 'package:Trivia/UI/card.dart';
import 'package:Trivia/UI/question_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swipe_cards/swipe_cards.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite,
                color: Colors.blue,
              )),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.profile_circled,
                  color: Colors.blue,
                )),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                  ),
                  child: Text(
                    "Let's Play",
                    style: GoogleFonts.roboto(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.pink),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 8),
                  child: Text(
                    "Be the First!",
                    style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 155, 160, 159)),
                  ),
                )
              ],
            ),
            const Levels(),
            const Level2(),
            const Level3(),
          ],
        )),
      ),
    );
  }
}

class Levels extends StatelessWidget {
  const Levels({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 250,
        // decoration: BoxDecoration(border: Border.all()),
        child: Stack(
          children: [
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuestionScreen(),
                      ));
                },
                child: Container(
                  height: 170,
                  constraints:
                      const BoxConstraints(minHeight: 150, minWidth: 1300),
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(0xfffec8a6e),
                          Color(0xfffe97792),
                        ],
                      ),
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(25)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 24, top: 45),
                        child: Text(
                          "Level 1",
                          style: GoogleFonts.roboto(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Text(
                          "Beginner",
                          style: GoogleFonts.roboto(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Positioned(
                top: 0,
                right: 20,
                child: Image(
                  image: AssetImage("assest/book.png"),
                  height: 100,
                )),
          ],
        ),
      ),
    );
  }
}

class Level2 extends StatelessWidget {
  const Level2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        height: 250,
        // decoration: BoxDecoration(border: Border.all()),
        child: Stack(
          children: [
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuestionScreen(),
                      ));
                },
                child: Container(
                  height: 170,
                  constraints:
                      const BoxConstraints(minHeight: 150, minWidth: 450),
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(0xfff0BB9FC),
                          Color(0xfff5472ED),
                        ],
                      ),
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(25)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 24, top: 45),
                        child: Text(
                          "Level 2",
                          style: GoogleFonts.roboto(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Text(
                          "Intermediate",
                          style: GoogleFonts.roboto(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Positioned(
                top: 0,
                right: 20,
                child: Image(
                  image: AssetImage("assest/ballon.png"),
                  height: 120,
                )),
          ],
        ),
      ),
    );
  }
}

class Level3 extends StatelessWidget {
  const Level3({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        height: 250,
        // decoration: BoxDecoration(border: Border.all()),
        child: Stack(
          children: [
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CardScreen(),
                      ));
                },
                child: Container(
                  height: 170,
                  constraints:
                      const BoxConstraints(minHeight: 150, minWidth: 450),
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(0xfffF5C1E9),
                          Color(0xfffA591D3),
                        ],
                      ),
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(25)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 24, top: 45),
                        child: Text(
                          "Level 3",
                          style: GoogleFonts.roboto(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Text(
                          "Swip Card",
                          style: GoogleFonts.roboto(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Positioned(
                top: 0,
                right: 20,
                child: Image(
                  image: AssetImage("assest/world.png"),
                  height: 120,
                )),
          ],
        ),
      ),
    );
  }
}
