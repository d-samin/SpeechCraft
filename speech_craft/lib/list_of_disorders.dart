import 'package:flutter/material.dart';
import 'package:speech_craft/main_exercises_screens/main_exercises_for_%D0%A6.dart';
import 'package:speech_craft/main_exercises_screens/main_exercises_for_K.dart';
import 'package:speech_craft/main_exercises_screens/main_exercises_for_L.dart';
import 'package:speech_craft/main_exercises_screens/main_exercises_for_R.dart';
import 'package:speech_craft/main_exercises_screens/main_exercises_for_S.dart';
import 'package:speech_craft/main_exercises_screens/main_exercises_for_SH.dart';


class ListOfDisordersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Color(0xFFDCEEF8),
          ),
          Positioned(
            top: 120,
            left: 20,
            right: 20,
            height: 600,
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF).withOpacity(0.9),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Color(0xFFFFD3B9), width: 2),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Список нарушений речи:',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF123452),
                    ),
                  ),
                  SizedBox(height: 16),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          _buildDisorderButton(context, 'Сонорный звук Р', MainExercisesScreenForR(disorderName: 'Сонорный звук Р',)),
                          _buildDisorderButton(context, 'Щипящий звук С', MainExercisesScreenForS(disorderName: 'Щипящий звук С',)),
                          _buildDisorderButton(context, 'Сонорный звук Л', MainExercisesScreenForL(disorderName: 'Сонорный звук Л',)),
                          _buildDisorderButton(context, 'Щипящий звук Ш', MainExercisesScreenForSH(disorderName: 'Щипящий звук Ш')),
                          _buildDisorderButton(context, 'Аффриката Ц', MainExercisesScreenForTC(disorderName: 'Аффриката Ц',)),
                          _buildDisorderButton(context, 'Глухой звук К', MainExercisesScreenForK(disorderName: 'Глухой звук К',)),
                          // _buildDisorderButton(context, 'Аффриката Дж', MainExercisesScreenForDZH()),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Color(0xFFFFC19C),
        unselectedItemColor: Color(0xFF385381),
        iconSize: 36,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.list, color: Color(0xFF385381)), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.home, color: Color(0xFFFFC19C)), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
    );
  }

  Widget _buildDisorderButton(BuildContext context, String text, Widget screen) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Color(0xFFFFC19C),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Color(0xFFFFD3B9), width: 1.5),
        ),
        child: ListTile(
          title: Text(
            text,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xFF123452),
            ),
          ),
          trailing: Icon(Icons.arrow_forward_ios, color: Color(0xFF123452)),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => screen),
            );
          },
        ),
      ),
    );
  }
}


