import 'package:flutter/material.dart';

class DrawerItems extends StatelessWidget {
  final String title;
  final IconData drawerIcon;
  const DrawerItems({Key? key, required this.title, required this.drawerIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("$title",style: TextStyle(fontSize: 17,color: Colors.white),),
      leading: Icon(drawerIcon,color: Colors.white,),
    );
  }
}
