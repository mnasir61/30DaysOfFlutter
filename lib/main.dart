import 'package:flutter/material.dart';
import 'package:untitled/pages/counter_app.dart';
import 'package:untitled/pages/day7.dart';
import 'package:untitled/pages/gradient_testing.dart';
import 'package:untitled/pages/home_page.dart';
import 'package:untitled/pages/list_view_builder.dart';
import 'package:untitled/pages/list_view_example.dart';
import 'package:untitled/pages/login_page.dart';
import 'package:untitled/pages/login_page2.dart';
import 'package:untitled/pages/login_screen.dart';
import 'package:untitled/pages/login_screen2.dart';
import 'package:untitled/pages/opening_page.dart';
import 'package:untitled/pages/tikTok_ui.dart';
import 'package:untitled/pages/signUp_screen.dart';
import 'package:untitled/pages/signup_page.dart';
import 'package:untitled/utils/routes.dart';
import 'package:untitled/widget/theme_widget.dart';
import 'package:untitled/youtube_search/model/item_data.dart';
import 'package:untitled/youtube_search/screens/video_play.dart';
import 'package:untitled/youtube_search/screens/youtube_search_page.dart';

import 'pages/catalog_page.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {

  final ItemData? data;

  const MyApp({super.key, this.data});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      debugShowCheckedModeBanner: false,
      theme: AppBarThemeWidget.lightTheme(context),
      darkTheme: AppBarThemeWidget.darkTheme(context),
      initialRoute: "/",
      routes: {
        "/": (context) => YoutubeSearchPage(),
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
        MyRoutes.onboardingpage:(_) => OnBoardingPage(),
        MyRoutes.ListViewExample:(context)=> ListViewExample(),
        MyRoutes.ListViewBuilderExample:(_)=> ListViewBuilderExample(),
        MyRoutes.catalogPage:(_)=>CatalogPage(),
        MyRoutes.youtubeSearchPage:(_)=>YoutubeSearchPage(),
        MyRoutes.videoPlay:(_)=>VideoPlay(data:),
      },
    );
  }
}