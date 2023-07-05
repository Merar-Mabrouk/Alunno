import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../const/const.dart';

class CustomfeildForm extends StatefulWidget {

 const CustomfeildForm({super.key, required this.text, required this.obscure});
  final String text;
  final bool obscure;

  @override
  State<CustomfeildForm> createState() => _CustomfeildFormState();
}

class _CustomfeildFormState extends State<CustomfeildForm> {
final Color feild = const Color(0xffD9D9D9);
   @override
   Widget build(BuildContext context) {
       return TextFormField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 18),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide(color: primaryColor, width: 0.6)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide(
              color: primaryColorv2,
              width: 0.6,
            )),
        label: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Text(
            widget.text,
            style: GoogleFonts.manrope(
              textStyle: const TextStyle(
                fontSize: 16,
                color: Color(0xffD9D9D9),
              ),
            ),
          ),
        ),
      ),
      obscureText: widget.obscure,
    );
  }
}