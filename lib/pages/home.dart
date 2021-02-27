import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 500,
            child: TextButton(
              onPressed: () {
                print('noobtime');
              },
              child: Text('Hey Jason'),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text('Numero Dos'),
          ),
          CupertinoSearchTextField()
        ],
      ),
    );
  }
}
