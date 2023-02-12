import 'package:flutter/material.dart';
import 'package:untitled/utils/routes.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool moveButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
          child: Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              Text(
                "Create Account ",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Username",
                  labelStyle: TextStyle(
                    fontSize: 20,
                  ),
                  hintText: "Enter Username",
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Email",
                  labelStyle: TextStyle(
                    fontSize: 20,
                  ),
                  hintText: "Enter Email",
                ),
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: "Password",
                  labelStyle: TextStyle(
                    fontSize: 20,
                  ),
                  hintText: "Enter Password",
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 340,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Email Address",
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(
                      left: 15,
                      bottom: 11,
                      top: 11,
                      right: 15,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25),
              InkWell(
                onTap: () {
                  setState(() async {
                    moveButton = true;
                    await Future.delayed(
                      Duration(seconds: 1),
                    );
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  });
                },
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  width: moveButton?60: 110,
                  height: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    "SignUp",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
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
