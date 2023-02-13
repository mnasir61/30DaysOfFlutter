import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/pages/home_page.dart';
import 'package:untitled/pages/login_page.dart';
import 'package:untitled/pages/login_page2.dart';
import 'package:untitled/pages/login_screen.dart';
import 'package:untitled/pages/login_screen2.dart';
import 'package:untitled/pages/signUp_screen.dart';
import 'package:untitled/pages/signup_page.dart';
import 'package:untitled/utils/routes.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      debugShowCheckedModeBanner: false,
      // home:HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      // initialRoute: "/Home",
      routes: {
        "/": (context) => LoginScreen(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.login2Route: (context) => LoginPage2(),
        MyRoutes.signUpRoute: (context) => SignUpPage(),
        MyRoutes.loginScreenRoute: (context) => LoginScreen(),
        MyRoutes.loginScreenRoute2: (context) => LoginScreen2(),
        MyRoutes.signUpScreenRoute: (context) => SignUpScreen(),
      },
    );
  }
}