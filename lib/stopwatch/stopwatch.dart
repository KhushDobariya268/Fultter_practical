import 'package:flutter/material.dart';
import 'dart:async';

class StopwatchExample extends StatefulWidget {
  const StopwatchExample({super.key});

  @override
  State<StopwatchExample> createState() => StopwatchExampleState();
}

class StopwatchExampleState extends State<StopwatchExample> {
  int second = 0;
  late Timer timer;
  bool isRunning = false;
  @override
  void initState(){
    super.initState();
    timer = Timer.periodic(Duration(seconds: 1),_onTick);
  }
  @override
  void dispose(){
  timer.cancel();
  super.dispose();
  }

  void _onTick(Timer timer){
    setState(() {
      if(isRunning) {
        second++;
      }
    });
  }
  void _startTimer(){
    setState(() {
      isRunning = true;
    });
  }
  void _stopTimer(){
    setState(() {
      isRunning = false;
    });
  }


  String _secondTOText() => second == 1 ? '1 second' : '$second second';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stopwatch Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(_secondTOText(),
              style: TextStyle(fontSize: 30),
              ),
            ),
            const SizedBox(height: 20,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: _startTimer,
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all<Color>(Colors.green),
                      foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                    ),
                    child: const Text('Start'),
                ),
                const SizedBox(width: 20,),
                ElevatedButton(onPressed: _stopTimer,
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all<Color>(Colors.red),
                    foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                  ),
                  child: const Text('Stop'),
                ),
              ],
            )
          ],
        ),
      )
    );
  }
}
