import 'package:flutter/material.dart';

class PatternForR2 extends StatelessWidget {
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
          Positioned(top: 12, right: -45, child: Image.asset('assets/Cloud1.png', width: 400)),
          Positioned(top: 550, left: -5, child: Image.asset('assets/Cloud1.png', width: 350)),
          Positioned(bottom: 5, right: -80, child: Image.asset('assets/Cloud1.png', width: 400)),
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
            top: MediaQuery.of(context).size.height * 0.2, // Изменено значение top
            left: 20,
            right: 20,
            height: MediaQuery.of(context).size.height * 0.4, // Изменено значение height
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Color(0xFFFFD3B9), width: 2),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'На дворе трава,\nна траве дрова',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF123452),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/patters_for_R/firewood.png', width: 100, height: 100),
                      Image.asset('assets/patters_for_R/grass.png', width: 150, height: 100),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // Positioned(
          //   bottom: 50,
          //   left: 50,
          //   right: 50,
          //   child: ElevatedButton(
          //     onPressed: () {
          //       // Действие при нажатии "Далее"
          //     },
          //     style: ElevatedButton.styleFrom(
          //       backgroundColor: Color(0xFFFFC19C),
          //       padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
          //       shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(30),
          //       ),
          //     ),
          //     child: Text(
          //       'Далее',
          //       style: TextStyle(
          //         fontSize: 18,
          //         fontWeight: FontWeight.bold,
          //         color: Color(0xFF123452),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}