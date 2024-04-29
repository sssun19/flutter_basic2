// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(
//     MaterialApp(
//       //flutter 로 앱을 만들 때 가장 기본이 되는 앱 단위
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('This is App bar'),
//           centerTitle: false,
//           actions: [
//             IconButton(
//               icon: Icon(Icons.home),
//               onPressed: () {
//                 print('Tab!');
//               },
//             ),
//             Icon(Icons.play_arrow),
//           ],
//         ),
//         body: TestWidget(),
//         floatingActionButton: FloatingActionButton(
//           child: Icon(Icons.bug_report),
//           onPressed: () {
//             print('Tab! FAB!');
//           },
//         ),
//       ),
//     ),
//   );
// }
//
// class TestWidget extends StatelessWidget {
//   const TestWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Center(
//         child: Text(
//           'Hello, Flutter',
//           style: TextStyle(
//             fontSize: 50,
//             color: Colors.black,
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Study to Container'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: CustomContainer(),
      ),
    ),
  );
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        //double.infinity = 꽉 채움
        height: 300,
        // color: Color(0xFF85D07B),
        padding: EdgeInsets.fromLTRB(10, 12, 10, 12),
        decoration: BoxDecoration( //박스 데코레이션을 사용할 때는 외부 상위 위젯에 color 가 선언되어 있지 않아야 한다.
          color: Color(0xFF85D07B),
          border: Border.all(color: Colors.red, width: 5, style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(100),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.3), offset: Offset(6, 6), blurRadius: 10, spreadRadius: 10),
            BoxShadow(color: Colors.blue.withOpacity(0.3), offset: Offset(-6, -6), blurRadius: 10, spreadRadius: 10),

          ],
        ),
        //내부 콘텐츠와 외곽선의 간격
        // margin: EdgeInsets.symmetric(vertical: 12, horizontal: 10), //컨테이너 자체와 외부 간격
        child: Center(
            child: Container(
                color: Colors.yellow, child: Text('Hello Container'),),),
      ),
    );
  }
}
