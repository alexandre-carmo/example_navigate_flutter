import 'package:example_navigate/navigate/home_page.dart';
import 'package:example_navigate/navigate/page1.dart';
import 'package:example_navigate/navigate/page2.dart';
import 'package:example_navigate/navigate/page3.dart';
import 'package:example_navigate/navigate/page4.dart';
import 'package:example_navigate/navigate_params/detail.dart';
import 'package:example_navigate/navigate_params/list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigate page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/params',
      routes: {
        '/': (_) => const HomePage(),
        Page1.routeName: (_) => const Page1(),
        '/page2': (_) => const Page2(),
        '/page3': (_) => const Page3(),
        '/page4': (_) => const Page4(),
        '/params': (_) => const List(),
        '/detail': (_) => const Detail()
      },
    );
  }
}
