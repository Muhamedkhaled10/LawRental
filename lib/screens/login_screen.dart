import 'package:flutter/material.dart';
import 'package:lawrental/screens/home_page.dart';
import 'package:lawrental/screens/sign_page.dart';
import 'package:lawrental/widgets/custom_button.dart';
import 'package:lawrental/widgets/textfield_email.dart';
import 'package:lawrental/widgets/textfield_password.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
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
            const SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.all(35),
              child: Column(
                children: [
                  TextFieldEmail(
                    hintText: 'email or phone number',
                    height: 60,
                    width: 360,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFieldPassword(hintText: 'password', height: 60, width: 360),
                 const SizedBox(
                    height: 15,
                  ),
                  CustomButton(
                    text: 'log in',
                    color: Color(0xFF14213D),
                    height: 60,
                    width: 360,
                    textcolor: Colors.white,
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomePage()));
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Don’t have an account?',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w200,
                            fontFamily: "Unigeo64",
                            color: Colors.black),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignUpPage()));
                        },
                        child: const Text(
                          ' sign up',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF14213D),
                              fontFamily: "Unigeo64"),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              left: -10,
              child: ClipRRect(
                child: Opacity(opacity: 0.2,
                    child: Image.asset(('assets/lawrentall.png'),width: 375,height: 310,
                    )),
              ),
            ),
          ],
        ),
    );
  }
}
