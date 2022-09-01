import 'package:base_project/pages/first_screen.dart';
import 'package:base_project/pages/home.dart';
import 'package:base_project/pages/second_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Viti Flutter Students',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/home': (context) => const HomePage(),
        '/first': (context) => const FirstScreen(),
        '/second':(context) => const SecondScreen(),
      },
      initialRoute: '/home',
    );
  }
}
