import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:test1/pages/home_page.dart';
import 'package:test1/pages/login_page.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepOrange , fontFamily: GoogleFonts.lato().fontFamily),
      darkTheme: ThemeData(brightness: Brightness.dark),
      routes: {
        "/": (context) => const HomePage(),
        "/login_page" : (context) => const LoginPage(),
      },
    );
  }
}