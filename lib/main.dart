import 'package:flutter/material.dart';
import 'package:multistore_app/pages/auth/auth_page.dart';

//import 'pages/splash/splash_page.dart';
import 'utils/light_themes.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: light,
      home: const AuthPage(),
    );
  }
}
