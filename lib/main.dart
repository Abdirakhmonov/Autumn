import 'package:flutter/material.dart';
import 'package:lesson_34/homework/first_page.dart';
import 'package:lesson_34/homework/second_page.dart';
import 'amaliyot/firstPage.dart';
import 'amaliyot/homepage.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePageA(),
    );
  }
}
