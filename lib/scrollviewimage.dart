import 'package:flutter/material.dart';
import 'package:flutter_practicals/imagestring.dart';

class ScrollImge extends StatefulWidget {
  const ScrollImge({super.key});

  @override
  State<ScrollImge> createState() => _ScrollImgeState();
}

class _ScrollImgeState extends State<ScrollImge> {

  Widget ScrollDips(){
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: i2.length,
        itemBuilder: (context,index){
        return Padding(padding: EdgeInsets.all(8.0),
        child: Image(image: AssetImage(i2[index]),
        height: 70,
          width: 70,
          fit: BoxFit.cover,
        ),
        );
      }, ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: ScrollDips(),
    ));
  }
}
