import 'package:flutter/material.dart';
import 'package:untitled/utils/routes.dart';

class LoginScreen2 extends StatefulWidget {
  @override
  State<LoginScreen2> createState() => _LoginScreen2State();
}

class _LoginScreen2State extends State<LoginScreen2> {
  bool changeSignUp = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 50,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 120,
                ),
                Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Welcome back! Login with your credentials"),
                SizedBox(
                  height: 70,
                ),
                Row(
                  children: [
                    Text(
                      "Email",
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 45,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1.25),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: TextFormField(style: TextStyle(fontSize: 17),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter email"
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Row(
                  children: [
                    Text(
                      "Password",
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 45,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1.25),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: TextFormField(style: TextStyle(fontSize: 17),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Enter password"
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 45,
                ),
                Container(
                  height: 60,
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                SizedBox(height: 25,),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    InkWell(onTap: (){
                      setState(() async {
                        changeSignUp = true;
                        await Future.delayed(Duration(seconds: 1),);
                        Navigator.pushNamed(context, MyRoutes.signUpScreenRoute);
                      });
                    },
                        child: Text("SignUp",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
