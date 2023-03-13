import 'package:flutter/material.dart';
import 'package:untitled/routes/routes.dart';
import 'package:untitled/youtube_search/model/item_data.dart';
import 'package:untitled/youtube_search/screens/widgets/theme_widget.dart';
void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {

  const MyApp({super.key,});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      debugShowCheckedModeBanner: false,
      theme: AppBarThemeWidget.lightTheme(context),
      darkTheme: AppBarThemeWidget.darkTheme(context),
      initialRoute: "/",
      onGenerateRoute: OnGenerateRoute.route,

    );
  }
}