import 'package:app/components/themed_text.dart';
import 'package:app/global/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<String> list = [
    'Flutter Development',
    'Logo Design',
    'Parametric Logo Design',
    'React Development',
    'Project Management'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: list.length,
            itemBuilder: (c, i) {
              return Padding(
                padding: const EdgeInsets.all(12.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    color: AppTheme.backgroundLightGray,
                    child: Column(
                      children: [
                        Image.asset('assets/nooblow.png',
                            height: 250, width: 400, fit: BoxFit.cover),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15),
                          child: SizedBox(
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ThemedText(list[i], type: Type.h2),
                                ThemedText('Ben Swerdlow', type: Type.subtitle)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
              //Text(list[i]);
            }));
  }
}
