import 'dart:convert';

import 'package:csbapp/constant/api_const.dart';
import 'package:csbapp/constant/color_const.dart';
import 'package:csbapp/view/auth/forgot_pwd.dart';
import 'package:csbapp/view/home/mainsection.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController userIDController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  bool pass = false;

  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: Hero(
                    tag: 'logo',
                    child: Image.asset(
                      'assets/images/logo.png',
                      width: 143,
                    ),
                  ),
                ),
                SizedBox(
                  height: 27,
                ),
                Center(
                  child: Text(
                    "Physical Tracking \n Application",
                    style: TextStyle(
                      color: primaryColor,
                      fontFamily: 'PopM',
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 17,
                ),
                Center(
                  child: Text(
                    "Log In",
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
                  padding: const EdgeInsets.symmetric(
                      horizontal: 28.0, vertical: 19),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "User ID",
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
                            controller: userIDController,
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
                              hintText: "Enter User ID",
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
                        height: 20,
                      ),
                      Text(
                        "Your Password",
                        style: TextStyle(
                          fontSize: 12,
                          letterSpacing: 1.0,
                          color: grey.withOpacity(0.9),
                          fontFamily: "MonS",
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
                              horizontal: 8.0, vertical: 15),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  controller: passwordController,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "MonM",
                                    fontSize: 12,
                                    letterSpacing: 1.0,
                                  ),
                                  decoration: InputDecoration.collapsed(
                                    hintText: "Enter Password",
                                    hintStyle: TextStyle(
                                        color: grey.withOpacity(0.7),
                                        fontFamily: "MonR",
                                        letterSpacing: 1.0,
                                        fontSize: 12),
                                  ),
                                  obscureText: pass == false ? true : false,
                                  obscuringCharacter: '*',
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter password';
                                    }
                                    if (value.length < 6) {
                                      return 'Password must be atleast 6 characters long';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      pass = !pass;
                                    });
                                  },
                                  child: Icon(
                                    pass == false
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: grey.withOpacity(0.6),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Checkbox(
                              activeColor: primaryColor,
                              value: value,
                              onChanged: (bool? val) {
                                setState(() {
                                  value = val!;
                                });
                              }),
                          Text(
                            'Remember me',
                            style: TextStyle(
                                color: black,
                                fontFamily: "MonR",
                                letterSpacing: 1.0,
                                fontSize: 12),
                          ),
                        ],
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
                              Navigator.pushReplacement(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) => MainSection()));
                            },
                            child: SizedBox(
                              height: 50,
                              width: MediaQuery.of(context).size.width / 1.4,
                              child: Center(
                                child: Text(
                                  "Login",
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
                      // Center(
                      //   child: Container(
                      //     width: MediaQuery.of(context).size.width / 2,
                      //     child: TextButton(
                      //       style: ButtonStyle(
                      //         backgroundColor:
                      //             MaterialStateProperty.all(primaryColor),
                      //         shape: MaterialStateProperty.all<
                      //             RoundedRectangleBorder>(
                      //           RoundedRectangleBorder(
                      //             borderRadius: BorderRadius.circular(10.0),

                      //             // side: BorderSide(color: Colors.red),
                      //           ),
                      //         ),
                      //       ),
                      //       onPressed: () async {
                      //   Navigator.pushReplacement(
                      //       context,
                      //       CupertinoPageRoute(
                      //           builder: (context) => MainSection()));
                      // },
                      //       child: Padding(
                      //         padding: const EdgeInsets.all(2.0),
                      //         child: Row(
                      //           mainAxisAlignment: MainAxisAlignment.center,
                      //           children: [
                      //             Padding(
                      //               padding: const EdgeInsets.symmetric(
                      //                   vertical: 10.0),
                      //               child: Text(
                      //                 'Log In',
                      //                 textAlign: TextAlign.center,
                      //                 style: TextStyle(
                      //                   color: white,
                      //                   letterSpacing: 1.0,
                      //                   fontSize: 15,
                      //                   fontWeight: FontWeight.w600,
                      //                 ),
                      //               ),
                      //             ),
                      //           ],
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      // SizedBox(
                      //   height: 27,
                      // ),
                      Center(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: ((context) => ForgotPassword()),
                              ),
                            );
                          },
                          child: Text(
                            "Forgot password?",
                            style: TextStyle(
                              color: Color(0xFF3751FF),
                              fontFamily: 'PopS',
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
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
