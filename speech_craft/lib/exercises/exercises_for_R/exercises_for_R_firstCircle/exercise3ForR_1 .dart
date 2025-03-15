import 'dart:async';
import 'package:flutter/material.dart';

class Exercise3ForR_1 extends StatefulWidget {
  @override
  _ExerciseScreenState createState() => _ExerciseScreenState();
}

class _ExerciseScreenState extends State<Exercise3ForR_1> {
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
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(color: Color(0xFFDCEEF8)),
          ),

          // Облака
          // Positioned(top: -20, left: -5, child: Image.asset('assets/Cloud1.png', width: 500)),
          LayoutBuilder(
            builder: (context, constraints) {
              // double screenWidth = constraints.maxWidth;
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
          // Positioned(bottom: 150, left: -10, child: Image.asset('assets/Cloud1.png', width: 300)),
          // Positioned(bottom: 60, right: -70, child: Image.asset('assets/Cloud1.png', width: 260)),

          // Кнопка назад
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

          // Текст
          Positioned(
            top: 180,
            left: 40,
            right: 40,
            child: Text(
              'Повтори звуку автомобиля',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),

          // Полупрозрачная карточка
          Align(
            alignment: Alignment(0.0, 0.1), // Смещаем вниз (чем больше Y, тем ниже)
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 195, 105).withOpacity(0.6),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Image.asset('assets/R/car_for_R.png', width: 200),
              ),
            ),
          ),

          // Таймер
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
