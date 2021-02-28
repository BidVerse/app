import 'package:app/components/themed_text.dart';
import 'package:flutter/material.dart';

class ContractorInfoPage extends StatelessWidget {
  final String id;
  ContractorInfoPage(this.id);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Hero(
          tag: id,
          child: Image.asset('assets/nooblow.png',
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover),
        ),
        Positioned(
            width: MediaQuery.of(context).size.width,
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Container(
                    height: MediaQuery.of(context).size.height * 0.7,
                    color: Colors.white,
                    child: ThemedText('hey look here\'s some fancy text')),
              ),
            ))
      ],
    ));
  }
}
