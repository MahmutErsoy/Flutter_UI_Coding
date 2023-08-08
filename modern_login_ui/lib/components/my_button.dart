import 'package:flutter/material.dart';

// ignore: camel_case_types
class my_button extends StatelessWidget {
  const my_button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        padding: const EdgeInsets.symmetric(horizontal: 140, vertical: 25),
        shape: const BeveledRectangleBorder(),
      ),
      onPressed: () {},
      child: const Text(
        "Sign in",
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}
