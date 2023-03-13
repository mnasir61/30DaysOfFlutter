import 'package:flutter/material.dart';


class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Column(
          children: [
            Image.asset("assets/images/onboarding.jpg"),
            SizedBox(height: 300,),
            Text("Manage your daily tasks",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          ],
        ),
      ],
      ),
    );
  }
}
