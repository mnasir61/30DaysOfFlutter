import 'package:flutter/material.dart';
import 'package:untitled/utils/routes.dart';

class FormValidation extends StatefulWidget {
  const FormValidation({Key? key}) : super(key: key);

  @override
  State<FormValidation> createState() => _FormValidationState();
}

class _FormValidationState extends State<FormValidation> {
  final _formkey = GlobalKey<FormState>();
  bool executeButton = false;

  moveToLoginPage(BuildContext context) async{
    if(_formkey.currentState!.validate()) {
      setState(() {
        executeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.loginScreenRoute);
      setState(() {
        executeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FormValidation"),
      ),
      body: Form(
        key: _formkey,
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: "Username",
              ),
              validator: (value){
                if(value!.isEmpty){
                  return "Username cannot be empty";
                }
                return null;
              },
            ),
            ElevatedButton(
              onPressed: () => moveToLoginPage(context),
              child: Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
