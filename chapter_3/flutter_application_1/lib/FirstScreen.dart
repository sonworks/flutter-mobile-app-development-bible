import 'package:flutter/material.dart';

// 3.3.1.1 route #1
class Firstscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('FirstScreen')),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
              child: const Text('Open the second route')),
        ),
      );
}
