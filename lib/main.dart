import 'package:app/pages/home.dart';
import 'package:flutter/material.dart';
import 'pages/login.dart';
import 'global/app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AngelHacks Submission',
      theme: ThemeData(
        primaryColor: AppTheme.primary,
      ),
      // builder: (c, w) => Provider(
      //   create: (c) => Session(),
      //   builder: (c, w) => w,
      //   child: w,
      // ),
      initialRoute: '/login',
      routes: {
        '/home': (context) => HomePage(),
        '/login': (context) => LoginPage(),
      },
    );
  }
}
