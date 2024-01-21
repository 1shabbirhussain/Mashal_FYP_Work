import 'package:flutter/material.dart';

class ResourceCustomContainer extends StatelessWidget {
  final String NameOfResource;
  final String TypeOfResource;
  final String Date;
  final String Description;
  final String Status;

  final Color customColor;
  const ResourceCustomContainer(
      {super.key,
      required this.customColor,
      required this.Status,
      required this.NameOfResource,
      required this.TypeOfResource,
      required this.Date,
      required this.Description});

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
                        Text("Date: ${Date}"),
                        Column(
                          children: [
                            Text(
                              "name: ${NameOfResource}",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text("Type : ${TypeOfResource}"),
                          ],
                        ),
                        Text("Status : ${Status}"),
                      ],
                    ),
                    //------------------R-1------------

                    //------------------R-2------------

                    Column(
                      children: [
                        Text(
                          "Description : ${Description}",
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
