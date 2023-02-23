import 'package:flutter/material.dart';
import 'package:untitled/pages/signUp_screen.dart';
import 'package:untitled/utils/routes.dart';

class LoginScreen extends StatefulWidget {

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    bool changeLogin = false;
    bool changeSignUp = false;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 50, horizontal: 25),
          child: Column(
            children: [
              Text(
                "Hellow There!",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "Automatic identify verification which enable you to verify your identity",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Container(
                height: 400,
                width: 400,
                child: Image.asset(
                  "assets/images/login_image.png",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: (){
                  setState(() async {
                    changeLogin = true;
                    await Future.delayed(Duration(seconds: 1),);
                    Navigator.pushNamed(context, MyRoutes.loginScreenRoute2);
                  });
                },
                child: Container(
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
              ),
              SizedBox(
                height: 25,
              ),
              InkWell(
                onTap: (){
                  setState(()  async {
                    changeSignUp = true;
                    await Future.delayed(Duration(seconds: 1),);
                    Navigator.pushNamed(context, MyRoutes.signUpScreenRoute);
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 60,
                  width: double.infinity,
                  child: Text(
                    "SignUp",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
