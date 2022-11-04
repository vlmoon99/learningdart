import 'package:flutter/material.dart';
import 'package:learningdart/views/LabeledCheckBox.dart';
import 'package:learningdart/views/RoundedTextField.dart';
import 'package:sizer/sizer.dart';
import 'package:learningdart/constants.dart' as constants;

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Login> {
  late String _email;
  late String _password;

  _updateEmail(String? text) {
    setState(() => _email = text.toString());
  }

  _updatePassword(String? text) {
    setState(() => _password = text.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(spacing: 2.w, runSpacing: 2.w, children: [
      const Text(constants.EMAIL,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
      RoundedTextField(
          onTextChanged: (text) => _updateEmail(text),
          hintText: constants.ENTER_EMAIL),
      const Text(constants.PASSWORD,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
      RoundedTextField(
          onTextChanged: (text) => _updatePassword(text),
          hintText: constants.ENTER_PASSWORD),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const LabeledCheckbox(
            label: constants.REMEMBER_ME,
          ),
          GestureDetector(
            onTap: null,
            child: const Text(constants.FORGOT_PASSWORD,
                style: TextStyle(fontSize: 18, color: Colors.red)),
          )
        ],
      ),
      SizedBox(height: 1.w),
      Material(
        color: const Color(0xFF980000),
        borderRadius: BorderRadius.circular(25),
        child: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(35),
          child: Container(
            height: 15.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
            ),
            alignment: Alignment.center,
            child: const Text(constants.SIGN_IN,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white)),
          ),
        ),
      ),
    ]);
  }
}
