// ignore: file_names
import 'package:flutter/material.dart';

class RoundedTextField extends StatefulWidget {
  final ValueChanged<String?>? onTextChanged;
  final String hintText;
  final bool isPassword;

  const RoundedTextField({
    Key? key,
    this.onTextChanged,
    this.hintText = '',
    this.isPassword = false,
  }) : super(key: key);

  @override
  State<RoundedTextField> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<RoundedTextField> {
  @override
  Widget build(BuildContext context) {
    //Текст стайлс и цвета должны быть вынесены в тему и вызваны через Theme.of(context)
    //Так же использую .sp на TextStyles для responsive верстки

    return TextField(
        obscureText: widget.isPassword,
        decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
              borderSide: BorderSide(color: Color(0xFFECF1F6), width: 1),
            ),
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
              borderSide: BorderSide(color: Color(0xFFECF1F6), width: 1),
            ),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
              borderSide: BorderSide(color: Color(0xFFECF1F6), width: 1),
            ),
            hintText: widget.hintText),
        //Не использую ! без основания , иначе получишь эксепшен и твоя программа упадет
        //ЛУчше пиши через ? и в ?? присваивай значение по умолчанию
        // или делай проверку на нул как в закоментированом примере снизу
        onChanged: (text) => widget.onTextChanged!(text));
  }
  //     onChanged: (text) => widget.onTextChanged != null ? (text) : () {});

}
