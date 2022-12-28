import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

 class MyTheme {

  var mycolor = MaterialColor(const Color.fromARGB(255, 196, 6, 6).value, const <int, Color>{
      50: Color.fromRGBO(0, 137, 123, 0.1),
      100: Color.fromRGBO(0, 137, 123, 0.2),
      200: Color.fromRGBO(0, 137, 123, 0.3),
      300: Color.fromRGBO(0, 137, 123, 0.4),
      400: Color.fromRGBO(0, 137, 123, 0.5), 
      500: Color.fromRGBO(0, 137, 123, 0.6),
      600: Color.fromRGBO(0, 137, 123, 0.7),
      700: Color.fromRGBO(0, 137, 123, 0.8),
      800: Color.fromRGBO(0, 137, 123, 0.9),
      900: Color.fromRGBO(0, 137, 123, 1),
    },
  ); 

   ThemeData lightTheme(BuildContext context) => ThemeData(
    primarySwatch: mycolor , fontFamily: GoogleFonts.lato().fontFamily,
        appBarTheme: AppBarTheme(color: const Color.fromARGB(255, 196, 6, 6) , elevation: 0.0 ,
         iconTheme: const IconThemeData(color: Colors.black),
          toolbarTextStyle: Theme.of(context).textTheme.bodyText2,
           titleTextStyle: Theme.of(context).textTheme.headline6,
      )
  );

   ThemeData darkTheme(BuildContext context) => ThemeData(
    brightness: Brightness.dark
  );

}