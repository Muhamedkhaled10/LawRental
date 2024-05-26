import 'package:flutter/material.dart';
import 'package:lawrental/screens/searchpage.dart';

import '../screens/messages_page.dart';

class ChatCard extends StatelessWidget {
  const ChatCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 600,
          child: ListView.builder(
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 8),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const SearchPage()));
                  },
                  child:  Container(
                    height: 80,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          maxRadius: 30,
                          minRadius: 25,
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.person_rounded,
                              size: 32,
                              color: Color(0xFF565E74),
                            ),
                          ),
                        ),
                        const Padding(
                          padding:  EdgeInsets.only(right: 100,top: 18),
                          child:  Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Muhamed Khaled',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    decoration: TextDecoration.none,
                                    fontFamily: "Unigeo64",
                                    color: Color(0xFF14213D)),
                              ),
                              Text(
                                'are you busy?',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    decoration: TextDecoration.none,
                                    fontFamily: "Unigeo64",
                                    color: Color(0xFF14213D)),
                              )
                            ],
                          ),
                        ),
                         const Text(
                          'yesterday',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.none,
                              fontFamily: "Unigeo64",
                              color: Color(0xFF14213D)),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),


    );
  }
}
