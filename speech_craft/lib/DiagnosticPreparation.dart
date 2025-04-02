// import 'package:flutter/material.dart';

// class DiagnosisPreparationScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final double screenWidth = MediaQuery.of(context).size.width;
//     final double screenHeight = MediaQuery.of(context).size.height;
    
//     return Scaffold(
//       body: Stack(
//         children: [
//           Container(
//             width: double.infinity,
//             height: double.infinity,
//             decoration: BoxDecoration(
//               color: Color(0xFFDCEEF8),
//             ),
//           ),
//           Positioned(
//             top: screenHeight * 0.15,
//             left: screenWidth * 0.05,
//             right: screenWidth * 0.05,
//             child: Container(
//               padding: EdgeInsets.all(screenWidth * 0.05),
//               decoration: BoxDecoration(
//                 color: Colors.white.withOpacity(0.9),
//                 borderRadius: BorderRadius.circular(12),
//                 border: Border.all(color: Color(0xFFFFD3B9), width: 2),
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Text(
//                     'Подготовка к диагностике',
//                     style: TextStyle(
//                       fontSize: screenWidth * 0.06,
//                       fontWeight: FontWeight.bold,
//                       color: Color(0xFF123452),
//                     ),
//                   ),
//                   SizedBox(height: screenHeight * 0.02),
//                   _buildInstructionTile(
//                     icon: Icons.volume_off,
//                     text: 'Обеспечьте тишину',
//                     screenWidth: screenWidth,
//                   ),
//                   _buildInstructionTile(
//                     icon: Icons.record_voice_over,
//                     text: 'На экране появятся слова и слоги. Ребенку нужно их повторить.',
//                     screenWidth: screenWidth,
//                   ),
//                   _buildInstructionTile(
//                     icon: Icons.mic,
//                     text: 'На запись выделяется 5 секунд. Ребенку необходимо говорить после диктора.',
//                     screenWidth: screenWidth,
//                   ),
//                   SizedBox(height: screenHeight * 0.03),
//                   Center(
//                     child: ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Color(0xFFFFC19C),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(12),
//                         ),
//                         padding: EdgeInsets.symmetric(
//                           vertical: screenHeight * 0.02,
//                           horizontal: screenWidth * 0.3,
//                         ),
//                       ),
//                       onPressed: () {
//                         // Navigator.push(
//                         //   context,
//                         //   MaterialPageRoute(builder: (context) => NextScreen()),
//                         // );
//                       },
//                       child: Text(
//                         'Далее',
//                         style: TextStyle(
//                           fontSize: screenWidth * 0.05,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildInstructionTile({required IconData icon, required String text, required double screenWidth}) {
//     return Padding(
//       padding: EdgeInsets.symmetric(vertical: screenWidth * 0.02),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Icon(icon, color: Color(0xFF123452), size: screenWidth * 0.07),
//           SizedBox(width: screenWidth * 0.03),
//           Expanded(
//             child: Text(
//               text,
//               style: TextStyle(
//                 fontSize: screenWidth * 0.045,
//                 color: Color(0xFF123452),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }