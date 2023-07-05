import 'package:flutter/material.dart';
import 'package:project2/pages/firstpage.dart';
import 'package:project2/pages/log_in.dart';
import 'package:project2/pages/sign_up.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        "/Signup": (context) => const SignUp(),
        "/login": (context) => const LogIn(),

      },
      home: const Firstpage(),
    );
  }
}