import 'package:flutter/material.dart';
import 'package:untitled/utils/routes.dart';

class LoginPage2 extends StatefulWidget {
  @override
  State<LoginPage2> createState() => _LoginPage2State();
}

class _LoginPage2State extends State<LoginPage2> {
  String name = "";
  bool changeButton = false;
  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) {
    setState(() async {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(
        Duration(seconds: 1),
      );
      Navigator.pushNamed(context, MyRoutes.loginScreenRoute2);
      setState(() {
        changeButton = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 32.0),
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/Login2_image.jpg",
                  fit: BoxFit.cover,
                ),
                const Text(
                  "Welcome",
                  style: TextStyle(fontSize: 35),
                ),
                Text(
                  "Logistics $name",
                  style: TextStyle(fontSize: 15),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "UserName",
                    hintText: "Enter username",
                  ),
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: "Password",
                    hintText: "Enter password",
                  ),
                  validator: (value) {
                    if(value==null || value.isEmpty){
                      return "Username cannot be empty";
                    }return null;
                  },
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text("Forget password"),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Material(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(changeButton ? 40 : 10),
                  child: InkWell(
                    splashColor: Colors.pink,
                    onTap: () =>moveToHome(context),
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      height: 40,
                      width: changeButton ? 40 : 100,
                      alignment: Alignment.center,
                      child: changeButton
                          ? Text(
                              "Done",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            )
                          : Text(
                              "LogIn",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
