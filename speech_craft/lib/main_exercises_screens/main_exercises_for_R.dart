import 'package:flutter/material.dart';
import 'package:speech_craft/chatBotScreen.dart';
import 'package:speech_craft/exercises/exercises_for_R/exercises_for_R/exercise1ForR.dart';
import 'package:speech_craft/exercises/exercises_for_R/exercises_for_R/exercise2ForR.dart';
import 'package:speech_craft/exercises/exercises_for_R/exercises_for_R/exercise3ForR%20.dart';
import 'package:speech_craft/exercises/exercises_for_R/exercises_for_R/exercise4ForR.dart';
import 'package:speech_craft/exercises/exercises_for_R/exercises_for_R/exercise5ForR.dart';
import 'package:speech_craft/exercises/exercises_for_R/exercises_for_R/exercise6ForR.dart';
import 'package:speech_craft/patters/patters_for_R/PatternsForR.dart';

class MainExercisesScreenForR extends StatelessWidget {
  final String disorderName;

  MainExercisesScreenForR({required this.disorderName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Color(0xFFDCEEF8),
              ),
            ),
            Positioned(top: 150, right: -45, child: Image.asset('assets/Cloud1.png', width: 250)),
            Positioned(top: 300, left: -5, child: Image.asset('assets/Cloud1.png', width: 300)),
            Positioned(bottom: 90, left: -5, child: Image.asset('assets/Cloud1.png', width: 250)),
            Positioned(bottom: -10, right: -80, child: Image.asset('assets/Cloud1.png', width: 300)),

            // Добавляем кнопку возврата
            Positioned(
              top: 50,
              left: 20,
              right: 20,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PatternsForR()),
                  );
                },
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFC19C),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 8,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0),
                        child: Image.asset('assets/book.png', width: 40, height: 40),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Упражнения на звук Р',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Positioned(
              top: 180, 
              right: 80,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChatBotScreen()), // Переход в чат-бот
                  );
                },
                child: _buildQuestionCircle(),
              ),
            ),


            Positioned(
              top: 200,
              left: 55,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Exercise1ForR()),
                  );
                },
                child: _buildNumberCircle('1', Color(0xFFFC9898)),
              ),
            ),
            Positioned(
              top: 310,
              right: 55,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Exercise2ForR()),
                  );
                },
                child: _buildNumberCircle('2', Color.fromARGB(255, 252, 223, 129)),
              ),
            ),
            Positioned(
              top: 420,
              left: 55,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Exercise3ForR()),
                  );
                },
                child: _buildNumberCircle('3', Color(0xFFFFC19C)),
              ),
            ),
            Positioned(
              top: 540,
              right: 55,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Exercise4ForR()),
                  );
                },
                child: _buildNumberCircle('4', Color(0xFFFA9EA9)),
              ),
            ),
            Positioned(
              top: 640,
              left: 55,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Exercise5ForR()),
                  );
                },
                child: _buildNumberCircle('5', Color.fromARGB(255, 252, 223, 129)),
              ),
            ),
            Positioned(
              top: 740,
              right: 55,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Exercise6ForR()),
                  );
                },
                child: _buildNumberCircle('6', Color.fromARGB(255, 255, 212, 72)),
              ),
            ),
            // Positioned(
            //   top: 180,
            //   right: 80,
            //   child: _buildQuestionCircle(),
            // ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Color(0xFFFFC19C),
        unselectedItemColor: Color(0xFF385381),
        iconSize: 36,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.list, color: Color(0xFF385381)),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Color(0xFFFFC19C)),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
      ),
    );
  }

  Widget _buildNumberCircle(String number, Color color) {
    return Container(
      width: 125,
      height: 125,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          number,
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _buildQuestionCircle() {
    return Container(
      width: 55,
      height: 55,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          '?',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}