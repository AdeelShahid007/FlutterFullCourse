import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:test1/pages/home_page.dart';
import 'package:test1/pages/login_page.dart';
import 'package:test1/pages/signup_page.dart';
import 'package:test1/utils/routes.dart';

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
        "/": (context) => const SignUp(),
        MyRoutes.loginRoute : (context) => const LoginPage(),
        MyRoutes.signupRoute : (context) => const SignUp(),
        MyRoutes.homeRoute : (context) => const HomePage(),
      },
    );
  }
}