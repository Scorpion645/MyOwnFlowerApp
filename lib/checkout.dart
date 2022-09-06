import 'package:flowerappallbyme/templates.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Cart.dart';

class Checkout extends StatelessWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final carrrt = Provider.of<Cart>(context);

    return Scaffold(
      body: ListView.builder(
          itemCount: carrrt.selectedItems.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                title: Text('${carrrt.selectedItems[index].itemName}'),
                subtitle: Text('${carrrt.selectedItems[index].itemPrice}'),
                trailing: IconButton(
                    onPressed: () {
                      carrrt.Remove(carrrt.selectedItems[index]);
                    },
                    icon: Icon(Icons.remove)),
                leading: CircleAvatar(
                    backgroundImage:
                        AssetImage(carrrt.selectedItems[index].itemImage)),
              ),
            );
          }),
      appBar: AppBar(
        title: Text('Checkout'),
        centerTitle: true,
        backgroundColor: appbarGreen,
        actions: [ItemsAndPrice()],
      ),
    );
  }
}
