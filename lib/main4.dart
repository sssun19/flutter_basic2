import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widget을 겹겹이 쌓아 배치하기'),
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
    return Stack(
      // 맨 마지막 위젯이 화면상 가장 가까이 위치
      children: [
        Container(
          width: 400,
          height: 400,
          color: Colors.black,
        ),
        Container(
          width: 300,
          height: 300,
          color: Colors.red,
        ),
        Container(
          width: 200,
          height: 200,
          color: Colors.blue,
        ),
        // Positioned( // 스택 쌓을 때 포지션 위치 조정하는 위젯
        Align(
          //Align 특이점 : 위젯의 기본 사이즈를 벗어날 수 있다.
          alignment: Alignment(0.5, -0.5),
          child: Container(
            width: 100,
            height: 100,
            color: Colors.green,
            margin: const EdgeInsets.only(left: 20),
          ),
        ),
      ],
    );
  }
}
