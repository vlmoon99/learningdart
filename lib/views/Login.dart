import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:learningdart/views/RoundedTextField.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Login> {
  late String _email;
  late String _password;

  _updateEmail(String text) {
    setState(() => _email = text);
  }

  _updatePassword(String text) {
    setState(() => _password = text);
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: [
        const Text("Email Adress",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        RoundedTextField(UniqueKey(), (text) => _updateEmail(text),
            "Enter your email address", false),
        const Text("Password",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        RoundedTextField(UniqueKey(), (text) => _updatePassword(text),
            "Enter your password", false),
        Row()
      ],
    );
  }
}
