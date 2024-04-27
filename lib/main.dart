import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      //flutter 로 앱을 만들 때 가장 기본이 되는 앱 단위
      home: Scaffold(
        appBar: AppBar(
          title: Text('This is App bar'),
          centerTitle: false,
          actions: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                print('Tab!');
              },
            ),
            Icon(Icons.play_arrow),
          ],
        ),
        body: TestWidget(),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.bug_report),
          onPressed: () {
            print('Tab! FAB!');
          },
        ),
      ),
    ),
  );
}

class TestWidget extends StatelessWidget {
  const TestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Text(
          'Hello, Flutter',
          style: TextStyle(
            fontSize: 50,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
