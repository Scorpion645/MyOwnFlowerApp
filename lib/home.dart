import 'package:flowerappallbyme/Data.dart';
import 'package:flowerappallbyme/product_detials.dart';
import 'package:flowerappallbyme/templates.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Cart.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final carrrt = Provider.of<Cart>(context);
    return MaterialApp(
        home: Scaffold(
      body: GridView.builder(
          itemCount: items.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 20, crossAxisSpacing: 20),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Details(product: items[index]),));
              },
              child: GridTile(
                
                footer: GridTileBar(
                  leading: Text(
                    '\$ ${items[index].itemPrice}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  title: Text(' '),
                  trailing: IconButton(
                      onPressed: () {
                        carrrt.Add(items[index]);
                      },
                      icon: Icon(
                        Icons.add,
                        color: Colors.green[900],
                      )),
                ),
                child: Material(
                  borderRadius: BorderRadius.circular(24),
                  elevation: 10,
                  shadowColor: Colors.green[100],
                  child: ClipRRect(
                      child: Image.asset(items[index].itemImage),
                      borderRadius: BorderRadius.circular(24)),
                ),
              ),
            );
          }),
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
        backgroundColor: appbarGreen,
        actions: [ItemsAndPrice()],
      ),
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text('Mohamed Abdelnaby'),
                  accountEmail: Text('Scorpion645@gmail.com'),
                  currentAccountPicture: CircleAvatar(
                      foregroundImage: AssetImage('assets/me1.PNG')),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/download2.jpg'),
                          fit: BoxFit.cover)),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                ),
                ListTile(
                  leading: Icon(Icons.shopping_cart),
                  title: Text('Products'),
                ),
                ListTile(
                  leading: Icon(Icons.question_mark),
                  title: Text('About'),
                ),
                ListTile(
                  leading: Icon(Icons.exit_to_app),
                  title: Text('Log out'),
                ),
              ],
              // CircleAvatar(backgroundImage: AssetImage('assets/download2.jpg')),
            ),
            Container(
              child: Text('Developed by Mohamed Abdelnaby @ 2022'),
              margin: EdgeInsets.only(bottom: 10),
            )
          ],
        ),
      ),
    ));
  }
}
