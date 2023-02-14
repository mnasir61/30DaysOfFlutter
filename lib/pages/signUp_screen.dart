import 'package:flutter/material.dart';
import 'package:untitled/utils/routes.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool changeSignInText = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("SignUp",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        leading: BackButton(color: Colors.black,),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 50),
            child: Column(
              children: [
                SizedBox(
                  height: 60,
                ),
                Text(
                  "SignUp",
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Create an account",
                ),
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
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
                Container(
                  height: 45,
                  width: double.infinity,
                  decoration: BoxDecoration(border: Border.all(width: 1.25), borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: TextFormField(
                      decoration: InputDecoration(hintText: "Enter email", border: InputBorder.none),
                      style: TextStyle(fontSize: 17),
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
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
                Container(
                  height: 45,
                  width: double.infinity,
                  decoration: BoxDecoration(border: Border.all(width: 1.25), borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: TextFormField(
                      decoration: InputDecoration(hintText: "Enter pssword", border: InputBorder.none),
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Row(
                  children: [
                    Text(
                      "Confirm Password",
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
                Container(
                  height: 45,
                  width: double.infinity,
                  decoration: BoxDecoration(border: Border.all(width: 1.25), borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: TextFormField(
                      decoration: InputDecoration(hintText: "Enter confirmation pssword", border: InputBorder.none),
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                ),
                SizedBox(
                  height: 45,
                ),
                Container(
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
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?"),
                    InkWell(
                      onTap: (){
                        setState(() async {
                          changeSignInText = true;
                          await Future.delayed(Duration(seconds: 1),);
                          Navigator.pushNamed(context, MyRoutes.loginScreenRoute2);
                        });
                      },
                      child: Text(
                          "SignIn",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                    ),
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
