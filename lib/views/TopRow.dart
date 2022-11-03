import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TopRow extends StatelessWidget {
  const TopRow({super.key});

  @override
  Widget build(Object context) {
    return Row(children: [
      Expanded(
        child: Container(
          margin: EdgeInsets.only(left: 5.w),
          alignment: Alignment.centerLeft,
          child: IconButton(
            icon: SvgPicture.asset(
              'images/back_button.svg',
            ),
            onPressed: null,
          ),
        ),
      ),
      const Expanded(
          child: Align(alignment: Alignment.center, child: Text("Sign In"))),
      const Expanded(child: SizedBox())
    ]);
  }
}
