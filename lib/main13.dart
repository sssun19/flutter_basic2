import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:testflutter/screen/new_page.dart';

// PageException 떴던 이유 : go_router 와 dart:js 는 동시에 사용 x

void main() {
  runApp(
    MaterialApp.router(
      routerConfig: GoRouter(
        initialLocation: '/',
        routes: [
          GoRoute(
              path: '/',
              name: 'home',
              builder: (context, _) => const HomeWidget()),
          GoRoute(
            path: '/new',
            name: 'new',
            builder: (context, _) => const NewPage(),
            // routes: [
            //   dynamic link
            // ]
          ),
          GoRoute(
              path: '/new1',
              name: 'new1',
              builder: (context, _) => const NewPage2()),
        ],
      ),
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
          onPressed: () => context.pushNamed('new'),
        ),
      ),
    );
  }
}
