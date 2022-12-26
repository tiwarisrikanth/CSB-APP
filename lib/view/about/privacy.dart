import 'package:csbapp/constant/color_const.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:jiffy/jiffy.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({super.key});

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
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
          "Policy & Liscence",
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
                'CSB MIS Physical Tracking Mobile Application is held with exclusive rights by Central Silk Board of India, \nunder Ministry of Textile. \nPrivacy Policy\nThis Privacy Policy describes CSBs’ policies and procedures on the collection, use and disclosure of your information when you use the Service and tells you about your privacy rights and how the law protects you.\nWe do not use your personal data apart from required read & write permissions to complete functions of data submission for CSB MIS. By using the Service, You agree to the collection and use of information in accordance with this Privacy Policy.\nCollecting and Using Device Data\nTypes of Data Collected\nUsage Data Usage Data is collected automatically when using the Service. When you access the service by or through a mobile device, we may collect certain information automatically, including, but not limited to, the type of mobile device you use, your mobile device unique id, the ip address of your mobile device, your mobile operating system, the type of mobile internet browser you use, unique device identifiers and other diagnostic data.\n \nInformation Collected while Using the Application\nWhile using our application, in order to provide features of our application, we may collect, with your prior permission:\n- Information regarding your location\n- Pictures (Clicked by MIS App: uploaded by user)\n- Device Location\n- Cache\nYou can enable or disable access to this information at any time, through Your Device settings, but it will cause inability to use the application.\nUse of Data\nThe Ministry may use Data for the following purposes:\n- To provide and maintain CSB MIS Application, including to monitor the usage of our Services.\n- To manage your account: to manage your registration as a user of the application. The data you provide can give you access to different functionalities of the service that are available to you as a registered user.\n- To manage your requests: to attend and manage your requests to us.\n- For other purposes: we may use your information for other purposes, such as data analysis, identifying usage trends, determining the effectiveness of our application and to evaluate and improve our functions and your experience.\nDisclosure of Data\nLaw enforcement\nUnder certain circumstances, the board may be required to disclose fetched Data if required to do so by law or in response to valid requests by public authorities (e.g. a court or a government agency).\nOther legal requirements\nThe Company may disclose fetched Data in the good faith belief that such action is necessary to:\n- Comply with a legal obligation\n- Protect and defend the rights or property of the board\n- Prevent or investigate possible wrongdoing in connection with the application\n- Protect the personal safety of Users of the application or the public\n- Protect against legal liability\nSecurity of Your Personal Data\nThe security of fetched data is important to us, but remember that no method of transmission over the internet, or method of electronic storage is 100% secure. While we strive to use commercially acceptable means to protect fetched data, we cannot guarantee its absolute security.\nNon Disclosure by User\nThe user agrees that the aplpication consists of sensitive & Govenrment information & will be held liable to uphold the integrity of norms & will not share via any medium or form to other person apart from designated channel of the Board as defined. \nIntellectual property rights\nAll copy rights, patents & trademarks falling under this application are owned & to be used  by permission of CSB, Ministry of textiles. Above is protected under Jurisdiction of GoI & Indian IT Act.\nTerm of use\nThe unauthorized viewing, sharing, access of application or its data shall be condemened by governing authority.\n For any query/ information/ support contact Admin (Central Silk Board, Bangalore).',
                style: TextStyle(
                  fontFamily: 'PopM',
                  fontSize: 13,
                  color: black,
                ),
              ),
            ),
            SizedBox(
              height: 20,
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
