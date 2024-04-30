import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widget을 비율로 배치하기'),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Body(),
      ),
    ),
  );
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    // return Row(
    //   children: [
    //     Container(width: 80, height: 200, color: Colors.red,),
    //     Expanded(child: Container(color: Colors.blue, width: 100,),), // 내부의 height 값과 상관 없이 자리를 차지
    //     Flexible(child: Container(color: Colors.red, width: 150,),), // Flexible : 객체 사이즈에 따라 좌우됨
    // Flexible(flex: 1, child: Container(color: Colors.red,)), // Flexible 알아서 영역 비율 배치
    // Flexible(flex: 2, child: Container(color: Colors.blue,)), // flex 옵션으로 비율 지정 가능
    // Flexible(flex: 1, child: Container(color: Colors.green,)),
    // Flexible(flex: 2, child: Container(color: Colors.yellow,)),
    //   ],
    // );
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          color: Colors.red,
          margin: const EdgeInsets.symmetric(vertical: 8),
        ),
        Expanded(
          child: Container(
            width: 100,
            height: 100,
            color: Colors.red,
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    color: Colors.blue,
                    height: 50,
                    width: 50,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                  ),
                  Container(
                    color: Colors.blue,
                    height: 50,
                    width: 50,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                  ),
                  Container(
                    color: Colors.blue,
                    height: 50,
                    width: 50,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                  ),
                  Container(
                    color: Colors.blue,
                    height: 50,
                    width: 50,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                  ),
                  Container(
                    color: Colors.blue,
                    height: 50,
                    width: 50,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                  ),
                  Container(
                    color: Colors.blue,
                    height: 50,
                    width: 50,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                  ),
                  Container(
                    color: Colors.blue,
                    height: 50,
                    width: 50,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                  ),
                  Container(
                    color: Colors.blue,
                    height: 50,
                    width: 50,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.red,
          margin: const EdgeInsets.symmetric(vertical: 8),
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.red,
          margin: const EdgeInsets.symmetric(vertical: 8),
        ),
      ],
    );
  }
}
