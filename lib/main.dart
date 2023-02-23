import 'package:flutter/material.dart';
import 'package:flutter_color/flutter_color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/pages/counter_app.dart';
import 'package:untitled/pages/day7.dart';
import 'package:untitled/pages/gradient_testing.dart';
import 'package:untitled/pages/home_page.dart';
import 'package:untitled/pages/login_page.dart';
import 'package:untitled/pages/login_page2.dart';
import 'package:untitled/pages/login_screen.dart';
import 'package:untitled/pages/login_screen2.dart';
import 'package:untitled/pages/tikTok_ui.dart';
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
      // home:Hom   ePage(),
      theme: ThemeData(
        // primarySwatch: Colors.purple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      initialRoute: "/day7",
      routes: {
        "/": (context) => HomePage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.login2Route: (context) => LoginPage2(),
        MyRoutes.signUpRoute: (context) => SignUpPage(),
        MyRoutes.loginScreenRoute: (context) => LoginScreen(),
        MyRoutes.loginScreenRoute2: (context) => LoginScreen2(),
        MyRoutes.signUpScreenRoute: (context) => SignUpScreen(),
        MyRoutes.tikTokUI: (context) => TikTokUI(),
        MyRoutes.gradientTesting: (context) => GradientTesting(),
        MyRoutes.counterApp: (context) => CounterApp(),
        MyRoutes.day7: (context)=> Day7(),
      },
    );
  }
}