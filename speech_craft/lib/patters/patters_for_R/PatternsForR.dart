import 'package:flutter/material.dart';
import 'package:speech_craft/patters/patters_for_R/patter_for_R_1.dart';

class PatternsForR extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFFDCEEF8),
            ),
          ),
          Positioned(
            top: 20,
            left: 10,
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Color(0xFF123452)),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Positioned(
            top: 80,
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
                    'Скороговорки на звук Р:',
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
                          _buildPatternButton(context, 'Скороговорка 1', () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => PatternForR1()), // Переход на экран скороговорки 1
                            );
                          }),
                          _buildPatternButton(context, 'Скороговорка 2', () {
                            // Действие для скороговорки 2
                          }),
                          _buildPatternButton(context, 'Скороговорка 3', () {
                            // Действие для скороговорки 3
                          }),
                          _buildPatternButton(context, 'Скороговорка 4', () {
                            // Действие для скороговорки 4
                          }),
                          _buildPatternButton(context, 'Скороговорка 5', () {
                            // Действие для скороговорки 5
                          }),
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

  Widget _buildPatternButton(BuildContext context, String text, VoidCallback onTap) {
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
          onTap: onTap,
        ),
      ),
    );
  }
}