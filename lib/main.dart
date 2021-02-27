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
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: AppTheme.primary,
      ),
      home: LoginPage(),
    );
  }
}
