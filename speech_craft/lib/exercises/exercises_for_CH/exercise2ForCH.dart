import 'package:flutter/material.dart';

class Exercise1ForCH extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(color: Color(0xFFDCEEF8)),
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
            top: screenHeight * 0.2,
            left: screenWidth * 0.05,
            right: screenWidth * 0.05,
            height: screenHeight * 0.6,
            child: Container(
              padding: EdgeInsets.all(screenWidth * 0.05),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Color(0xFFFFD3B9), width: 2),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: Image.asset('assets/Ц/ex2forTC.png'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
