import 'package:flutter/material.dart';

class LeaveCustomContainer extends StatelessWidget {
  final String leaveId;
  final String Reason;
  final String ApplyDate;
  final String FromDate;
  final String ToDate;
  final String TypeOfLeave;
  final String Status;
  final Color customColor;
  const LeaveCustomContainer(
      {super.key,
      required this.customColor,
      required this.Reason,
      required this.ApplyDate,
      required this.FromDate,
      required this.ToDate,
      required this.TypeOfLeave,
      required this.Status,
      required this.leaveId});

  @override
  Widget build(BuildContext context) {
    Color customColor = const Color.fromRGBO(41, 189, 137, 1);
    return Container(
        margin: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
        decoration: BoxDecoration(
            color: customColor, borderRadius: BorderRadius.circular(5)),
        height: 110,
        width: double.maxFinite,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
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
                        Text("ID: ${leaveId}"),
                        Text(
                          "Leave: ${TypeOfLeave}",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("Status: ${Status}"),
                      ],
                    ),
                    //------------------R-1------------

                    //------------------R-2------------

                    Column(
                      children: [
                        Text(
                          "Reason: ${Reason} ",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ],
                    ),
                    //------------------R-2------------

                    //------------------R-3------------
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Applied: ${ApplyDate}",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                        Text(
                          " from: ${FromDate}",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                        Text(
                          " To: ${ToDate}",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
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
