import 'package:flutter/material.dart';

class CustomFormFeild extends StatefulWidget {

 const CustomFormFeild({super.key, required this.text, required this.icon});
  final String text;
  final IconData icon;

  @override
  State<CustomFormFeild> createState() => _CustomFormFeildState();
}

class _CustomFormFeildState extends State<CustomFormFeild> {
  bool t = true;
   @override
   Widget build(BuildContext context) {
       return TextFormField(
      decoration: InputDecoration(
        label: Text(
          widget.text,
          style: const TextStyle(
            fontSize: 16,
            color: Color(0xff757575),
          ),
        ),
        prefixIcon: Icon(
          widget.icon,
          color: const Color(0xff757575),
        ),
        suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                t = !t;
              });
            },
            child: Icon(
              t != true
                  ? Icons.visibility_outlined
                  : Icons.visibility_off_outlined,
              color: const Color(0xff757575),
            )),
        filled: true,
        fillColor: const Color(0xffF5F6FA),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
      ),
      obscureText: t,
    );
  }
}