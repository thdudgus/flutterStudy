import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Color(0xff181818),
          body: Padding(
            //  Padding으로 Column에 속한 걸 감싸주고
            padding: EdgeInsets.all(10), // 상하좌우 공백을 10씩 넣어줌
            child: Column(children: [
              SizedBox(
                // sized box를 하나 둔 후 row를 두어 위 공백을 만듦.
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end, // 텍스트를 끝에 배치
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "hey, selena",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 34,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "welcome back",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.6),
                          fontSize: 22,
                        ),
                      ),
                    ],
                  )
                ],
              )
            ]),
          ) // 다른 걸 위에 올리려면 Column을 사용해야 함.
          ),
    );
  }
}
