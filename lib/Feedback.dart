import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Dashboard(),
  ));
}

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        backgroundColor: Color.fromRGBO(78, 169, 132, 1.0), // Green color
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FeedbackPage()),
            );
          },
          child: Text('Go to Feedback Page'),
        ),
      ),
    );
  }
}

class FeedbackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback'),
        backgroundColor: Color.fromRGBO(78, 169, 132, 1.0), // Green color
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              maxLines: 5,
              decoration: InputDecoration(
                hintText: 'Enter your feedback here...',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Logic for submitting feedback
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Feedback Sent'),
                      content: Text('Thank you for your feedback!'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('OK'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Submit Feedback'),
              style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(78, 169, 132, 1.0), // Green color
              ),
            ),
          ],
        ),
      ),
    );
  }
}