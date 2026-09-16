import 'package:flutter/material.dart';
import 'package:flutter_practicals/imagedisplay.dart';
import 'package:flutter_practicals/login.dart';
import 'package:flutter_practicals/stopwatch/stopwatch.dart';
import 'package:flutter_practicals/imagestring.dart';
import 'package:flutter_practicals/imagedisplay.dart';
import 'package:flutter_practicals/scrollviewimage.dart';



void main() {
  runApp(const StopwatchRun());
}

class StopwatchRun extends StatelessWidget {
  const StopwatchRun({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)),
      home: ScrollImge(),
    );
  }
}
