import 'package:csbapp/constant/color_const.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:jiffy/jiffy.dart';

class AboutApplication extends StatefulWidget {
  const AboutApplication({super.key});

  @override
  State<AboutApplication> createState() => _AboutApplicationState();
}

class _AboutApplicationState extends State<AboutApplication> {
  //Todays Time
  var dt = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: Color(0xFFB81A0D),
        iconTheme: IconThemeData(color: white),
        titleSpacing: 0,
        title: Text(
          "About Application",
          style: TextStyle(
            color: white,
            fontFamily: 'PopS',
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
          textAlign: TextAlign.left,
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            StreamBuilder(
              stream: Stream.periodic(
                const Duration(seconds: 1),
              ),
              builder: (context, snapshot) {
                String tdata = DateFormat("hh:mm:ss a").format(
                  DateTime.now(),
                );
                return Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      Jiffy(dt).yMMMMd,
                      style: const TextStyle(
                        fontFamily: 'PopM',
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      tdata,
                      style: TextStyle(
                        fontFamily: 'PopM',
                        fontSize: 12,
                        color: secondaryColor,
                      ),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                  ],
                );
              },
            ),
            SizedBox(
              height: 35,
            ),
            Hero(
              tag: 'Draw',
              child: Image.asset(
                'assets/images/logo.png',
                height: 160,
                width: 160,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Text(
                'CSB MIS Physical Tracking Mobile Application is exclusively developed for Central Silk Board of India, under Ministry of Textile (GoI). \nThe application is android based. It is meant for view & usage of  CSB personnel only. The usage and rights are held by Central Silk Board of India, under Ministry of Textile (GoI). \n For any query/ information/ support contact Admin (CSB Bangalore).',
                style: TextStyle(
                  fontFamily: 'PopM',
                  fontSize: 13,
                  color: black,
                ),
              ),
            ),
          ],
        ),
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
