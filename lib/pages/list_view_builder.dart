import 'package:flutter/material.dart';
import 'package:untitled/domain/entity/list_view_entity.dart';

class ListViewBuilderExample extends StatelessWidget {
  final data = ListEntity.listData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListViewBuilder"),
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Container(
              height: 45,width: 45,
              child: Image.asset(data[index].image.toString()),
              decoration: BoxDecoration(
              ),
            ),
            trailing: Icon(Icons.person_add),
            title: Text("${data[index].title}"),
            subtitle: Text("Snooker player"),
          );
        },
      ),
    );
  }
}
