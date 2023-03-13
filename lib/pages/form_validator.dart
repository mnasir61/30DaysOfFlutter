import 'package:flutter/material.dart';
import 'package:untitled/utils/routes.dart';

class FormValidator extends StatefulWidget {
  const FormValidator({Key? key}) : super(key: key);

  @override
  State<FormValidator> createState() => _FormValidatorState();
}

class _FormValidatorState extends State<FormValidator> {
  bool changeButton = false;
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(hintText: "Username"),
                validator: (value) {
                  if(value!.isEmpty){
                    return "Username cannot be empty";
                  }return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(hintText: "Password"),
                validator: (value) {
                  if(value!.isEmpty){
                    return "Password cannot be empty";
                  }else if(value.length<6){
                    return "Password must be at least six digits or characters";
                  }
                  return null;
                },
              ),
              ElevatedButton(
                onPressed: ()=>moveToSignupPage(context),
                child: Text("Confirm"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  moveToSignupPage(BuildContext context) {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      Navigator.pushNamed(context, MyRoutes.signUpScreenRoute);
    }
  }
}
