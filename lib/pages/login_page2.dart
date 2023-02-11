import 'package:flutter/material.dart';
import 'package:untitled/utils/routes.dart';

class LoginPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 32.0),
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
            const Text(
              "Logistics",
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
            ),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                labelText: "Password",
                hintText: "Enter password",
              ),
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
            ElevatedButton(
              child: Text("Login"),
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
            ),
          ],
        ),
      ),
    );
  }
}
