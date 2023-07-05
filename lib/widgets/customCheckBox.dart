import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCheckBox extends StatefulWidget {

  const CustomCheckBox({ super.key });

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
     final bool value = false;
   @override
   Widget build(BuildContext context) {
       return  Row(
      children: [
        Checkbox(
          value: value,
          onChanged: (value) {
            setState(() {
              value = !value!;
            });
          },
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
                text: 'By creating an account, you agree to',
                style: GoogleFonts.magra(
                    textStyle: const TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                )),
                children: [
                  TextSpan(
                    text: 'Terms and Conditions',
                    style: GoogleFonts.magra(
                      textStyle: const TextStyle(
                          fontSize: 14,
                          color: Colors.black87,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.black87),
                          
                    ), 
                  ),
                ]),
          ),
        ),
      ],
    );
  }
}