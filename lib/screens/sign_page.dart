import 'package:flutter/material.dart';
import 'package:lawrental/screens/signup_lawyer.dart';
import 'package:lawrental/screens/signup_user.dart';
import 'package:lawrental/widgets/custom_button.dart';
import 'package:lawrental/widgets/textfield_email.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 210,
            width: double.infinity,
            color: const Color(0xFF14213D),
            child: const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Welcome to',
                      style: TextStyle(
                          fontFamily: "Unigeo64",
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          decoration: TextDecoration.none)),
                  Text(
                    '         Lawrental.',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "MADEOkine",
                        fontSize: 48,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.none),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Stack(
            children: [
              CircleAvatar(
                maxRadius: 75,
                minRadius: 50,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.person_rounded,
                    size: 123,
                    color: Color(0xFF565E74),
                  ),
                ),
              ),
              Positioned(
                  right: 11,
                  top: 109,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add_circle_sharp,
                      color: Color(0xFF14213D),
                      size: 36,
                    ),
                  ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50, top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextFieldEmail(
                  height: 49,
                  width: 170,
                  hintText: 'first name',
                ),
                TextFieldEmail(height: 49, width: 170, hintText: 'last name')
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                'Sign up as :',
                style: TextStyle(
                    fontFamily: "Unigeo64",
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF14213D)),
              ),
            ),
          ),
          CustomButton(
              text: 'LAWYER',
              textcolor: Color(0xFF14213D),
              color: Colors.white,
              height: 60,
              width: 348,
          onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignUpLawyer()));
          },
          ),
          SizedBox(height: 5,),
          const Text('OR',
            style: TextStyle(
              fontFamily: "Unigeo64",
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Color(0xFF14213D)),),
          SizedBox(height: 5,),
          CustomButton(
              text: 'USER',
              textcolor: Color(0xFF14213D),
              color: Colors.white,
              height: 60,
              width: 348,
            onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignUpUser()));
            },
          ),
        ],
      ),
    );
  }
}
