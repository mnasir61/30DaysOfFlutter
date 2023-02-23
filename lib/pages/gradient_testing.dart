import 'package:flutter/material.dart';

class GradientTesting extends StatefulWidget {
  const GradientTesting({Key? key}) : super(key: key);

  @override
  State<GradientTesting> createState() => _GradientTestingState();
}

class _GradientTestingState extends State<GradientTesting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter,end: Alignment.bottomLeft, colors: [Colors.blue,Colors.deepPurple])
          ),
        ),
      ),
    );
  }
}
