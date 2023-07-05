import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {

  const CustomButton(
      {super.key,
      required this.color,
      required this.text,
      this.onPressed,
      this.br = 15});
  final Color color;
  final Text text;
  final Function()? onPressed;
  final double br;

   @override
   Widget build(BuildContext context) {
       return  Center(
      child: FilledButton(
        style: FilledButton.styleFrom(
          backgroundColor: color,
          minimumSize: const Size(370, 60),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(br)),
        ),
        onPressed: onPressed,
        child: text,
      ),
    );
  }
}