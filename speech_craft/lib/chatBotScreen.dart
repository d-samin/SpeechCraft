// import 'package:flutter/material.dart';

// class ChatBotScreen extends StatefulWidget {
//   @override
//   _ChatBotScreenState createState() => _ChatBotScreenState();
// }

// class _ChatBotScreenState extends State<ChatBotScreen> {
//   final TextEditingController _controller = TextEditingController();
//   final List<Map<String, String>> _messages = [];
//   final ScrollController _scrollController = ScrollController();

//   void _sendMessage() {
//     String text = _controller.text.trim();
//     if (text.isNotEmpty) {
//       setState(() {
//         _messages.add({'sender': 'user', 'text': text});
//         _messages.add({'sender': 'bot', 'text': 'Привет! Я пока просто заглушка 🤖'});
//       });
//       _controller.clear();
//       _scrollToBottom(); // Автопрокрутка вниз
//     }
//   }

//   void _scrollToBottom() {
//     Future.delayed(Duration(milliseconds: 100), () {
//       _scrollController.animateTo(
//         _scrollController.position.maxScrollExtent,
//         duration: Duration(milliseconds: 300),
//         curve: Curves.easeOut,
//       );
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     double textSize = screenWidth * 0.05; 

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Чат-бот',
//           style: TextStyle(fontSize: textSize, fontWeight: FontWeight.bold),
//         ),
//         backgroundColor: Color(0xFFDCEEF8),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               controller: _scrollController, 
//               padding: EdgeInsets.all(10),
//               itemCount: _messages.length,
//               itemBuilder: (context, index) {
//                 final message = _messages[index];
//                 bool isUser = message['sender'] == 'user';
//                 return Align(
//                   alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
//                   child: Container(
//                     constraints: BoxConstraints(maxWidth: screenWidth * 0.75), // Ограничиваем ширину
//                     margin: EdgeInsets.symmetric(vertical: 5),
//                     padding: EdgeInsets.all(15),
//                     decoration: BoxDecoration(
//                       color: isUser ? Colors.blue[300] : Colors.grey[300],
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     child: Text(
//                       message['text'] ?? '',
//                       style: TextStyle(fontSize: textSize * 0.9, fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.all(10),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: TextField(
//                     controller: _controller,
//                     style: TextStyle(fontSize: textSize, fontWeight: FontWeight.bold),
//                     decoration: InputDecoration(
//                       hintText: 'Введите сообщение...',
//                       hintStyle: TextStyle(fontSize: textSize * 0.9),
//                       border: OutlineInputBorder(),
//                     ),
//                   ),
//                 ),
//                 SizedBox(width: 10),
//                 IconButton(
//                   icon: Icon(Icons.send, size: textSize * 1.5),
//                   onPressed: _sendMessage,
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }




import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class ChatBotScreen extends StatefulWidget {
  @override
  _ChatBotScreenState createState() => _ChatBotScreenState();
}

class _ChatBotScreenState extends State<ChatBotScreen> {
  final TextEditingController _controller = TextEditingController();
  final List<Map<String, String>> _messages = [];
  final ScrollController _scrollController = ScrollController();

  void _sendMessage() {
    String text = _controller.text.trim();
    if (text.isNotEmpty) {
      setState(() {
        _messages.add({'sender': 'user', 'text': text});
        _messages.add({'sender': 'bot', 'text': 'Привет! Я пока просто заглушка 🤖'});
      });
      _controller.clear();
      _scrollToBottom(); // Автопрокрутка вниз
    }
  }

  void _scrollToBottom() {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double textSize = screenWidth * 0.05;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Чат-бот',
          style: TextStyle(fontSize: textSize, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xFFDCEEF8),
      ),
      body: Column(
        children: [
          Expanded(
            child: NotificationListener<ScrollNotification>(
              onNotification: (scrollNotification) {
                debugPrint('Прокрутка: ${scrollNotification.metrics.pixels}');
                return false;
              },
              child: ListView.builder(
                controller: _scrollController,
                keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                padding: EdgeInsets.all(10),
                itemCount: _messages.length,
                itemBuilder: (context, index) {
                  final message = _messages[index];
                  bool isUser = message['sender'] == 'user';
                  return Align(
                    alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
                    child: Container(
                      constraints: BoxConstraints(maxWidth: screenWidth * 0.75),
                      margin: EdgeInsets.symmetric(vertical: 5),
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: isUser ? Colors.blue[300] : Colors.grey[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        message['text'] ?? '',
                        style: TextStyle(fontSize: textSize * 0.9, fontWeight: FontWeight.bold),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    style: TextStyle(fontSize: textSize, fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                      hintText: 'Введите сообщение...',
                      hintStyle: TextStyle(fontSize: textSize * 0.9),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                IconButton(
                  icon: Icon(Icons.send, size: textSize * 1.5),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

