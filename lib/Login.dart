import 'package:flowerappallbyme/templates.dart';
import 'package:flutter/material.dart';

import 'Signup.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 120,
        ),
        MyTextField(
            hintText: 'Enter your username',
            keyboard: TextInputType.emailAddress,
            obscuredText: false),
        MySizedBox(
          height: 20,
        ),
        MyTextField(
            hintText: 'Enter your password',
            keyboard: TextInputType.text,
            obscuredText: true),
        MySizedBox(
          height: 40,
        ),
        MyTextButton(buttonColor: BTNgreen, myButtonTitle: 'Log in'),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Do not have an accoutn?'),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => Signup(),
                      ));
                },
                child: Text(
                  'Sign up',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ))
          ],
        )
      ],
    ));
  }
}
