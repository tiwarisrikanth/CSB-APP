import 'package:csbapp/constant/color_const.dart';
import 'package:csbapp/view/auth/pwd_reset.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:otp_timer_button/otp_timer_button.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  OtpTimerButtonController controller = OtpTimerButtonController();

  TextEditingController userIDController = TextEditingController();
  TextEditingController otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset(
                    'assets/images/logo.png',
                    height: 120,
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
                    "Forgot Password",
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
                        "User ID or Mobile Number",
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
                        height: 10,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: OtpTimerButton(
                          backgroundColor: primaryColor,
                          controller: controller,
                          onPressed: () {},
                          text: Text('Send OTP'),
                          duration: 60,
                        ),
                      ),
                      Text(
                        "Enter OTP",
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
                            controller: otpController,
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
                              hintText: "Enter OTP",
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
                              Navigator.pushReplacement(
                                context,
                                CupertinoPageRoute(
                                  builder: ((context) => PasswordReset()),
                                ),
                              );
                            },
                            child: SizedBox(
                              height: 50,
                              width: MediaQuery.of(context).size.width / 1.4,
                              child: Center(
                                child: Text(
                                  "Submit",
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
          ),
        ),
      ),
    );
  }
}
