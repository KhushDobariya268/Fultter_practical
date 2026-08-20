import 'package:flutter/material.dart';
import 'package:flutter_practicals/calculater.dart';


class Calculater extends StatefulWidget {
  const Calculater({super.key});

  @override
  State<Calculater> createState() => _CalculaterState();
}

class _CalculaterState extends State<Calculater> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Calculator'),
      ),
      body: Column(
        children: [
            Text("0")
        ],
      ),
    );
    }
}
