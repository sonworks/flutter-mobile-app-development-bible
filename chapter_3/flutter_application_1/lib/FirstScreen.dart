import 'package:flutter/material.dart';
import 'package:flutter_application_1/SecondScreen.dart';

// 3.3.1.1 route #1
class Firstscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('The first route')),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondScreen()));
              },
              child: const Text('Open the second route')),
        ),
      );
}
