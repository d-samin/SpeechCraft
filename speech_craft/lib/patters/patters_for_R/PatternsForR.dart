import 'package:flutter/material.dart';
import 'package:speech_craft/patters/patters_for_R/patter_for_R_1.dart';
import 'package:speech_craft/patters/patters_for_R/patter_for_R_2.dart';
import 'package:speech_craft/patters/patters_for_R/patter_for_R_3.dart';
import 'package:speech_craft/patters/patters_for_R/patter_for_R_4.dart';

class PatternsForR extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xFFDCEEF8), 
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: screenHeight * 0.05),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                child: IconButton(
                  icon: Icon(Icons.arrow_back_ios, color: Color(0xFF123452)),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            Container(
              width: screenWidth * 0.9,
              height: screenHeight * 0.7,
              padding: EdgeInsets.all(screenWidth * 0.04),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.9),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Color(0xFFFFD3B9), width: 2),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Скороговорки на звук Р:',
                    style: TextStyle(
                      fontSize: screenWidth * 0.06,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF123452),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          _buildPatternButton(context, 'Скороговорка 1', () => _navigate(context, PatternForR1())),
                          _buildPatternButton(context, 'Скороговорка 2', () => _navigate(context, PatternForR2())),
                          _buildPatternButton(context, 'Скороговорка 3', () => _navigate(context, PatternForR3())),
                          _buildPatternButton(context, 'Скороговорка 4', () => _navigate(context, PatternForR4())),
                          _buildPatternButton(context, 'Скороговорка 5', () {}),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Color(0xFFFFC19C),
        unselectedItemColor: Color(0xFF385381),
        iconSize: screenWidth * 0.1,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.list), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
    );
  }

  Widget _buildPatternButton(BuildContext context, String text, VoidCallback onTap) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: screenWidth * 0.02),
      child: Container(
        height: screenWidth * 0.15,
        decoration: BoxDecoration(
          color: Color(0xFFFFC19C),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Color(0xFFFFD3B9), width: 1.5),
        ),
        child: ListTile(
          title: Text(
            text,
            style: TextStyle(
              fontSize: screenWidth * 0.045,
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

  void _navigate(BuildContext context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }
}