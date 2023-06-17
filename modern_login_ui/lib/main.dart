import 'package:flutter/material.dart';
import 'pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light()
          .copyWith(inputDecorationTheme: const InputDecorationTheme(fillColor: Colors.white, filled: true)),
      home: LoginPage(),
    );
  }
}
