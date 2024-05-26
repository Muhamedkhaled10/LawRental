import 'package:flutter/material.dart';
import 'package:lawrental/screens/messages_page.dart';

import '../screens/chat_page.dart';
import 'custom_button.dart';

class CustomCardLawyer extends StatefulWidget {
  const CustomCardLawyer({Key? key}) : super(key: key);

  @override
  State<CustomCardLawyer> createState() => _CustomCardLawyerState();
}

class _CustomCardLawyerState extends State<CustomCardLawyer> {
  int current = -1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        height: 1000,
        child: ListView.builder(
          itemCount: 6,
          itemBuilder: (ctx, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Column(
                children: [
                  Container(
                    height: 165,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 30,
                          color: Colors.grey.withOpacity(.2),
                          spreadRadius: 0,
                          offset: const Offset(20, 20),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      border: Border.all(color: const Color(0xFF14213D)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                maxRadius: 40,
                                minRadius: 30,
                                child: Center(
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.person_rounded,
                                      size: 65,
                                      color: Color(0xFF565E74),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 8),
                                child: Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Muhamed Khaled Muhamed',
                                        style: TextStyle(
                                          fontFamily: "Unigeo64",
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20,
                                          color: Color(0xFF14213D),
                                        ),
                                      ),
                                       SizedBox(
                                          height: 5), // Add some spacing here
                                      Text(
                                        'Cassation lawyer',
                                        style: TextStyle(
                                          fontFamily: "Unigeo64",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 20,
                                          color: Color(0xFF14213D),
                                        ),
                                      ),
                                       SizedBox(
                                          height: 5), // Add some spacing here
                                      Text(
                                        'Alexandria',
                                        style: TextStyle(
                                          fontFamily: "Unigeo64",
                                          fontWeight: FontWeight.w200,
                                          fontSize: 16,
                                          color: Color(0xFF14213D),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    current = index;
                                  });
                                },
                                icon: Icon(
                                  Icons.favorite,
                                  size: 42,
                                  color: current == index
                                      ? Colors.white
                                      : const Color(0xFF14213D),
                                ),
                              ),
                            ],
                          ),
                          CustomButton(
                              text: "Chat",
                              textcolor: Colors.white,
                              color: const Color(0xFF14213D),
                              height: 46,
                              width: 355,
                          onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> const MessagesPage()));
                          },
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
