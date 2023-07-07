

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:doctengdoc/home/screens/home_screen.dart';
import 'package:doctengdoc/screens/login_screen.dart';
import 'package:firedart/auth/firebase_auth.dart';
import 'package:firedart/auth/user_gateway.dart';
import 'package:flutter/material.dart';

import 'style/style.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen.withScreenFunction(
        backgroundColor: colorAccent,
        splash: 'assets/images/logo.png',
        screenFunction: () async{
          return  LoginScreen();
        },
        splashTransition: SplashTransition.scaleTransition,
        //pageTransitionType: PageTransitionType.scale,
      ),
      bottomSheet: bottomSheetWidget(),
    );
  }

  Widget bottomSheetWidget() {
    return Container(
      width: double.infinity,
      color: colorAccent,
      child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Designed by Philoxenic',
              textAlign: TextAlign.center,
              style: TextStyle(color: colorPrimary)
          )
      ),
    );
  }


}

