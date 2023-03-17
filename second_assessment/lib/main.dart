import 'package:flutter/material.dart';

import 'package:second_assessment/ui/register_page/register_page1.dart';
import 'package:second_assessment/ui/register_page/register_page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegisterPage(),
    );
  }
}
