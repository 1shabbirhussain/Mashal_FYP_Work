// import 'package:flutter/material.dart';
// import 'Leave.dart'; // Import your Leave.dart file

// class Dashboard extends StatefulWidget {
//   @override
//   _DashboardState createState() => _DashboardState();
// }

// class _DashboardState extends State<Dashboard> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Dashboard"),
//         elevation: .1,
//         backgroundColor: Color.fromRGBO(78, 169, 132, 1.0),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Container(
//           padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 2.0),
//           child: Column(
//             crossAxisAlignment:
//                 CrossAxisAlignment.start, // Align items to the left
//             children: <Widget>[
//               Padding(
//                 padding: const EdgeInsets.only(top: 20.0), // Add top padding
//                 child: makeDashboardItem("Leave", Icons.access_time_filled, () {
//                   // Navigate to the Leave screen when the "Leave" card is tapped
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => LeaveListingPage()),
//                   );
//                 }),
//               ),
//               SizedBox(height: 20.0), // Increase spacing between items
//               makeDashboardItem("Performance", Icons.assessment, () {
//                 // Navigate to the Performance screen when the "Performance" card is tapped
//               }),
//               SizedBox(height: 20.0), // Increase spacing between items
//               makeDashboardItem("My Team", Icons.group, () {
//                 // Navigate to the My Team screen when the "My Team" card is tapped
//               }),
//               SizedBox(height: 20.0), // Increase spacing between items
//               makeDashboardItem("Feedback", Icons.feedback, () {
//                 // Navigate to the Feedback screen when the "Feedback" card is tapped
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => FeedbackPage()),
//                 );
//               }),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget makeDashboardItem(String title, IconData icon, Function() onTap) {
//     return InkWell(
//       onTap: onTap, // Execute the provided onTap function when tapped
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start, // Align to the left
//         children: <Widget>[
//           Row(
//             mainAxisAlignment: MainAxisAlignment.start, // Align to the left
//             children: <Widget>[
//               Icon(
//                 icon,
//                 size: 40.0,
//                 color: Colors.black,
//               ),
//               SizedBox(width: 10.0), // Add spacing between icon and text
//               Text(
//                 title,
//                 style: TextStyle(
//                   fontSize: 18.0,
//                   color: Colors.black,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// class FeedbackPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Feedback'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             // Logic for submitting feedback
//             showDialog(
//               context: context,
//               builder: (BuildContext context) {
//                 return AlertDialog(
//                   title: Text('Feedback Sent'),
//                   content: Text('Thank you for your feedback!'),
//                   actions: [
//                     TextButton(
//                       onPressed: () {
//                         Navigator.pop(context);
//                       },
//                       child: Text('OK'),
//                     ),
//                   ],
//                 );
//               },
//             );
//           },
//           child: Text('Submit Feedback'),
//         ),
//       ),
//     );
//   }
// }
