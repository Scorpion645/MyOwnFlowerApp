import 'package:flowerappallbyme/checkout.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Cart.dart';

const BTNgreen = Color.fromARGB(255, 73, 179, 105);
const BTNpink = Color.fromARGB(255, 241, 39, 100);
const appbarGreen = Color.fromARGB(255, 76, 141, 95);

class MyTextField extends StatelessWidget {
  String hintText;
  TextInputType keyboard;
  bool obscuredText;

  MyTextField(
      {required this.hintText,
      required this.keyboard,
      required this.obscuredText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: TextField(
        keyboardType: keyboard,
        obscureText: obscuredText,
        decoration: InputDecoration(
            fillColor: Colors.grey[200],
            filled: true,
            hintText: hintText,
            border: InputBorder.none),
      ),
    );
  }
}

class MySizedBox extends StatelessWidget {
  double height;
  MySizedBox({required this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height);
  }
}

class MyTextButton extends StatelessWidget {
  String myButtonTitle;
  Color buttonColor;

  MyTextButton({required this.buttonColor, required this.myButtonTitle});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        myButtonTitle,
        style: TextStyle(color: Colors.white),
      ),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(buttonColor),
          padding: MaterialStateProperty.all(EdgeInsets.all(12))),
    );
  }
}

class ItemsAndPrice extends StatelessWidget {
  // dynamic numberOfItems;
  // String priceOfItems;

  // ItemsAndPrice({
  //     required this.numberOfItems,
  //     required this.priceOfItems
  //     });

  @override
  Widget build(BuildContext context) {
    final carrrt = Provider.of<Cart>(context);

    return Row(
      children: [
        Stack(
          children: [
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Checkout()));
                },
                icon: Icon(Icons.shopping_cart)),
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                padding: EdgeInsets.all(4),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.amber),
                child: Text('${carrrt.selectedItems.length}'),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 12.0),
          child: Text("\$ ${carrrt.totalPrice}"),
        )
      ],
    );
  }
}
