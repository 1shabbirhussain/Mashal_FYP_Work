// import 'package:flutter/material.dart';

// class Leave {}

// class LeaveTitle extends Leave {
//   final String title;

//   LeaveTitle(this.title);
// }

// class LeaveDetails extends Leave {
//   final String date;
//   final String time;
//   final String title;
//   final String subTitle;
//   final String reminderDate;
//   final String reminderTime;

//   LeaveDetails(
//       this.date,
//       this.time,
//       this.title,
//       this.subTitle,
//       this.reminderDate,
//       this.reminderTime,
//       );
// }

// List<Leave> leaveList = [
//   LeaveTitle('April, 2023'),
//   LeaveDetails(
//      ' Friday, 25',
//     '4:20 pm',
//     'Employee 023',
//     'Leave is pending ',
//     'Friday, 25',
//     '4:20 pm',
//   ),
//   LeaveDetails(

//     'Friday, 25',
//     '4:20 pm',
//     'Employee 023',
//     'Leave is pending ',
//     'Friday, 25',
//     '4:20 pm',
//   ),

//   // Add more Leave and LeaveDetails objects as needed
//   LeaveTitle('June, 2023'),
//   LeaveDetails(
//     'Saturday, 26',
//     '4:20 pm',
//     'Employee 023',
//     'Leave is pending ',
//     'Saturday, 26',
//     '4:20 pm',
//   ),
//   LeaveDetails(
//     'Saturday, 26',
//     '4:20 pm',
//     'Employee 023',
//     'Leave is pending ',
//     'Saturday, 26',
//     '4:20 pm',
//   ),
// ];

// class LeaveListingPage extends StatefulWidget {
//   const LeaveListingPage({Key? key}) : super(key: key);

//   @override
//   State<LeaveListingPage> createState() => _LeaveListingPageState();
// }

// class _LeaveListingPageState extends State<LeaveListingPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Leave Form"),
//         elevation: .1,
//         backgroundColor: Color.fromRGBO(78, 169, 132, 1.0),
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           SizedBox(height: 32),
//           SizedBox(height: 16),
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.all(18),
//               child: ListView.builder(
//                 itemCount: leaveList.length,
//                 itemBuilder: (context, index) {
//                   final item = leaveList[index];
//                   if (item is LeaveTitle) {
//                     return Padding(
//                       padding: const EdgeInsets.all(9.0),
//                       child: Text(
//                         item.title,
//                         style: Theme.of(context).textTheme.subtitle1,
//                       ),
//                     );
//                   } else if (item is LeaveDetails) {
//                     return Card(
//                       color: Color.fromRGBO(123, 183, 159, 1.0),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.stretch,
//                         children: [
//                           SizedBox(
//                             height: 100,
//                             child: Row(
//                               children: [
//                                 Expanded(
//                                   flex: 2,
//                                   child: Column(
//                                     mainAxisSize: MainAxisSize.min,
//                                     crossAxisAlignment:
//                                     CrossAxisAlignment.stretch,
//                                     children: [
//                                       SizedBox(height: 16),
//                                       Text(
//                                         item.date,
//                                         style: Theme.of(context)
//                                             .textTheme
//                                             .subtitle2,
//                                       ),
//                                       SizedBox(height: 4),
//                                       Text(
//                                         item.time,
//                                         style: Theme.of(context)
//                                             .textTheme
//                                             .subtitle2,
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 SizedBox(width: 10), // Added space here
//                                 Expanded(
//                                   flex: 4,
//                                   child: Column(
//                                     mainAxisSize: MainAxisSize.min,
//                                     crossAxisAlignment:
//                                     CrossAxisAlignment.stretch,
//                                     children: [
//                                       SizedBox(height: 18),
//                                       Text(
//                                         item.title,
//                                         style: Theme.of(context)
//                                             .textTheme
//                                             .subtitle1!
//                                             .copyWith(color: Colors.white70),
//                                       ),
//                                       SizedBox(height: 4),
//                                       Text(
//                                         item.subTitle,
//                                         style: Theme.of(context)
//                                             .textTheme
//                                             .bodyText2!
//                                             .copyWith(color: Colors.white70),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Container(
//                             color: Colors.grey[300],
//                             margin: EdgeInsets.all(13),
//                             height: 1,
//                           ),
//                           SizedBox(
//                             height: 30,
//                             child: Padding(
//                               padding: const EdgeInsets.symmetric(
//                                 horizontal: 16,
//                                 vertical: 6,
//                               ),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.end,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                   Icon(
//                                     Icons.alarm,
//                                     size: 20,
//                                     color: Colors.black87,
//                                   ),
//                                   SizedBox(width: 5),
//                                   Text(
//                                     '${item.reminderDate} ${item.reminderTime}',
//                                     style: Theme.of(context)
//                                         .textTheme
//                                         .subtitle2!
//                                         .copyWith(color: Colors.black87),
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     );
//                   }
//                   return const SizedBox();
//                 },
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     home: LeaveListingPage(),
//   ));
// }