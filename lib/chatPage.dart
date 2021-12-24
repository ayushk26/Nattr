import 'package:flutter/material.dart';
import 'package:nattr/keyboard.dart';
import 'chatBubble.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key, required this.username}) : super(key: key);
  final String username;
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              child: Container(
                child: Image.network(
                  'https://www.w3schools.com/howto/img_avatar.png',
                ),
              ),
            ),
            Text(
              'Andrew Walker',
              style: TextStyle(
                fontSize: 20.0,
              ),
            )
          ],
        )
      ),
      body: ListView(
        children: const [
          ChatBubble(
            text: 'How was the concert?',
            isCurrentUser: false,
          ),
          ChatBubble(
            text: 'Awesome! Next time you gotta come as well!',
            isCurrentUser: true,
          ),
          ChatBubble(
            text: 'Ok, when is the next date?',
            isCurrentUser: false,
          ),
          ChatBubble(
            text: 'They\'re playing on the 20th of November',
            isCurrentUser: true,
          ),
          ChatBubble(
            text: 'Let\'s do it!',
            isCurrentUser: false,
          ),
        ],
      ),
      extendBody:,
    );
  }
}
