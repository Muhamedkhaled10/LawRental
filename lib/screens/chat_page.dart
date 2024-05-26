import 'package:flutter/material.dart';
import 'package:lawrental/widgets/chat_Card.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
              height: 120,
              width: double.infinity,
              color: const Color(0xFF14213D),
              child:const Align(
                alignment: Alignment.bottomCenter,
                child:Text(
                  'Chats',
                  style:
                  TextStyle(color: Colors.white, fontSize: 40,fontWeight: FontWeight.bold,fontFamily: "Unigeo64",decoration: TextDecoration.none),
                ),
              )),
          const Padding(
            padding: const EdgeInsets.only(bottom: 2),
            child: ChatCard(),
          ),
        ],
      ),
    );
  }
}
