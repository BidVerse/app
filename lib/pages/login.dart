import 'package:app/components/button.dart';
import 'package:app/components/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Image.asset('assets/logo.png',
                width: MediaQuery.of(context).size.width / 2),
          ),
          CustomTextField(labelText: 'Username'),
          CustomTextField(labelText: 'Password'),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: SizedBox(
                width: double.infinity,
                child: Button('Login', onPressed: () {})),
          )
        ],
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    ));
  }
}
