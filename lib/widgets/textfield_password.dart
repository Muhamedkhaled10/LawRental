import 'package:flutter/material.dart';

class TextFieldPassword extends StatefulWidget {
  TextFieldPassword({super.key, this.inputType, this.onChanged, this.hintText,required this.height,required this.width});
  TextInputType? inputType;
  final String? hintText;
  Function(String)? onChanged;
  double height;
  double width;
  @override
  State<TextFieldPassword> createState() => _TextFieldPasswordState();
  bool _obscureText = true;
}

class _TextFieldPasswordState extends State<TextFieldPassword> {
  @override


  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: TextFormField(
        keyboardType: widget.inputType,
        onChanged: widget.onChanged,
        validator: (data) {
          if (data == null || data.isEmpty) {
            return ('Field is Empty');
          }
        },
        obscureText: widget._obscureText,
        decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xFFDDE3EB),
            border: OutlineInputBorder(
                borderSide:const BorderSide(style: BorderStyle.none, width: 0),
                borderRadius: BorderRadius.circular(13.0)),
            hintText:widget.hintText,
            hintStyle: const TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Unigeo64')),
      ),
    );
  }
}
