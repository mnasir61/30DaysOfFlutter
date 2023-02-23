import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  num value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Column(
          children: [
            SizedBox(height: 50,),
            Container(
              alignment: Alignment.center,
              child: Text("Counter Application",style: TextStyle(fontSize: 40),),
            ),
            SizedBox(height: 50,),
            Container(
              alignment: Alignment.center,
              child: Text("$value Counted",style: TextStyle(fontSize: 40),),),
            SizedBox(height: 30,),
            ElevatedButton(style: ButtonStyle(),
              child: Text("Increment = +1",style: TextStyle(fontSize: 30),),
              onPressed: (){
                setState(() {
                  value+=1;
                });
              },
            ),
            SizedBox(height: 30,),
            ElevatedButton(style: ButtonStyle(),
              child: Text("Decrement = -1",style: TextStyle(fontSize: 30),),
              onPressed: (){
                setState(() {
                  value-=1;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
