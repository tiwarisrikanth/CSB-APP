import 'package:csbapp/constant/color_const.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:jiffy/jiffy.dart';

class HomeSection extends StatefulWidget {
  const HomeSection({super.key});

  @override
  State<HomeSection> createState() => _HomeSectionState();
}

class _HomeSectionState extends State<HomeSection> {
  //Todays Time
  var dt = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
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
                          fontSize: 15,
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
                          fontSize: 14,
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
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
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
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Current Proposals: ',
                            style: TextStyle(
                              fontFamily: 'PopM',
                              fontSize: 13,
                              color: black,
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            '12',
                            maxLines: 2,
                            style: TextStyle(
                              fontFamily: 'PopB',
                              fontSize: 13,
                              color: primaryColor,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Employee Name: ',
                            style: TextStyle(
                              fontFamily: 'PopM',
                              fontSize: 13,
                              color: black,
                            ),
                          ),
                          Text(
                            'ABC',
                            style: TextStyle(
                              fontFamily: 'PopB',
                              fontSize: 13,
                              color: primaryColor,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Divider(
                color: Colors.black54,
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width / 1.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: primaryColor,
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/icons/preIn.png',
                        height: 55,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'Pre- Inititation Physical Tracking ',
                        maxLines: 2,
                        style: TextStyle(
                          fontFamily: 'PopB',
                          fontSize: 21,
                          color: white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width / 1.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: primaryColor,
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/icons/postIn.png',
                        height: 55,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'Post- Inititation Physical Tracking ',
                        maxLines: 2,
                        style: TextStyle(
                          fontFamily: 'PopB',
                          fontSize: 21,
                          color: white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width / 1.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: primaryColor,
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/icons/proposals.png',
                        height: 55,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'Proposal Status',
                        maxLines: 2,
                        style: TextStyle(
                          fontFamily: 'PopB',
                          fontSize: 21,
                          color: white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
