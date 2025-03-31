import 'dart:async';
import 'package:flutter/material.dart';

class Exercise4ForR extends StatefulWidget {
@override
  _ExerciseScreenState createState() => _ExerciseScreenState();
}

class _ExerciseScreenState extends State<Exercise4ForR> {
  int _seconds = 15;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_seconds > 0) {
        setState(() {
          _seconds--;
        });
      } else {
        _timer?.cancel();
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(color: Color(0xFFDCEEF8)),
            ),
            Positioned(
              top: screenHeight * 0.1,
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: screenWidth * 0.8,
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Отрабатывай слоги, в которых Р звучит твердо, затем удали из них Д',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: screenWidth * 0.06,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          softWrap: true,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: screenHeight * 0.06,
              left: screenWidth * 0.05,
              child: IconButton(
                icon: Icon(Icons.arrow_back, size: screenWidth * 0.08, color: Colors.black),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Align(
              alignment: Alignment(0.0, 0.1),
              child: Container(
                width: screenWidth * 0.7,
                height: screenWidth * 0.7,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 195, 105).withOpacity(0.6),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Image.asset('assets/R/дру, дро, дрэ.png', width: screenWidth * 0.4),
                ),
              ),
            ),
            Positioned(
              bottom: screenHeight * 0.1,
              left: 0,
              right: 0,
              child: Text(
                '0:$_seconds',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: screenWidth * 0.1, fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
