import 'dart:async';
import 'package:flutter/material.dart';
import 'package:speech_craft/exercises/exercises_for_R/exercises_for_R_firstCircle/exercise2ForR_1.dart';




class Exercise1ForR_1 extends StatefulWidget {
  @override
  _ExerciseScreenState createState() => _ExerciseScreenState();
}

class _ExerciseScreenState extends State<Exercise1ForR_1> {
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
        _goToNextExercise(); 
      }
    });
  }

  void _goToNextExercise() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Exercise2ForR_1()),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(color: Color(0xFFDCEEF8)),
          ),
          LayoutBuilder(
            builder: (context, constraints) {
              return Stack(
                children: [
                  Positioned(
                    top: 5,
                    left: -15,
                    child: Image.asset('assets/Cloud1.png', width: 600, fit: BoxFit.contain),
                  ),
                ],
              );
            },
          ),
          Positioned(
            top: 40,
            left: 20,
            child: IconButton(
              icon: Icon(Icons.arrow_back, size: 30, color: Colors.black),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Positioned(
            top: 180,
            left: 40,
            right: 40,
            child: Text(
              'Имитируй рычание тигра',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
          Align(
            alignment: Alignment(0.0, 0.1),
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 195, 105).withOpacity(0.6),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Image.asset('assets/tiger_for_R.png', width: 200),
              ),
            ),
          ),
          Positioned(
            bottom: 150,
            left: 0,
            right: 0,
            child: Text(
              '0:$_seconds',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}

