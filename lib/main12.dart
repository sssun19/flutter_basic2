import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testflutter/main5.dart';
import 'package:testflutter/screen/new_page.dart';

void main() {
  runApp(
    const MaterialApp(
      home: HomeWidget(),
    ),
  );
}

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter에서 화면 이동하기 router',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: TextButton(
          child: const Text('Go to Page'),
          onPressed: () {
            Navigator.push( // pushAndRemoveUntil : 해당 페이지로 이동한 뒤 다시 돌아오지 못함(캐쉬지움, pop불가능) 보통 홈으로 갈 때 이 함수 사용
              context,
              MaterialPageRoute(
                builder: (context) => const NewPage(),
              ),
            );
          },
        ),
      ),
    );
  }
}
