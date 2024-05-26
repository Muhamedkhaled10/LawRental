import 'package:flutter/material.dart';
import 'package:lawrental/widgets/custom_button.dart';
class LawyerProfilePage extends StatefulWidget {
  const LawyerProfilePage({super.key});

  @override
  State<LawyerProfilePage> createState() => _LawyerProfilePageState();
}

class _LawyerProfilePageState extends State<LawyerProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:Column(children: [
          Container(
          height: 320,
          width: double.infinity,
          color: const Color(0xFF14213D),
         child: Column(
           children: [
             Padding(
              padding: const EdgeInsets.only(right:80,left: 35,top:80 ),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     CircleAvatar(
                         maxRadius: 50,
                         minRadius: 40,
                         child: IconButton(
                           onPressed: () {},
                           icon: const Icon(
                             Icons.person_rounded,
                             size: 60,
                             color: Color(0xFF565E74),
                           ),
                         )),
                     const Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                          Text(
                           'Muhamed Khaled',
                           style: TextStyle(
                               fontWeight: FontWeight.bold,
                               fontSize: 26,
                               color: Colors.white,
                               fontFamily: "Unigeo64",
                               decoration: TextDecoration.none),
                         ),
                         Text(
                           'Cassation lawyer',
                           style:  TextStyle(
                               color: Colors.white,
                               fontWeight: FontWeight.w300,
                               fontFamily: "Unigeo64",
                               fontSize: 16,
                           decoration: TextDecoration.none
                           ),
                         ),
                       ],
                     )
                   ]),
              ),
             const SizedBox(
               height: 60
             ),
             CustomButton(
                 text: 'Chat',
                 textcolor: const Color(0xFF14213D),
                 color: Colors.white,
                 height: 60,
                 width: 348),
           ],
         ),
          )
    ]
    )
    );
  }
}
