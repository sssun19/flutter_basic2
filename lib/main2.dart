import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Widget 을 상하좌우로 배치하기'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Body(),
    ),
  ));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal, // 상하 스크롤은 스킵
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          // Row(
          //   mainAxisSize: MainAxisSize.min,
          //   mainAxisAlignment: MainAxisAlignment.start, //column은 center 말고 mainAxisAlignment 로 가운데 정렬 (상하정렬)
          //   // crossAxisAlignment: CrossAxisAlignment.start, //좌우정렬
          //   children: [
          //     Container(
          //       width: 100,
          //       height: 80,
          //       color: Colors.red,
          //       child: Text('Container 1'),
          //     ),
          //     Container(
          //       width: 100,
          //       height: 80,
          //       color: Colors.green,
          //       child: Text('Container 2'),
          //     ),
          //     Container(
          //       width: 100,
          //       height: 80,
          //       color: Colors.blue,
          //       child: Text('Container 3'),
          //     ),
          //   ],
          // ),
          // Container(
          //   width: 300,
          //   height: 120,
          //   child: Text('Container 4'),
          //   color: Colors.grey,
          // )
      
          Container(
            color: Colors.grey,
            width: 100,
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 8), // 상하 스크롤은 vertical
          ),
          Container(
            color: Colors.grey,
            width: 100,
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 8),
          ),
          Container(
            color: Colors.grey,
            width: 100,
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 8),
          ),
          Container(
            color: Colors.grey,
            width: 100,
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 8),
          ),
          Container(
            color: Colors.grey,
            width: 100,
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 8),
          ),
          Container(
            color: Colors.grey,
            width: 100,
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 8),
          ),
          Container(
            color: Colors.grey,
            width: 100,
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 8),
          ),
      
        ],
      ),
    );
  }
}
