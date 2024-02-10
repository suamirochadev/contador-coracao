import 'package:contador/page/homepage.dart';
import 'package:contador/page/isempty.dart';
import 'package:contador/page/isfull.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contador do coração',
      initialRoute: '/',
      routes:{
        '/home':(context) => const HomePage(),
        '/isempty':(context) => const IsEmpty(),
        '/isfull':(context) => const IsFull(), 
      },
      debugShowCheckedModeBanner: false,
      home: const HomePage()
    );
  }
}
