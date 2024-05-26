import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key,
      this.onTap,
      required this.text,
      required this.textcolor,
      required this.color,
      required this.height,
      required this.width});
  final String? text;
  VoidCallback? onTap;
  Color? color;
  Color? textcolor;
  double height;
  double width;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration:
            BoxDecoration(
                border: Border.all(
                  color:const Color(0xFF14213D)
                ),
                borderRadius: BorderRadius.circular(13), color: color),
        height: height,
        width: width,
        child: Center(
            child: Text(
          text!,
          style: TextStyle(
              color: textcolor,
              fontFamily: "Unigeo64",
              fontSize: 20,
              fontWeight: FontWeight.w600,
          decoration: TextDecoration.none),
        )),
      ),
    );
  }
}
