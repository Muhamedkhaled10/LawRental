import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
   ChatBubble({super.key,this.color});
Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
          height: 39,
          width: 278,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: color
          ),
          child: const Padding(
            padding:  EdgeInsets.only(right: 25),
            child:  Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  '2.24',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 8,
                      fontWeight: FontWeight.w400),
                )),
          ),

    );
  }
}
