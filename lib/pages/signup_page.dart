import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 32),
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            const Text(
              "Sign Up ",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold
              ),
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
          ],
        ),
      ),
    );
  }
}
