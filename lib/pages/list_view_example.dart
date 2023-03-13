import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
class ListViewExample extends StatefulWidget {
  const ListViewExample({Key? key}) : super(key: key);

  @override
  State<ListViewExample> createState() => _ListViewExampleState();
}

class _ListViewExampleState extends State<ListViewExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          ListTile(
            leading: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(color: Colors.blueGrey,shape: BoxShape.circle),
            ),
            title: Text("Robertson"),
            subtitle: Text("Snooker player"),
            trailing: Icon(FontAwesome.adjust),
          ),
        ],
      ),
    );
  }
}
