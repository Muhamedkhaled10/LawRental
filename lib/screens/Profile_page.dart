import 'package:flutter/material.dart';
import 'package:lawrental/widgets/custom_button.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Container(
          height: 320,
          width: double.infinity,
          color: const Color(0xFF14213D),
          child: Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 10, right: 80, bottom: 20),
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
                        const Text(
                          'Muhamed Khaled',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 28,
                              color: Colors.white,
                              fontFamily: "Unigeo64",
                              decoration: TextDecoration.none),
                        )
                      ]),
                ),
                CustomButton(
                    text: 'edit Profile',
                    textcolor: Color(0xFF14213D),
                    color: Colors.white,
                    height: 60,
                    width: 348),
                const SizedBox(
                  height: 10,
                ),
                CustomButton(
                    text: 'Log out',
                    textcolor: Color(0xFF9D0101),
                    color: Colors.white,
                    height: 60,
                    width: 348)
              ],
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(right: 322, top: 12),
          child: Text(
            "favorites",
            style: TextStyle(
                fontSize: 24,
                fontFamily: "Unigeo64",
                fontWeight: FontWeight.w600,
                color: Color(0xFF14213D),
                decoration: TextDecoration.none),
          ),
        ),
        const Center(
          child: Column(
            children: [
              SizedBox(height: 30,),
              Image(
                  image: AssetImage(
                'assets/Favorite.png',
              ),height: 192,width: 178,),
              Text(
                'add favorites',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Unigeo64",
                    color: Color(0xFF14213D),
                    decoration: TextDecoration.none),
              )
            ],
          ),
        )
      ]),
    );
  }
}
