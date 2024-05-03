import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

const assetImagePath = 'assets/images';
const bannerImage = '$assetImagePath/banner.png';

void main() {
  runApp(const MaterialApp(
    home: HomeWidget(),
  ));
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      // 핸드폰 기종에 따라 safe area 지정
      child: Scaffold(
        body: ConstraintsWidget(),
      ),
    );
  }
}

class ConstraintsWidget extends StatelessWidget {
  const ConstraintsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   height: 500,
    //   width: 500,
    //   color: Colors.blue,
    //   child: Center(
    // child: Container(
    //   constraints: BoxConstraints.loose( //BoxConstraints 의 tight와 loose 는 부모가 아닌 자식의 요소를 따른다.
    //     Size(200, 200),
    //   ),
    //   color: Colors.red,
    //   // padding: const EdgeInsets.all(8),
    //   child: Container(
    //     margin: const EdgeInsets.all(20),
    //     width: 50,
    //     height: 50,
    //     color: Colors.green,
    //   ),
    // ),

    //     child: OverflowBox( //UnconstraintsBox (제약조건을 받지 않는다.) OverflowBox : overflow가 발생하더라도 제한된 영역 안에서 위젯 사이즈를 잡는 것.
    //       child: Container(
    //         width: 300,
    //         height: 700,
    //         color: Colors.green,
    //       ),
    //     ),
    //   ),
    // );

    return Row(
      children: [
        Expanded(
          child: Container(
            child: Text(
              'Hello world! Hello world! Hello world! Hello world! Hello world! Hello world! Hello world! ',
              style: TextStyle(fontSize: 30),
            ),
            color: Colors.blue,
          ),
        ),
        Flexible(
          child: Container(
            child: Text('Hello world!', style: TextStyle(fontSize: 30),),
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}
