import 'package:flutter/material.dart';
import 'package:speech_craft/chatBotScreen.dart';
// import 'package:speech_craft/DiagnosticPreparation.dart';
import 'package:speech_craft/list_of_disorders.dart';

class IdentifyProblemScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          // Фон
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFFDCEEF8),
            ),
          ),

          // Основной контент
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 1),
                Image.asset('assets/logo.png', width: screenWidth * 0.70),
                SizedBox(height: 30),

                // Кнопка "Пройти тест"
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChatBotScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFFFAB91),
                    padding: EdgeInsets.symmetric(vertical: 50, horizontal: 30),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(70),
                    ),
                  ),
                  child: Text(
                    'Пройти тест на речевые нарушения',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 15),

                // Кнопка "Указать особенности"
                ElevatedButton(
                  onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ListOfDisordersScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFFFAB91),
                    padding: EdgeInsets.symmetric(vertical: 50, horizontal: 30),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(70),
                    ),
                  ),
                  child: Text(
                    'Указать особенности речи и развития',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Облака
          Positioned(top: 10, left: -20, child: Image.asset('assets/Cloud1.png', width: 360)),
          Positioned(top: 130, right: -45 , child: Image.asset('assets/Cloud1.png', width: 200)),
          Positioned(bottom: 50, left: -5, child: Image.asset('assets/Cloud1.png', width: 250)),
          Positioned(bottom: -10, right: -80, child: Image.asset('assets/Cloud1.png', width: 300)),

          // Стрелка назад (перемещена в конец, чтобы быть поверх всех элементов)
          Positioned(
            top: 20, // Отступ сверху
            left: 10, // Отступ слева
            child: SafeArea( // Защита от выреза экрана
              child: IconButton(
                icon: Icon(Icons.arrow_back, size: 30, color: Colors.black),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
