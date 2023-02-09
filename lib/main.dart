import 'package:flutter/material.dart';
import 'package:untitled/pages/home_page.dart';
void main(){
  runApp(MyApp(),);
}

class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return const MaterialApp(
  title: "Flutter App",
   debugShowCheckedModeBanner: false,
  home:HomePage(),
);
}
}
