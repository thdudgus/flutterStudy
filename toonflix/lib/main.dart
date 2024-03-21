import 'package:flutter/material.dart';
import 'package:toonflix/widgets/Button.dart';
import 'package:toonflix/widgets/currency_card.dart';

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

// StatelessWidget은 build 메소드를 통해 단순히 UI를 출력함.
// StatefulWidget은 상태를 가지고 있음. 상태에 따라 변하게 될 데이터를 UI를 실시간을 반영할 때 사용.

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xff181818),
        body: SingleChildScrollView(
          // scrolling을 하고 싶으면 Padding 대신 SingleChildScrollView로 하면 스크롤 가능.
          //  Padding으로 Column에 속한 걸 감싸주고
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ), // 공백을 넣어줌
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // colsumn의 crossAxisAlignmnet는 가로(수평)
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
                height: 40,
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
              const CurrencyCard(
                name: 'Euro',
                code: 'EUR',
                amount: '6 428',
                icon: Icons.euro_rounded,
                isInverted: false,
                order: 1,
              ),
              const CurrencyCard(
                name: 'BitCoin',
                code: 'BTC',
                amount: '9 785',
                icon: Icons.currency_bitcoin,
                isInverted: true,
                order: 2,
              ),
              const CurrencyCard(
                name: 'Dollar',
                code: 'USD',
                amount: '428',
                icon: Icons.attach_money_outlined,
                isInverted: false,
                order: 3,
              ),
            ],
          ),
        ), // 다른 걸 위에 올리려면 Column을 사용해야 함.
      ),
    );
  }
}
