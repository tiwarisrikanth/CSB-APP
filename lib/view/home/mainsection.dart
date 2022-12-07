import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:csbapp/constant/color_const.dart';
import 'package:csbapp/view/home/history.dart';
import 'package:csbapp/view/home/home.dart';
import 'package:csbapp/view/home/profile.dart';
import 'package:csbapp/widgets/drawers.dart';
import 'package:fancy_bottom_navigation_2/fancy_bottom_navigation.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainSection extends StatefulWidget {
  const MainSection({super.key});

  @override
  State<MainSection> createState() => _MainSectionState();
}

class _MainSectionState extends State<MainSection> {
  int mainInd = 1;

  onBack(context) {
    return AwesomeDialog(
      context: context,
      dialogType: DialogType.warning,
      animType: AnimType.bottomSlide,
      title: 'Confirmation',
      desc: 'Your Password has been changed successfully for Dynamic ID.',
      btnCancelOnPress: () {},
      btnOkOnPress: () {
        SystemNavigator.pop();
      },
    ).show();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return onBack(context);
      },
      child: Scaffold(
        drawer: DrawerWidgets(),
        appBar: AppBar(
          elevation: 2,
          backgroundColor: primaryColor,
          title: Text(
            "CSB MIS",
            style: TextStyle(
              color: white,
              fontFamily: 'PopM',
              fontWeight: FontWeight.w500,
            ),
          ),
          leading: Builder(builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(Icons.menu),
            );
          }),
          actions: [
            Align(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    color: white,
                    image: DecorationImage(
                      image: ExactAssetImage(
                        'assets/images/newLog.png',
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        body: mainInd == 0
            ? ProfileSection()
            : mainInd == 1
                ? HomeSection()
                : mainInd == 2
                    ? HistorySection()
                    : Container(),
        bottomNavigationBar: Container(
            child: FancyBottomNavigation(
          initialSelection: 1,
          circleColor: primaryColor,
          inactiveIconColor: grey,
          tabs: [
            TabData(iconData: Icons.person, title: "Profile"),
            TabData(iconData: Icons.home, title: "Home"),
            TabData(iconData: Icons.history, title: "History")
          ],
          onTabChangedListener: (position) {
            setState(() {
              mainInd = position;
            });
          },
        )),
      ),
    );
  }
}
