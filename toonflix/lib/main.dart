import 'package:flutter/material.dart';
import 'package:toonflix/widgets/Button.dart';

void main() {
  runApp(const App());
}

// const는 수정할 수 없고, 컴파일 전에 그 value를 알 수 있는 변수
// 컴파일러가 더 많은 최적화를 할 수 있음.
// 몇몇 widget은 const, 예를 들어 background color, 따라서 앞에 const를 붙여주면 파란 줄이 사라짐. backgroundColor: const Color(0xff181818)
// 이걸 자동으로 고치려면 setting.json 설정

// 서로를 위, 아래로 두고 싶을 땐 column
// 서로를 옆에 두고 싶을 땐 row

// 이 경우엔 많은 것들이 서로 위, 아래에 있기 때문에 column을 먼저 만들고, 그 안에 row를 만듦.
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xff181818),
        body: Padding(
          //  Padding으로 Column에 속한 걸 감싸주고
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ), // 공백을 넣어줌
          child: Column(
              crossAxisAlignment: CrossAxisAlignment
                  .start, // column의 crossAxisAlignmnet는 가로(수평)
              children: [
                const SizedBox(
                  // sized box를 하나 둔 후 row를 두어 위 공백을 만듦.
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end, // 텍스트를 끝에 배치
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
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
                ),
                const SizedBox(
                  height: 120,
                ),
                Text(
                  'Total Balance', // 해당 text는 column component에 속하기 때문에 center배치가 기본값
                  style: TextStyle(
                      fontSize: 22, color: Colors.white.withOpacity(0.8)),
                ),
                const SizedBox(
                  // Total Balance와 $ 사이에 공백(빈 상자)
                  height: 5,
                ),
                const Text(
                  '\$5 194 482', // 해당 text는 column component에 속하기 때문에 center배치가 기본값
                  style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button(
                        text: "Transfer",
                        bgColor: Colors.amber,
                        textColor: Colors.black),
                    Button(
                        text: "Request",
                        bgColor: Color.fromARGB(255, 55, 55, 55),
                        textColor: Colors.white),
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),

                // Row는 main과 cross축이 있음. main이 가로축, cross는 세로축
                // Column에서 main이 세로축, cross가 가로축
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Wallet",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                      ),
                    ),
                    Text(
                      "View All",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 55, 55, 55),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Euro",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  "6 428",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "EUR",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Icon(
                          Icons.euro_rounded,
                          color: Colors.white,
                          size: 98,
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
        ), // 다른 걸 위에 올리려면 Column을 사용해야 함.
      ),
    );
  }
}
