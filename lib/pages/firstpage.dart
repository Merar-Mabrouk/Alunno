
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../const/const.dart';
import '../widgets/customButton.dart';
import '../widgets/secondaryButton.dart';

class Firstpage extends StatefulWidget {

  const Firstpage({ super.key });

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {

   @override
   Widget build(BuildContext context) {
        return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Image.asset('assets/welcome.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              'Welcome\nTo Alunno',
              textAlign: TextAlign.start,
              style: GoogleFonts.magra(
                  textStyle: const TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              )),
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              "Everything you'll need to make your student life easier and increase your productivity",
              style: GoogleFonts.magra(
                  textStyle: const TextStyle(
                fontSize: 18,
                color: Colors.white,
              )),
            ),
          ),
          const SizedBox(height: 30),
          CustomButton(
            color: secondaryColor,
            text: const Text(
              'Join us now!',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            onPressed: () =>
              Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/Signup',
                  (route) => false),
            br: 20,
          ),
          const SizedBox(height: 5),
          SecondaryButton(
            text1: Text(
              'Already a member ?',
              textAlign: TextAlign.center,
              style: GoogleFonts.magra(
                textStyle: TextStyle(
                    fontSize: 16, color: Colors.white.withOpacity(0.8)),
              ),
            ),
            text2: Text(
              'log in',
              textAlign: TextAlign.center,
              style: GoogleFonts.magra(
                textStyle: TextStyle(
                    fontSize: 16,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.white.withOpacity(0.8),
                    color: Colors.white.withOpacity(0.8)),
              ),
            ),
            onPressed: () => Navigator.pushNamedAndRemoveUntil(
                context, "/login", (route) => false),
          )
        ],
      ),
    );
  }
}