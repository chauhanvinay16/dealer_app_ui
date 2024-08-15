import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:xh_dealer/auth/login.dart';
import 'package:xh_dealer/dashbord/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage(),));
    });
  }
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(
        fontSize: 35.0,
      ),
      child: Container(

        child:Center(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 60),
                child: Image.asset('assets/images/xh.png',height: 460,width: 460,),
              ),
              Container(
                child: AnimatedTextKit(
                  animatedTexts: [
                    WavyAnimatedText('XH DEALER'),
                    // WavyAnimatedText('Look at the waves'),
                  ],
                  isRepeatingAnimation: false,
                  onTap: () {
                    print("Tap Event");
                  },
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}
