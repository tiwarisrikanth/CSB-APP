import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../constant/color_const.dart';

class ProfileSection extends StatefulWidget {
  const ProfileSection({super.key});

  @override
  State<ProfileSection> createState() => _ProfileSectionState();
}

class _ProfileSectionState extends State<ProfileSection> {
  TextEditingController newPassword = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(60),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey
                                    .withOpacity(0.2), //color of shadow
                                spreadRadius: 1, //spread radius
                                blurRadius: 2, // blur radius
                                offset:
                                    Offset(0, 2), // changes position of shadow
                                //first paramerter of offset is left-right
                                //second parameter is top to down
                              ),
                              BoxShadow(
                                color: Colors.grey
                                    .withOpacity(0.2), //color of shadow
                                spreadRadius: 1, //spread radius
                                blurRadius: 2, // blur radius
                                offset:
                                    Offset(2, 0), // changes position of shadow
                                //first paramerter of offset is left-right
                                //second parameter is top to down
                              ),
                              //you can set more BoxShadow() here
                            ],
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://images.pexels.com/photos/13019937/pexels-photo-13019937.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=500&w=3000",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Employee ID: ',
                                      style: TextStyle(
                                        fontFamily: 'PopM',
                                        fontSize: 13,
                                        color: black,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Text(
                                        'J1000234423',
                                        maxLines: 2,
                                        style: TextStyle(
                                          fontFamily: 'PopB',
                                          fontSize: 13,
                                          color: primaryColor,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Employee Name: ',
                                      style: TextStyle(
                                        fontFamily: 'PopM',
                                        fontSize: 13,
                                        color: black,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Text(
                                        'ABC',
                                        maxLines: 2,
                                        style: TextStyle(
                                          fontFamily: 'PopB',
                                          fontSize: 13,
                                          color: primaryColor,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'State: ',
                                  style: TextStyle(
                                    fontFamily: 'PopM',
                                    fontSize: 13,
                                    color: black,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Text(
                                    'Jammu & Kashmir',
                                    maxLines: 2,
                                    style: TextStyle(
                                      fontFamily: 'PopB',
                                      fontSize: 13,
                                      color: primaryColor,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {
                            showModalBottomSheet<void>(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              context: context,
                              builder: (BuildContext context) {
                                return Padding(
                                  padding: MediaQuery.of(context).viewInsets,
                                  child: _changePassword(),
                                );
                              },
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: primaryColor,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Change Password',
                                maxLines: 2,
                                style: TextStyle(
                                  fontFamily: 'PopM',
                                  fontSize: 13,
                                  color: white,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    color: secondaryColor,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Department: ',
                                    style: TextStyle(
                                      fontFamily: 'PopM',
                                      fontSize: 10,
                                      color: black,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Text(
                                      'Sericulture',
                                      maxLines: 2,
                                      style: TextStyle(
                                        fontFamily: 'PopB',
                                        fontSize: 11,
                                        color: primaryColor,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 5),
                          Expanded(
                            child: Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Office Address: ',
                                    style: TextStyle(
                                      fontFamily: 'PopM',
                                      fontSize: 10,
                                      color: black,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Text(
                                      '112, ABC,XYZ, Jammu and Kashmir - 123123',
                                      maxLines: 3,
                                      style: TextStyle(
                                        fontFamily: 'PopB',
                                        fontSize: 8,
                                        color: primaryColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Current Proposals: ',
                                    style: TextStyle(
                                      fontFamily: 'PopM',
                                      fontSize: 10,
                                      color: black,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Text(
                                      '12',
                                      maxLines: 2,
                                      style: TextStyle(
                                        fontFamily: 'PopB',
                                        fontSize: 11,
                                        color: primaryColor,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 5),
                          Expanded(
                            child: Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Designation:: ',
                                    style: TextStyle(
                                      fontFamily: 'PopM',
                                      fontSize: 10,
                                      color: black,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Text(
                                      'DoS',
                                      maxLines: 3,
                                      style: TextStyle(
                                        fontFamily: 'PopB',
                                        fontSize: 8,
                                        color: primaryColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Container(
          margin: EdgeInsets.only(bottom: 10),
          child: Padding(
            padding: const EdgeInsets.only(right: 17.0),
            child: Text(
              '©All Rights Reserved. Central Silk Board',
              style: TextStyle(
                color: grey,
                fontFamily: 'PopM',
                fontSize: 11,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.right,
            ),
          ),
        ),
      ),
    );
  }

  _changePassword() {
    return Container(
      height: MediaQuery.of(context).size.height / 1.6,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            height: 5,
            width: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              color: primaryColor,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Physical Tracking \n Application",
                    style: TextStyle(
                      color: primaryColor,
                      fontFamily: 'PopM',
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.cancel,
                    color: Colors.red,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 17,
          ),
          Center(
            child: Text(
              "Reset Password",
              style: TextStyle(
                color: black,
                fontFamily: 'PopS',
                fontSize: 26,
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 17,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 19),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "New Password",
                  style: TextStyle(
                    fontSize: 12,
                    color: grey.withOpacity(0.9),
                    fontFamily: "MonS",
                    letterSpacing: 1.0,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: white,
                      border: Border.all(color: grey.withOpacity(0.6))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 21),
                    child: TextFormField(
                      enabled: true,
                      controller: newPassword,
                      autofillHints: const [AutofillHints.email],
                      inputFormatters: [
                        FilteringTextInputFormatter.deny(RegExp(r'\s')),
                      ],

                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontFamily: "MonM",
                        letterSpacing: 1.0,
                      ),
                      decoration: InputDecoration.collapsed(
                        hintText: "Enter New Password",
                        hintStyle: TextStyle(
                            letterSpacing: 1.0,
                            color: grey.withOpacity(0.6),
                            fontFamily: "MonR",
                            fontSize: 12),
                      ),
                      // validator: (value) =>
                      //     EmailValidator.validate(value!)
                      //         ? null
                      //         : "Please enter a valid email",
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Confirm New Password",
                  style: TextStyle(
                    fontSize: 12,
                    color: grey.withOpacity(0.9),
                    fontFamily: "MonS",
                    letterSpacing: 1.0,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: white,
                      border: Border.all(color: grey.withOpacity(0.6))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 21),
                    child: TextFormField(
                      enabled: true,
                      controller: confirmPassword,
                      autofillHints: const [AutofillHints.email],
                      inputFormatters: [
                        FilteringTextInputFormatter.deny(RegExp(r'\s')),
                      ],

                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontFamily: "MonM",
                        letterSpacing: 1.0,
                      ),
                      decoration: InputDecoration.collapsed(
                        hintText: "Confirm New Password",
                        hintStyle: TextStyle(
                            letterSpacing: 1.0,
                            color: grey.withOpacity(0.6),
                            fontFamily: "MonR",
                            fontSize: 12),
                      ),
                      // validator: (value) =>
                      //     EmailValidator.validate(value!)
                      //         ? null
                      //         : "Please enter a valid email",
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(primaryColor),
                      ),
                      onPressed: () async {
                        AwesomeDialog(
                          context: context,
                          dialogType: DialogType.success,
                          animType: AnimType.bottomSlide,
                          title: 'Confirmation',
                          desc:
                              'Your Password has been changed successfully for Dynamic ID.',
                          btnOkOnPress: () {},
                        ).show();
                      },
                      child: SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width / 1.4,
                        child: Center(
                          child: Text(
                            "Change Password",
                            style: TextStyle(
                              color: white,
                              fontSize: 15,
                              fontFamily: 'MonS',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
