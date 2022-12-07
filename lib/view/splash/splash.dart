import 'dart:async';

import 'package:csbapp/constant/color_const.dart';
import 'package:csbapp/view/auth/login.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 1), () async {
      await Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => LoginScreen(),
          ),
          (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Welcome",
            style: TextStyle(
              color: secondaryColor,
              fontFamily: 'PopM',
              fontSize: 26,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 17,
          ),
          Text(
            "Central Silk Board \n M.I.S.",
            style: TextStyle(
              color: secondaryColor,
              fontFamily: 'PopS',
              fontSize: 26,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Hero(
              tag: 'logo',
              child: Image.asset(
                'assets/images/logo.png',
                width: 300,
              ),
            ),
          ),
          SizedBox(
            height: 17,
          ),
          Text(
            "Physical Tracking \n Application",
            style: TextStyle(
              color: secondaryColor,
              fontFamily: 'PopS',
              fontSize: 26,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
          elevation: 0,
          child: Container(
            child: Text(
              '© All Rights Reserved. Central Silk Board',
              style: TextStyle(
                color: grey,
                fontFamily: 'PopM',
                fontSize: 11,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          )),
    );
  }
}
