import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(Object context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text("Hi, Welcome Back!", style: TextStyle(fontSize: 25.0)),
          SizedBox(height: 10),
          Text("Lorem ipsum dolor sit amet, consectetur",
              style: TextStyle(fontSize: 18.0, color: Color(0xFF78828A)))
        ]);
  }
}
