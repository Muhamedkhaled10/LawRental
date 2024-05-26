import 'package:flutter/material.dart';
import 'package:lawrental/screens/splash_screen.dart';

void main() => runApp(const LawRental());

class LawRental extends StatelessWidget {
  const LawRental({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        SplashScreen.id : (context) => const SplashScreen()
      },
      initialRoute: SplashScreen.id,
    );
  }
}
