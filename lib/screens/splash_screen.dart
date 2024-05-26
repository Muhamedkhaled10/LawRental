import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lawrental/screens/login_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static String id = 'SplashScreen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>with SingleTickerProviderStateMixin{
  @override
  void initState(){
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 2),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>const LoginScreen()));
    });
  }
  @override
  void dispose(){
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays: SystemUiOverlay.values);
    super.dispose();
  }
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF14213D),
      body: Center(
        child: Image(image: AssetImage('assets/lawIcon.png'),
        fit: BoxFit.contain,
        height: 161,
        width: 195,),
      ),
    );
  }
}
