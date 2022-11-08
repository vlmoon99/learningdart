import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:learningdart/constants.dart' as constants;

class BottomBlock extends StatelessWidget {
  const BottomBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      //Текст стайлс и цвета должны быть вынесены в тему и вызваны через Theme.of(context)
      //Так же использую .sp на TextStyles для responsive верстки
      Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
        Text(constants.DONT_HAVE_ACCOUNT,
            style: TextStyle(fontSize: 18, color: Color(0xFF78828A))),
        TextButton(
            onPressed: null,
            child: Text(constants.SIGN_UP,
                style: TextStyle(fontSize: 18, color: Color(0xFF980000))))
      ]),
      Padding(
        //Нунжо использовать .w на паддингах для responsive верстки

        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: const [
            Expanded(
              child: Divider(
                color: Colors.black,
                thickness: 1,
              ),
            ),
            Padding(
              //Нунжо использовать .w на паддингах для responsive верстки

              padding: EdgeInsets.all(8.0),
              child: Text(constants.SIGN_IN_WITH,
                  style: TextStyle(fontSize: 15, color: Color(0xFF78828A))),
            ),
            Expanded(
              child: Divider(
                color: Colors.black,
                thickness: 1,
              ),
            ),
          ],
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          //Все стринги должны быть константами , ни одной стринги не должно быть в приложении в UI части , за
          // исключением когда ты используешь интерполяцию

          SignInImageButton(imageAsset: 'images/google_image.svg'),
          SignInImageButton(imageAsset: 'images/apple_image.svg'),
          SignInImageButton(imageAsset: 'images/facebook_image.svg'),
        ],
      )
    ]);
  }
}

class SignInImageButton extends StatelessWidget {
  final String imageAsset;

  const SignInImageButton({required this.imageAsset, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 20.w,
      height: 20.w,
      child: IconButton(
        icon: SvgPicture.asset(
          imageAsset,
        ),
        onPressed: null,
      ),
    );
  }
}
