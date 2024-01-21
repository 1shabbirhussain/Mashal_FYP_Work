import 'package:flutter/material.dart';
import 'PerformanceCustomContainer.dart';

class PerformanceScreen extends StatefulWidget {
  const PerformanceScreen({super.key});

  @override
  State<PerformanceScreen> createState() => _PerformanceScreenState();
}

class _PerformanceScreenState extends State<PerformanceScreen> {
  List<Map<String, String>> items = [
    {
      "Task Of Employee": "task 1",
      "Date": "3/2/23",
      "Ranking Of Task": "prior ",
      "Comments": "write comments here",
    },
    {
      "Task Of Employee": "task 2",
      "Date": "3/2/23",
      "Ranking Of Task": "prior ",
      "Comments": "write comments here",
    },
    {
      "Task Of Employee": "task 3",
      "Date": "3/2/23",
      "Ranking Of Task": "normal",
      "Comments": "write comments here",
    },
    {
      "Task Of Employee": "task 4",
      "Date": "3/2/23",
      "Ranking Of Task": "urgent",
      "Comments": "write comments here",
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
                      'Performance',
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
                        PerformanceCustomContainer(
                          taskOfEmployee:
                              items[index]["Task Of Employee"].toString() ??
                                  " ",
                          date: items[index]["Date"].toString() ?? " ",
                          rankingOfTask:
                              items[index]["Ranking Of Task"].toString() ?? " ",
                          comments: items[index]["Comments"].toString() ?? " ",
                        )
                      ],
                    );
                  })),
        ],
      ),
    );
  }
}
