import 'package:flutter/material.dart';
import 'package:untitled/models/catalog_items.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item})
      :
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print("${item.name} pressed");
        },
        title: Text("${item.name}"),
        leading: Image.network("${item.image}"),
        subtitle: Text("${item.desc}"),
        trailing: Text("\$${item.price}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
      ),
    );
  }
}
