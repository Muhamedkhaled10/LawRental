import 'package:flutter/material.dart';
import 'package:lawrental/screens/searchpage.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: double.infinity,
      color: const Color(0xFF14213D),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.only(left: 25,right: 25,top: 20,bottom: 13),
          child: TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFFDDE3EB),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide:  BorderSide.none,
                ),
                hintStyle: const TextStyle(color: Colors.white),
                hintText: 'search in Lawrental.',
                prefixIcon: const Icon(Icons.search),
                prefixIconColor: const Color(0xFF565E74)
            ),
          ),
        ),
      ),
    );
  }
}
