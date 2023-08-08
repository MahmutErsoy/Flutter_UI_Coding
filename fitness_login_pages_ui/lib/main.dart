import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'pages/login_page_splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
          inputDecorationTheme: const InputDecorationTheme(fillColor: Colors.white, filled: true),
          appBarTheme: const AppBarTheme(
              backgroundColor: Colors.white60,
              iconTheme: IconThemeData(color: Colors.black),
              elevation: 0,
              systemOverlayStyle: SystemUiOverlayStyle.dark)),
      home: const SplashScreen(),
    );
  }
}
