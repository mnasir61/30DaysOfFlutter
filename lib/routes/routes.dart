import 'package:flutter/material.dart';
import 'package:untitled/const/page_const.dart';
import 'package:untitled/youtube_search/model/item_data.dart';
import 'package:untitled/youtube_search/screens/video_play.dart';
import 'package:untitled/youtube_search/screens/youtube_search_page.dart';

class OnGenerateRoute {
  static Route<dynamic>? route(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => YoutubeSearchPage());
      case PageConst.videoPlay:{
        if(args is ItemData){
          return MaterialPageRoute(builder: (_) => VideoPlay(item: args,));
        }else{
          return MaterialPageRoute(builder: (_) => ErrorPage());
        }
      }

    }
    return MaterialPageRoute(builder: (_)=>ErrorPage());
  }
}

// class RoutesGenerator{
//   static String onBoardingPage = "/OnBoardingPage";
//   static String signUpPage = "/SignUpPage";
//   static String signInPage = "/SignInPage";
//   static String homePage = "/HomePage";
// }

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Error"),
      ),
      body: Center(
        child: Text(
          "Page not found",
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
