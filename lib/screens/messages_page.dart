import 'package:flutter/material.dart';
import 'package:lawrental/screens/Profile_page.dart';
import 'package:lawrental/widgets/chat_bubble.dart';
import 'package:lawrental/widgets/textfield_email.dart';

import '../model/message_model.dart';

class MessagesPage extends StatefulWidget {
  const MessagesPage({Key? key}) : super(key: key);

  @override
  State<MessagesPage> createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  List<Message> messages = [
    Message('hi', DateTime.now().subtract(const Duration(minutes: 1)), false),
    Message('hi', DateTime.now().subtract(const Duration(minutes: 1)), true),
  ].reversed.toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Column(
                  children: [
                    Container(
                      height: 120,
                      width: double.infinity,
                      color: const Color(0xFF14213D),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                             IconButton(
                              color: Colors.white, onPressed: () {
                                Navigator.pop(context);
                            },
                              icon:const Icon(Icons.arrow_back),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: CircleAvatar(
                                maxRadius: 20,
                                minRadius: 10,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.person_rounded,
                                    size: 25,
                                    color: Color(0xFF565E74),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProfilePage()));
                              },
                              child: const Text('Muhamed Khaled',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Unigeo64",
                                      decoration: TextDecoration.none)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: ChatBubble(
                          color: const Color(0xFF14213D),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: ChatBubble(
                          color: const Color(0xFFDDE3EB),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Icon(Icons.image_rounded,color: Color(0xFF14213D)),
                const Icon(Icons.keyboard_voice_sharp,color: Color(0xFF14213D)),
                Expanded(child: TextFieldEmail(height: 32, width: 306)),
                const Icon(Icons.send,color: Color(0xFF14213D),)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
