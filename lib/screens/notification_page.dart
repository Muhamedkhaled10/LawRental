import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          height: 120,
          width: double.infinity,
          color: const Color(0xFF14213D),
          child: const Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              'Notifications',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Unigeo64",
                  decoration: TextDecoration.none),
            ),
          )),
    );
  }
}
