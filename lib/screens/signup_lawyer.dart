import 'package:flutter/material.dart';
import 'package:lawrental/screens/home_page.dart';
import 'package:lawrental/widgets/custom_button.dart';
import 'package:lawrental/widgets/textfield_email.dart';
import 'package:lawrental/widgets/textfield_password.dart';

class SignUpLawyer extends StatefulWidget {
  const SignUpLawyer({Key? key}) : super(key: key);

  @override
  State<SignUpLawyer> createState() => _SignUpLawyerState();
}

class _SignUpLawyerState extends State<SignUpLawyer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 250,
                width: double.infinity,
                color: const Color(0xFF14213D),
              ),
              const Positioned(
                bottom: 50,
                left: -30,
                child: ClipRect(
                  child: Opacity(
                    opacity: 0.3,
                    child: Image(
                      image: AssetImage('assets/lawrentall.png'),
                      height: 150,
                      width: 200,
                    ),
                  ),
                ),
              ),
              const Positioned(
                bottom: 10,
                right: 30,
                child: Text(
                  '         Lawrental.',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "MADEOkine",
                      fontSize: 48,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.none),
                ),
              )
            ],
          ),
          Column(
            children: [
             const SizedBox(
                height: 20,
              ),
              TextFieldEmail(
                height: 49,
                width: 348,
                hintText: 'gender',
              ),
             const SizedBox(
                height: 10,
              ),
              TextFieldEmail(
                height: 49,
                width: 348,
                hintText: 'section',
              ),
              const SizedBox(
                height: 10,
              ),
              TextFieldEmail(
                height: 49,
                width: 348,
                hintText: 'email',
              ),
              const SizedBox(
                height: 10,
              ),
              TextFieldEmail(
                height: 49,
                width: 348,
                hintText: 'phone number',
              ),
              const SizedBox(
                height: 10,
              ),
              TextFieldPassword(
                height: 49,
                width: 348,
                hintText: 'password',
              ),
              const SizedBox(
                height: 60,
              ),
              CustomButton(
                text: 'Sign up',
                textcolor: Color(0xFF14213D),
                color: Colors.white,
                height: 60,
                width: 348,
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomePage()));
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
