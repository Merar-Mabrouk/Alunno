import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/customAppBar.dart';
import '../widgets/customButton.dart';
import '../widgets/customFormFeild.dart';
import '../widgets/secondaryButton.dart';

class LogIn extends StatefulWidget {

  const LogIn({ super.key });

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {

   @override
   Widget build(BuildContext context) {
       return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppbar(
        text: Text(
          'Alunno',
          style: GoogleFonts.magra(
            textStyle: const TextStyle(
                fontSize: 48, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            Text(
              'Log In',
              style: GoogleFonts.magra(
                  textStyle: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w500,
              )),
            ),
            const SizedBox(height: 25),
            CustomFormFeild(
              text: 'Personal Email Adress',
              icon: Icons.email_outlined,
            ),
            const SizedBox(height: 25),
            CustomFormFeild(
              text: 'Password',
              icon: Icons.lock_outline,
            ),
            const SizedBox(height: 100),
            CustomButton(
              color: Colors.black,
              text: const Text(
                'Log In',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              onPressed: () {
                print("samir!!!!");
              },
            ),
            const SizedBox(height: 50),
            SecondaryButton(
              text1: Text(
                'Don\'t have an account?',
                style: GoogleFonts.magra(
                    textStyle:
                        const TextStyle(fontSize: 16, color: Colors.black38)),
              ),
              text2: Text(
                'Sign Up',
                style: GoogleFonts.magra(
                    textStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                )),
              ),
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/Signup', (route) => false);
              },
            ),
            const SizedBox(height: 5),
            Center(
              child: Text(
                'forgot your password?',
                style: GoogleFonts.magra(
                    textStyle:
                        const TextStyle(fontSize: 16, color: Colors.black38)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}