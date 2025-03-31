import 'package:flutter/material.dart';

class PatterForS2 extends StatelessWidget {
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
            top: MediaQuery.of(context).size.height * 0.2, 
            left: 20,
            right: 20,
            height: MediaQuery.of(context).size.height * 0.4, 
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
                    'Евсей, Евсей, \nмуку просей',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF123452),
                    ),
                  ),
                  SizedBox(height: 20),
                  Expanded( 
                    child: Container(
                      child: Image.asset('assets/patters/patters_for_S/sieveS.png'),
                    ),
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