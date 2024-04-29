import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Widget 을 좌우로 배치하기'),
      ),
      body: Body(),
    ),
  ));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      //child: Column() 상하
      child: Row(
        // mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center, //column은 center 말고 mainAxisAlignment 로 가운데 정렬 (상하정렬)
        crossAxisAlignment: CrossAxisAlignment.center, //좌우정렬
        children: [
          Container(
            width: 100,
            height: 80,
            color: Colors.red,
            child: Text('Container 1'),
          ),
          Container(
            width: 100,
            height: 80,
            color: Colors.green,
            child: Text('Container 2'),
          ),
          Container(
            width: 100,
            height: 80,
            color: Colors.blue,
            child: Text('Container 3'),
          ),
        ],
      ),
    );
  }
}
