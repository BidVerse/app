import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<String> list = ['hey', 'hi', 'ho', 'hum', 'phi', 'fi'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: list.length,
            itemBuilder: (c, i) {
              return Text(list[i]);
            }));
  }
}
