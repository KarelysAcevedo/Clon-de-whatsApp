import 'package:flutter/material.dart';
import 'btn_nav_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Navigation',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const BottomNavigationScreen(),
    );
  }
}
