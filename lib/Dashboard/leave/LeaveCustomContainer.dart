import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_page/Dashboard/leave/leave_controller.dart';
import 'package:login_page/models/leave_model.dart';

class LeaveCustomContainer extends StatelessWidget {
  final LeaveModel leaveModel; // Added this line

  // final LeaveController leaveController = Get.find();
  LeaveCustomContainer({
    super.key, required this.leaveModel,
  });

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
                        //ID--------------------------------------------------
                        Text("${leaveModel.id}"),
                        Text(
                        //Leave type--------------------------------------------------
                          "${leaveModel.type}",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        // Status--------------------------------
                        Text("${leaveModel.status}"),
                      ],
                    ),
                    //------------------R-1------------

                    //------------------R-2------------

                    Column(
                      children: [
                        Text(
                          // Reason----------------------------------------
                          "${leaveModel.reason} ",
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
                        // ------------------------DATES-------------------------------
                        Text(
                          "${leaveModel.applyDate}",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                        Text(
                          "${leaveModel.startDate}",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                        Text(
                          "${leaveModel.endDate}",
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
