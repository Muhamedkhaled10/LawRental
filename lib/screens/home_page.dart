import 'package:flutter/material.dart';
import 'package:lawrental/screens/Profile_page.dart';
import 'package:lawrental/widgets/bottom_appbar.dart';
import 'package:lawrental/widgets/custom_card.dart';
import 'package:lawrental/widgets/tabbar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Container(
          height: 150,
          width: double.infinity,
          color: const Color(0xFF14213D),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                  maxRadius: 22,
                  minRadius: 20,
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const ProfilePage()));
                    },
                    icon: const Icon(
                      Icons.person_rounded,
                      size: 28,
                      color: Color(0xFF565E74),
                    ),
                  ),
                ),
                const Text(
                  '          Lawrental.',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "MADEOkine",
                      fontSize: 48,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.none),
                ),
              ],
            ),
          ),
        ),
           const SizedBox(height: 10,),
           DefaultTabController(length: 4, child:TabBarWidget() ),
           CustomCardLawyer(),
      ],
    )

    );
  }
}
