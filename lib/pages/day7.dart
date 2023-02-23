import 'package:flutter/material.dart';

class Day7 extends StatefulWidget {
  const Day7({Key? key}) : super(key: key);

  @override
  State<Day7> createState() => _Day7State();
}

class _Day7State extends State<Day7> {
  double width = 200;
  double height = 100;
  double text = 20;
  String? data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40,),
              GestureDetector(
                onTap: (){
                  call();
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text("Click Me",style: TextStyle(color: Colors.white,fontSize: 18),),
                ),
              ),
              Text("Data method call here = $data"),
              SizedBox(height: 300,),
              AnimatedContainer(
                duration: Duration(milliseconds: 1000),
                alignment: Alignment.center,
                height: height,
                width: width,
                child: Text("Focus on me",style: TextStyle(fontSize: text,color: Colors.white),),
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void call(){
    setState(() {
      height+=25;
      width+=25;
      text+=5;
      data="Call method is executed";
    });
  }

double toCalculate(double num1, double num2){
    return num1+num2;
}
}
