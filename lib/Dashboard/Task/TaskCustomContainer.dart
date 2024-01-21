import 'package:flutter/material.dart';

class TaskCustomContainer extends StatelessWidget {
  final String Task;
  final String Description;
  final String StartDate;
  final String EndDate;
  final String Type;
  final String Status;

  const TaskCustomContainer({
    super.key,
    required this.Task,
    required this.Description,
    required this.StartDate,
    required this.EndDate,
    required this.Type,
    required this.Status,
  });

  @override
  Widget build(BuildContext context) {
    Color customColor = Color(0xFF29BD89);
    
    return Container(
        margin: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
        decoration: BoxDecoration(
            color: customColor, borderRadius: BorderRadius.circular(5)),
        height: 130,
        width: double.maxFinite,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //------------------1-----------------------
              Padding(
                padding: EdgeInsets.only(right: 16, left: 8),
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.cyanAccent,
                ),
              ),
              //------------------1-----------------------

              //------------------container 2-----------------------
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Task: ${Task}",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text("Type: ${Type}"),
                          ],
                        ),
                        Text("Status: ${Status}"),
                      ],
                    ),
                    //------------------R-1------------

                    //------------------R-2------------

                    Column(
                      children: [
                        Text(
                          "Description: ${Description}",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ],
                    ),
                    //------------------R-2------------

                    //------------------R-3------------
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("start: ${StartDate}"),
                        SizedBox(
                          width: 30,
                        ),
                        Text("End: ${EndDate}"),
                      ],
                    )
                    //------------------R-3------------
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
