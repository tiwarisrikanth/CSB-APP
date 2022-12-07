import 'package:csbapp/constant/color_const.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:jiffy/jiffy.dart';
import 'package:lazy_data_table/lazy_data_table.dart';

class HistorySection extends StatefulWidget {
  const HistorySection({super.key});

  @override
  State<HistorySection> createState() => _HistorySectionState();
}

class _HistorySectionState extends State<HistorySection> {
  //Todays Time
  var dt = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 10,
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
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: secondaryColor,
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Tracking Log',
                    style: TextStyle(
                      fontFamily: 'PopS',
                      fontSize: 17,
                      color: black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Spacer(),
                  Icon(
                    Icons.refresh_sharp,
                    color: Colors.green,
                  )
                ],
              ),
            ),
            Expanded(
              child: LazyDataTable(
                rows: 8,
                columns: 7,
                tableDimensions: LazyDataTableDimensions(
                  cellHeight: 50,
                  cellWidth: 100,
                  topHeaderHeight: 50,
                  leftHeaderWidth: 75,
                ),
                topHeaderBuilder: (i) {
                  return Container(
                    color: primaryColor,
                    child: Center(
                      child: Text(
                        i == 0
                            ? "Activity Type"
                            : i == 1
                                ? "Proposals"
                                : i == 2
                                    ? "Beneficiary"
                                    : i == 3
                                        ? "District"
                                        : i == 4
                                            ? "Date & Time"
                                            : i == 5
                                                ? "Status"
                                                : i == 6
                                                    ? "Action"
                                                    : "",
                        style: TextStyle(
                          fontFamily: 'PopM',
                          fontSize: 12,
                          color: white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                },
                leftHeaderBuilder: (i) {
                  int ii = i + 1;
                  return Container(
                    color: white,
                    child: Center(
                      child: Text(
                        ii.toString(),
                        style: TextStyle(
                          fontFamily: 'PopS',
                          fontSize: 14,
                          color: black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                },
                dataCellBuilder: (i, j) => Center(
                  child: Text(
                    "Cell: $i, $j",
                  ),
                ),
                topLeftCornerWidget: Container(
                  color: primaryColor,
                  child: Center(
                    child: Text(
                      "S.No",
                      style: TextStyle(
                        fontFamily: 'PopS',
                        fontSize: 17,
                        color: white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
