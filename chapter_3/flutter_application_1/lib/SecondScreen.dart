import 'package:flutter/material.dart';

// 3.3.1.2 route #2
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('The second route')),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('BACK')),
        ),
      );
}
