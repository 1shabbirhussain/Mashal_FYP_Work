import 'package:flutter/material.dart';

import 'LeaveCustomContainer.dart';

class leaveScreen extends StatefulWidget {
  const leaveScreen({super.key});

  @override
  State<leaveScreen> createState() => _leaveScreenState();
}

class _leaveScreenState extends State<leaveScreen> {
  List<Map<String, String>> items = [
    {
      "leave Id": "1",
      "Reason": "write your reason here",
      "Apply Date": "3/2/23",
      "From Date": "22-03-05",
      "To Date": "22-03-10",
      "Type Of Leave": "Sick leave",
      "Status": "Pending",
    },
    {
      "leave Id": "1",
      "Reason": "write your reason here",
      "Apply Date": "3/2/23",
      "From Date": "22-03-05",
      "To Date": "22-03-10",
      "Type Of Leave": "Emergency",
      "Status": "Approved",
    },
    {
      "leave Id": "1",
      "Reason": "write your reason here",
      "Apply Date": "3/2/23",
      "From Date": "22-03-05",
      "To Date": "22-03-10",
      "Type Of Leave": " Sick leave",
      "Status": "rejected",
    },
    {
      "leave Id": "1",
      "Reason": "write your reason here",
      "Apply Date": "3/2/23",
      "From Date": "22-03-05",
      "To Date": "22-03-10",
      "Type Of Leave": " C/L",
      "Status": "Approved",
    },
  ];
  Color customColor = const Color(0xFF29BD89);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: 150,
            child: Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 22, 101, 73),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: const Padding(
                padding: EdgeInsets.only(left: 20, bottom: 20),
                child: Row(
                  children: [
                    Text(
                      'Leave',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Icon(Icons.search),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              top: 90,
              left: 0,
              right: 0,
              bottom: 0,
              child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        LeaveCustomContainer(
                            leaveId: items[index]["leave Id"] ?? "",
                            customColor: customColor,
                            Reason: items[index]["Reason"] ?? "",
                            ApplyDate:
                                items[index]["Apply Date"].toString() ?? " ",
                            FromDate:
                                items[index]["From Date"].toString() ?? " ",
                            ToDate: items[index]["To Date"].toString() ?? " ",
                            TypeOfLeave:
                                items[index]["Type Of Leave"].toString() ?? " ",
                            Status: items[index]["Status"].toString() ?? " ")
                      ],
                    );
                  })),
        ],
      ),
    );
  }
}
