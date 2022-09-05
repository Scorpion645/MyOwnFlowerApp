import 'package:flowerappallbyme/Login.dart';
import 'package:flowerappallbyme/templates.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
const Signup ({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
return Scaffold(
body: Column(children: [
  MySizedBox(height: 80),
  MyTextField(hintText: 'Enter your username', keyboard: TextInputType.emailAddress, obscuredText: false),
  MySizedBox(height: 20),
  MyTextField(hintText: 'Enter your password', keyboard: TextInputType.visiblePassword, obscuredText: true),
  MySizedBox(height: 20),
  MyTextField(hintText: 'Confirm your password', keyboard: TextInputType.visiblePassword, obscuredText: true),
  MySizedBox(
          height: 40,
        ),
        MyTextButton(buttonColor: BTNgreen, myButtonTitle: 'Sign up'),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Already have an accoutn?'),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => Login(),
                      ));
                },
                child: Text(
                  'Log in',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ))
          ],
        )
],),
);
}
}
