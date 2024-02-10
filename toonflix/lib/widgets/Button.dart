import 'package:flutter/material.dart';

class Button extends StatelessWidget {
// 모든 위젯은 각자 나름대로의 build 메소드를 실행시켜야 함.

  final String text;
  final Color bgColor;
  final Color textColor;

  const Button(
      // 생성자
      {super.key,
      required this.text,
      required this.bgColor,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      // container는 html의 div와 같음
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(45),
      ),
      child: Padding(
          // 생성자 변수들의 값을 미리 알 수 없기 때문에 const가 아님
          padding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 45,
          ),
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          )),
    );
  }
}
