import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:healthypet/screens/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    Future.delayed(const Duration(seconds: 5)).then((value) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => LoginPage(),
          ),
          (route) => false);
          
    });
     
    return Scaffold(
      body: Stack(children: [
        Image.asset('assets/images/Onboarding Screen (3).jpg')]),
       
    );
    
  }

}
