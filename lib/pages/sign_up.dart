import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project2/pages/log_in.dart';

import '../const/const.dart';
import '../widgets/customAppBar.dart';
import '../widgets/customButton.dart';
import '../widgets/customCheckBox.dart';
import '../widgets/customDrop.dart';
import '../widgets/customfeildForm.dart';
import '../widgets/secondaryButton.dart';

class SignUp extends StatefulWidget {

  const SignUp({ super.key });

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
 final List elem = [
    "USTHB",
    "Universite d'Alger 1",
    "Ecole National Superieure d'Informatique",
    "Universite d'Alger II",
    "Universite d'Alger 3",
    "Ecole Polytechnique"
  ];
   @override
   Widget build(BuildContext context) {
       return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppbar(
        text: Text(
          'Create your account',
          style: GoogleFonts.magra(
            textStyle: const TextStyle(
                fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        son: Text(
          'Use your email or any other service\n to continue with us!',
          style: GoogleFonts.magra(
            textStyle: const TextStyle(fontSize: 14, color: Colors.white),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 4.0),
        child: ListView(
          children: [
            CustomfeildForm(text: 'First and last name', obscure: false),
            const SizedBox(height: 14),
            CustomfeildForm(text: 'User Name', obscure: false),
            const SizedBox(height: 14),
            CustomfeildForm(text: 'Email Adress', obscure: false),
            const SizedBox(height: 14),
            CustomfeildForm(text: 'Password', obscure: true),
            const SizedBox(height: 14),
            CustomfeildForm(text: 'Confirm Pasword', obscure: true),
            const SizedBox(height: 14),
            CustomDrop(
              text: 'University',
              elements: elem,
            ),
            const SizedBox(height: 15),
            CustomCheckBox(),
            const SizedBox(height: 22),
            CustomButton(
              color: Colors.black,
              text: const Text(
                'Sign Up',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              onPressed: () {
                print("samir!!!!");
              },
            ),
            const SizedBox(height: 10),
            SecondaryButton(
              text1: Text(
                'Already have an account?',
                style: GoogleFonts.magra(
                    textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Color(0xff383737))),
              ),
              text2: Text(
                'LogIn',
                style: GoogleFonts.magra(
                    textStyle: TextStyle(
                        color: primaryColor,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        decoration: TextDecoration.underline,
                        decorationColor: primaryColor)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: ((context) => const LogIn()))
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}