import 'package:flutter/material.dart';

class PerformanceCustomContainer extends StatelessWidget {
  final String taskOfEmployee;
  final String date;
  final String rankingOfTask;
  final String comments;

  const PerformanceCustomContainer({
    super.key,
    required this.taskOfEmployee,
    required this.date,
    required this.rankingOfTask,
    required this.comments,
  });

  @override
  Widget build(BuildContext context) {
    Color customColor = Color(0xFF29BD89);
    return Container(
        margin: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
        decoration: BoxDecoration(
            color: customColor, borderRadius: BorderRadius.circular(5)),
        height: 110,
        width: double.maxFinite,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //------------------R-1------------
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Date:${date}"),
                        Text(
                          "Task: ${taskOfEmployee}",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("Ranking: ${rankingOfTask}"),
                      ],
                    ),
                    //------------------R-1------------

                    //------------------R-2------------

                    Column(
                      children: [
                        Text(
                          "Coments : ${comments}",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ],
                    ),
                    //------------------R-2------------
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
