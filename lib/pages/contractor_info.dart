import 'package:flutter/material.dart';

class ContractorInfoPage extends StatelessWidget {
  final int index;
  ContractorInfoPage(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Hero(
          tag: index,
          child: Image.asset('assets/nooblow.png',
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover),
        ),
      ],
    ));
  }
}
