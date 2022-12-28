import "package:flutter/material.dart";
import 'package:test1/list_title_pages/about_us_page.dart';
import 'package:test1/list_title_pages/mail_page.dart';
import 'package:test1/list_title_pages/profile_page.dart';
import 'package:test1/list_title_pages/setting_page.dart';
import 'package:test1/pages/home_page.dart';
import 'package:test1/pages/login_page.dart';
import 'package:test1/pages/signup_page.dart';
import 'package:test1/utils/routes.dart';
import 'package:test1/widgets/themes.dart';

main() {
  runApp( const MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
   const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: MyTheme().lightTheme(context),
      darkTheme: MyTheme().darkTheme(context),
      routes: {
        "/": (context) => const SignUp(),
        MyRoutes.loginRoute : (context) => const LoginPage(),
        MyRoutes.signupRoute : (context) => const SignUp(),
        MyRoutes.homeRoute : (context) => const HomePage(),
        MyRoutes.profileRoute : (context) => const Profile(),
        MyRoutes.mailRoute : (context) => const Mail(),
        MyRoutes.settingRoute : (context) => const Setting(),
        MyRoutes.aboutRoute : (context) => const About(),
      },
    );
  }
}