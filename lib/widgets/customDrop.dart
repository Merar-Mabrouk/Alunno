import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../const/const.dart';

class CustomDrop extends StatefulWidget {

  const CustomDrop({super.key, required this.text, this.elements});
  final String text;
  final List? elements;

  @override
  State<CustomDrop> createState() => _CustomDropState();
}

class _CustomDropState extends State<CustomDrop> {
final Color feild = const Color(0xffD9D9D9);
  final List<DropdownMenuItem<dynamic>>? replacement = [];
   @override
   Widget build(BuildContext context) {
       return DropdownButtonFormField(
      hint: Padding(
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
      dropdownColor: Colors.white,
      isDense: true,
      items: widget.elements != null
          ? widget.elements!
              .map((e) => DropdownMenuItem(
                  value: e,
                  child: Text(
                    e,
                    style: GoogleFonts.manrope(
                        fontSize: 14, fontWeight: FontWeight.normal),
                  )))
              .toList()
          : replacement,
      onChanged: (value) {},
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide(color: primaryColor, width: 0.6)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide(
              color: primaryColorv2,
              width: 0.6,
            )),
      ),
    );
  }
}