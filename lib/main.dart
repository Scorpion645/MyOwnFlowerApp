
import 'package:flowerappallbyme/product_detials.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Cart.dart';
import 'Home.dart';
import 'checkout.dart';

void main() {
 runApp(ChangeNotifierProvider(
      create: (context) {
        return Cart();
      },
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}