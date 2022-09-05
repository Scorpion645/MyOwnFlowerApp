import 'package:flowerappallbyme/templates.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: GridView.builder(
        itemCount: 4,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 20, crossAxisSpacing: 20),
          itemBuilder: (BuildContext context, int index) {
            return GridTile(
              footer: GridTileBar(
                leading: Text('\$ 12.99', style: TextStyle(fontWeight: FontWeight.bold,),),
                title: Text(' '),
                trailing: IconButton(onPressed: (){}, 
                  icon: Icon(Icons.add, color: Colors.green[900],)),
              ),
                child: Material(
                  borderRadius: BorderRadius.circular(24),
                  elevation: 10, shadowColor: Colors.green[100],
                  child: ClipRRect(child: Image.asset('assets/1.webp',),borderRadius: BorderRadius.circular(24)),
                ),
                );
          }),
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: appbarGreen,
        actions: [ItemsAndPrice(numberOfItems: '4', priceOfItems: '114')],
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
