import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key, required this.text, this.son});
  final Text text;
  final Widget? son;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Image.asset('assets/Appbar.png'),
          Positioned(
            top: 60,
            left: 22,
            child: text,
          ),
          if (son != null)
            Positioned(
              top: 110,
              left: 22,
              child: son!,
            )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(214);
}
