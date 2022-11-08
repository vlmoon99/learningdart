import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:learningdart/constants.dart' as constants;

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(Object context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      //Текст стайлс и цвета должны быть вынесены в тему и вызваны через Theme.of(context)
      //Так же использую .sp на TextStyles для responsive верстки
      const Text(constants.WELCOME_BACK,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27)),
      SizedBox(height: 4.w),
      const Text(constants.LOREM_IPSUM,
          style: TextStyle(fontSize: 18.0, color: Color(0xFF78828A)))
    ]);
  }
}
