import 'package:flutter/material.dart'; // Flutterウィジェットが使用可能になる

// アプリが起動した時に、最初に動作する部分
void main() => runApp(MyApp());

/*
// StatelessWidget Sample
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: Center(
            child: Text(
              'Flutter Demo Home Page',
              style: Theme.of(context).textTheme.displaySmall,
            ),
          ),
        ),
      );
}
*/

// StatefulWidget Sample
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

// State<...> ん中身にはWidgetのクラス名を書く
class _MyAppState extends State<MyApp> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  ' You have pushed the button this many times:',
                ),
                Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
        ),
      );
}
