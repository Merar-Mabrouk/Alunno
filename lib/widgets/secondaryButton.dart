import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {

   const SecondaryButton({
    super.key,
    required this.text1,
    required this.text2,
    this.onPressed,
  });

  final Text text1;
  final Text text2;
  final VoidCallback? onPressed;


   @override
   Widget build(BuildContext context) {
       return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          text1,
          TextButton(
            onPressed: onPressed,
            style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsets>(
                const EdgeInsets.all(2),
              ),
            ),
            child: text2,
          ),
        ],
      ),
    );
  }
}