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

// // 3.1.3.5 StatefulWidget Sample
// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// // State<...> ん中身にはWidgetのクラス名を書く
// class _MyAppState extends State<MyApp> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) => MaterialApp(
//         title: 'Flutter Demo',
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//         ),
//         home: Scaffold(
//           body: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Text(
//                   ' You have pushed the button this many times:',
//                 ),
//                 Text(
//                   '$_counter',
//                   style: Theme.of(context).textTheme.displaySmall,
//                 ),
//               ],
//             ),
//           ),
//           floatingActionButton: FloatingActionButton(
//             onPressed: _incrementCounter,
//             tooltip: 'Increment',
//             child: Icon(Icons.add),
//           ),
//         ),
//       );
// }

// // 3.2.1.4 マテリアルデザインでレイアウトウィジェットをページに追加
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) => MaterialApp(
//         title: 'Flutter layout demo',
//         home: Scaffold(
//           appBar: AppBar(
//             title: Text('Flutter layout demo'),
//           ),
//           body: Center(
//             child: Text('Hello world'),
//           ),
//         ),
//       );
// }

// // 3.2.1.6 レイアウトウィジェットを追加（非マテリアルデザイン）
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) => Center(
//         child: Text('Hello World', textDirection: TextDirection.ltr),
//       );
// }

// 3.2.1.8 MaterialAppのデザインに近づける
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Center(
          child: Text(
            'Hello World',
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 32,
              color: Colors.black87,
            ),
          ),
        ),
      );
}
