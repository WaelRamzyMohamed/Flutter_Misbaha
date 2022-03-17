//*************************************************************
// GDSC Flutter course - session 02 - Thursday, March 13, 2022
// Task 02 - Mesbahaa App
// by\ Wael Ramzy Mohamed, waelramzymohamed@gmail.com
//*************************************************************

import 'package:flutter/material.dart';
import 'package:mesbaha1/screens/misbaha_screen.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Misbaha',
      home: Misbaha(),
    );
  }
}
