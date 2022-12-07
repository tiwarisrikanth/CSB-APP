import 'package:csbapp/constant/color_const.dart';
import 'package:csbapp/global/drawer_key.dart';
import 'package:csbapp/view/auth/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerWidgets extends StatefulWidget {
  const DrawerWidgets({super.key});

  @override
  State<DrawerWidgets> createState() => _DrawerWidgetsState();
}

class _DrawerWidgetsState extends State<DrawerWidgets> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width / 1.3,
        color: white,
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    Container(
                      height: 70,
                      decoration: BoxDecoration(
                        color: primaryColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Center(
                          child: Text(
                            "CSB MIS",
                            style: TextStyle(
                              fontFamily: 'PopS',
                              fontSize: 19,
                              color: white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => LoginScreen(),
                            ),
                            (route) => false,
                          );
                        },
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFB81A0D),
                          ),
                          child: Center(
                            child: Text(
                              "Logout",
                              style: TextStyle(
                                fontFamily: 'PopM',
                                fontSize: 19,
                                color: white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "About Application",
                          style: TextStyle(
                            fontFamily: 'PopM',
                            fontSize: 15,
                            color: black,
                          ),
                        ),
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Policy & Liscence",
                          style: TextStyle(
                            fontFamily: 'PopM',
                            fontSize: 15,
                            color: black,
                          ),
                        ),
                      ),
                    ),
                    Divider(),
                  ],
                ),
              ),
            ),
            Image.asset(
              'assets/images/logo.png',
              height: 160,
              width: 160,
            ),
            SizedBox(
              height: 170,
            ),
            Container(
              child: Text(
                "© All Rights Reserved. Central Silk Board",
                style: TextStyle(
                  fontFamily: 'PopR',
                  fontSize: 15,
                  color: black.withOpacity(0.3),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
