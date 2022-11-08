// ignore_for_file: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:learningdart/views/BottomBlock.dart';
import 'package:learningdart/views/Login.dart';
import 'package:learningdart/views/WelcomeText.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(Sizer(builder: (context, orientation, deviceType) {
    return MaterialApp(
        title: 'Flutter Demo',
        //Первая ошибка заключается в том что ты не используешь темы в своем приложении
        //Каждый цвет или стиль текста должен быть в теме , ты можешь посмотрет мой пример с
        // Екстеншенами там есть цвета и текстовые стили. У тебя в коде не должно быть цыета и стили только из темы
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage());
  }));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset:
            false, // avoid resizing widgets while keyboard is up
        appBar: AppBar(
          title: const Text("Sign In", style: TextStyle(color: Colors.black)),
          //Лучше использовать .w , так как в данном случае если экран будет длинный AppBar будет сильно большим
          //А так как шириной устройтсва особо не отличаютсья в размерах .w будет иделаьным вариантом
          toolbarHeight: 30.w,
          centerTitle: true,
          leadingWidth: 25.w,
          leading: IconButton(
            icon: SvgPicture.asset(
              //Все стринги должны быть константами , ни одной стринги не должно быть в приложении в UI части , за
              // исключением когда ты используешь интерполяцию
              'images/back_button.svg',
            ),
            onPressed: null,
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: GestureDetector(
            // touch anywhere to hide keyboard
            behavior: HitTestBehavior.opaque,
            onTap: () {
              FocusScope.of(context).requestFocus(FocusNode());
            },
            child: Padding(
              //Нунжо использовать .w на паддингах для responsive верстки
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const WelcomeText(),
                  SizedBox(height: 10.w),
                  const Login(),
                  SizedBox(height: 2.w),
                  const BottomBlock()
                ],
                //Ставь запятые после каждой скобочки или же параметра в методе тогда форматинг будет работаь правильно
                // и не будет случаев когда у тебя есть )))))))
              ),
            )));
  }
}
