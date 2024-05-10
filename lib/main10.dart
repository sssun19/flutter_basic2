import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const assetImagePath = 'assets/images';
const bannerImage = '$assetImagePath/banner.png';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter에서 로컬 데이터 활용하기',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: const Body(),
    ),
  ));
}


class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(bannerImage),
    );
  }
}
