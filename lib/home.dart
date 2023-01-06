import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://media1.giphy.com/media/RkDZq0dhhYHhxdFrJB/giphy.gif?cid=ecf05e47qa91rfgmyeqtaplrlox1kmgoisz1ijpm59pm7aig&rid=giphy.gif&ct=g'),
                      fit: BoxFit.cover)),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText('Hi!',
                        speed: const Duration(milliseconds: 200),
                        textStyle: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold)),
                    TyperAnimatedText('I hope you \'re doing well',
                        speed: const Duration(milliseconds: 200),
                        textStyle: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center),
                    TyperAnimatedText('Don\'t forget to rest',
                        speed: const Duration(milliseconds: 220),
                        textStyle: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center),
                    TyperAnimatedText('You did your best, okay?',
                        speed: const Duration(milliseconds: 200),
                        textStyle: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center),
                    TyperAnimatedText('Take care of yourself <33',
                        speed: const Duration(milliseconds: 200),
                        textStyle: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center),
                  ],
                  repeatForever: true,
                  pause: const Duration(milliseconds: 500),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
