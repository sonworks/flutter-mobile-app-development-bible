import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart'; // Flutterウィジェットが使用可能になる
// import 'package:flutter_application_1/FirstScreen.dart';
// import 'package:flutter_application_1/SecondScreen.dart';

// アプリが起動した時に、最初に動作する部分
void main() => runApp(MyApp());

// StatelessWidget Sample
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) => MaterialApp(
//         title: 'Navigation',
//         home: TodoScreen(
//           todos: List<Todo>.generate(
//               20,
//               (i) =>
//                   Todo(title: 'TODO $i', description: 'TODO $i\'s details.')),
//         ),
//       );
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) => MaterialApp(
//         title: 'Navigation',
//         theme: ThemeData(primarySwatch: Colors.blue),
//         initialRoute: '/',
//         routes: {
//           '/': (context) => Firstscreen(),
//           '/second': (context) => SecondScreen(),
//         },
//       );
// }

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

// // 3.2.1.8 MaterialAppのデザインに近づける
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) => Container(
//         decoration: BoxDecoration(color: Colors.white),
//         child: Center(
//           child: Text(
//             'Hello World',
//             textDirection: TextDirection.ltr,
//             style: TextStyle(
//               fontSize: 32,
//               color: Colors.black87,
//             ),
//           ),
//         ),
//       );
// }

// // 3.2.1.1.5 Row
// Widget _buildRowImages() => Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         Expanded(child: Image.asset('assets/images/image1.png'), flex: 1),
//         Expanded(child: Image.asset('assets/images/image2.png'), flex: 2),
//         Expanded(child: Image.asset('assets/images/image3.png'), flex: 1),
//       ],
//     );

// //3.2.1.33 ratings all
// class Pavolva extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final stars = Row(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         Icon(Icons.star, color: Colors.green[500]),
//         Icon(Icons.star, color: Colors.green[500]),
//         Icon(Icons.star, color: Colors.green[500]),
//         Icon(Icons.star, color: Colors.black),
//         Icon(Icons.star, color: Colors.black)
//       ],
//     );

//     final ratings = Container(
//         padding: EdgeInsets.all(20),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Expanded(child: stars),
//             Expanded(
//                 child: Text(
//               '170 Reviews',
//               style: TextStyle(
//                 color: Colors.black,
//                 fontWeight: FontWeight.w800,
//                 fontFamily: 'Roboto',
//                 letterSpacing: 0.5,
//                 fontSize: 20,
//               ),
//             )),
//           ],
//         ));

//     final descTextStyle = TextStyle(
//       color: Colors.black,
//       fontWeight: FontWeight.w800,
//       fontFamily: 'Roboto',
//       letterSpacing: 18,
//       height: 2,
//     );

//     final iconList = DefaultTextStyle.merge(
//         style: descTextStyle,
//         child: Container(
//           padding: EdgeInsets.all(20),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Expanded(
//                   child: Column(
//                 children: [
//                   Icon(Icons.kitchen, color: Colors.green[500]),
//                   Text('PREP:'),
//                   Text('25 min'),
//                 ],
//               )),
//               Expanded(
//                   child: Column(
//                 children: [
//                   Icon(Icons.timer, color: Colors.green[500]),
//                   Text('COOK:'),
//                   Text('1 hr'),
//                 ],
//               )),
//               Expanded(
//                   child: Column(
//                 children: [
//                   Icon(Icons.restaurant, color: Colors.green[500]),
//                   Text('FEEDS:'),
//                   Text('4-6')
//                 ],
//               )),
//             ],
//           ),
//         ));

//     final leftColumn = Container(
//       padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
//       child: Column(
//         children: [
//           Text('Strawberry Pavolva'),
//           Text(
//               'Pavolva is meringue-besed dessert named after the Russian ballerina Anna Pavolva.'),
//           ratings,
//           iconList,
//         ],
//       ),
//     );

//     final sample = Row(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Expanded(
//             child: Container(
//               width: 440,
//               child: leftColumn,
//             ),
//             flex: 4),
//         Expanded(child: Image.asset('assets/images/image1.png'), flex: 1)
//       ],
//     );

//     return Scaffold(
//       body: Center(
//         child: sample,
//       ),
//     );
//   }
// }

// // 3.2.2.2 Container example
// Widget _buildImageContainer(List<String> images) {
//   final slicedImages = images.fold<List<List<String>>>([], (list, image) {
//     if (list.length == 0 || list.last.length >= 2) {
//       list.add(<String>[]);
//     }
//     list.last.add(image);
//     return list;
//   });
//   return Container(
//     decoration: BoxDecoration(
//       color: Colors.black26,
//     ),
//     child: Column(
//       children: slicedImages
//           .map((rowImages) => Row(
//               children: rowImages
//                   .map((image) => Container(
//                         decoration: BoxDecoration(
//                           border: Border.all(width: 10, color: Colors.black38),
//                           borderRadius: BorderRadius.all(Radius.circular(8)),
//                         ),
//                         margin: EdgeInsets.all(4),
//                         child: Image.asset(image, width: 150),
//                       ))
//                   .toList()))
//           .toList(),
//     ),
//   );
// }

// // 3.2.2.4 GridView
// Widget _buildGrid(List<String> images) => GridView.extent(
//       maxCrossAxisExtent: 150,
//       padding: EdgeInsets.all(4),
//       mainAxisSpacing: 4,
//       crossAxisSpacing: 4,
//       children: images
//           .map((image) => Container(
//                 child: Image.asset(image),
//               ))
//           .toList(),
//     );

// // 3.2.2.5 ListView
// Widget _buildList() => ListView(
//       children: <Widget>[
//         _tile('Theatre1', 'It\'s theatre', Icons.theaters),
//         _tile('Theatre2', 'It\'s theatre', Icons.theaters),
//         _tile('Theatre3', 'It\'s theatre', Icons.theaters),
//         _tile('Theatre4', 'It\'s theatre', Icons.theaters),
//         _tile('Theatre5', 'It\'s theatre', Icons.theaters),
//         _tile('Theatre6', 'It\'s theatre', Icons.theaters),
//         Divider(),
//         _tile('Restaurant1', 'It\'s restaurant', Icons.restaurant),
//         _tile('Restaurant2', 'It\'s restaurant', Icons.restaurant),
//         _tile('Restaurant3', 'It\'s restaurant', Icons.restaurant),
//         _tile('Restaurant4', 'It\'s restaurant', Icons.restaurant),
//         _tile('Restaurant5', 'It\'s restaurant', Icons.restaurant),
//       ],
//     );

// ListTile _tile(String title, String subtitle, IconData icon) => ListTile(
//       title: Text(title,
//           style: TextStyle(
//             fontWeight: FontWeight.w500,
//             fontSize: 20,
//           )),
//       subtitle: Text(subtitle),
//       leading: Icon(
//         icon,
//         color: Colors.blue[500],
//       ),
//     );

// // 3.2.2.6 Stack
// Widget _buildStack() => Stack(
//       alignment: Alignment(0.6, 0.6),
//       children: [
//         CircleAvatar(
//           backgroundImage: AssetImage('assets/images/image1.jpg'),
//           radius: 100,
//         ),
//         Container(
//           decoration: BoxDecoration(
//             color: Colors.black45,
//           ),
//           child: Text(
//             'Mia B',
//             stye: TextStyle(
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//               color: Colors.white,
//             ),
//           ),
//         ),
//       ],
//     );

// // 3.2.2.7 Card, ListTile
// Widget _buildCard() => SizedBox(
//       height: 210,
//       child: Card(
//           child: Column(children: <Widget>[
//         _buildListTile('xxxxxxx', Icons.restaurant_menu),
//         _buildListTile('03-1234-5678', Icons.contact_phone),
//         _buildListTile('example@example.com', Icons.contact_mail),
//       ])),
//     );

// Widget _buildListTile(String title, IconData icon) => ListTile(
//       title: Text(title, style: const TextStyle(fontWeight: FontWeight.w500)),
//       leading: Icon(
//         icon,
//         color: Colors.blue[500],
//       ),
//     );

// // 3.3.1.11 Todo list
// class Todo {
//   final String title;
//   final String description;

//   Todo({@required this.title, @required this.description})
//       : assert(title != null),
//         assert(description != null);
// }

// class TodoScreen extends StatelessWidget {
//   final List<Todo> _todos;

//   TodoScreen({Key key, @required List<Todo> todos})
//       : assert(todos != null),
//         this._todos = todos,
//         super(key: key);

//   @override
//   Widget build(BuildContext context) => Scaffold(
//         appBar: AppBar(
//           title: Text('TODO list'),
//         ),
//         body: ListView.builder(
//             itemCount: _todos.length,
//             itemBuilder: (context, index) => ListTile(
//                   title: Text(_todos[index].title),
//                   onTap: () {
//                     // Navigation
//                   },
//                 )),
//       );
// }

// class DetailScreen extends StatelessWidget {
//   final Todo _todo;

//   DetailScreen({Key key, @required Todo todo})
//       : assert(todo != null),
//         this._todo = todo,
//         super(key: key);

//   @override
//   Widget build(BuildContext context) => Scaffold(
//         appBar: AppBar(
//           title: Text(_todo.title),
//         ),
//         body: Padding(
//           padding: EdgeInsets.all(16.0),
//           child: Text(_todo.description),
//         ),
//       );
// }

// // 3.3.1.21 base widget
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) => MaterialApp(
//         title: 'Navigation',
//         home: MainScreen(),
//       );
// }

// class MainScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) => Scaffold(
//         appBar: AppBar(
//           title: Text("Main Screen"),
//         ),
//         body: GestureDetector(
//           onTap: () {
//             Navigator.push(
//                 context, MaterialPageRoute(builder: (_) => DetailScreen()));
//           },
//           child: Hero(
//             tag: 'imageHero',
//             child: Image.network('https://picsum.photos/250?image=9'),
//           ),
//         ),
//       );
// }

// class DetailScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) => Scaffold(
//         body: GestureDetector(
//           onTap: () {
//             Navigator.pop(context);
//           },
//           child: Center(
//             child: Hero(
//               tag: 'imageHero',
//               child: Image.network('https://picsum.photos/250?image=9'),
//             ),
//           ),
//         ),
//       );
// }

// // ３.３.２.３ StatefulWidget #1
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) => MaterialApp(
//         title: 'Navigation',
//         home: Scaffold(
//           appBar: AppBar(
//             title: Text('TabBox'),
//           ),
//           body: Center(
//             child: TabBoxA(),
//           ),
//         ),
//       );
// }

// class TabBoxA extends StatefulWidget {
//   @override
//   _TabBoxAState createState() => _TabBoxAState();
// }

// class _TabBoxAState extends State<TabBoxA> {
//   bool _active = false;

//   @override
//   Widget build(BuildContext context) => GestureDetector(
//       onTap: _handleTap,
//       child: Container(
//         child: Center(
//           child: Text(
//             _active ? 'Active' : 'Inactive',
//             style: TextStyle(fontSize: 32.0, color: Colors.white),
//           ),
//         ),
//         width: 200.0,
//         height: 200.0,
//         decoration: BoxDecoration(
//             color: _active ? Colors.lightGreen[700] : Colors.grey[600]),
//       ));

//   void _handleTap() {
//     setState(() {
//       _active = !_active;
//     });
//   }
// }

// // ３.３.２.4 StatefulWidget #2
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) => MaterialApp(
//         title: 'Navigation',
//         home: Scaffold(
//           appBar: AppBar(
//             title: Text('TabBox #2'),
//           ),
//           body: Center(
//             child: ParentWidget(),
//           ),
//         ),
//       );
// }

// class ParentWidget extends StatefulWidget {
//   @override
//   _ParentWidgetState createState() => _ParentWidgetState();
// }

// class _ParentWidgetState extends State<ParentWidget> {
//   bool _active = false;

//   @override
//   Widget build(BuildContext context) => Container(
//         child: TapBoxB(
//           active: _active,
//           onChanged: _handleTapBoxChanged,
//         ),
//       );

//   void _handleTapBoxChanged(bool newValue) {
//     setState(() {
//       _active = newValue;
//     });
//   }
// }

// class TapBoxB extends StatelessWidget {
//   TapBoxB({Key? key, this.active = false, required this.onChanged})
//       : assert(true), // actual is 'active != false'
//         assert(onChanged != null),
//         super(key: key);
//   final bool active;
//   final ValueChanged<bool> onChanged;

//   @override
//   Widget build(BuildContext context) => GestureDetector(
//         onTap: _handleTap,
//         child: Container(
//           child: Center(
//             child: Text(
//               active ? 'Active1' : 'Inactive1',
//               style: TextStyle(fontSize: 32.0, color: Colors.white),
//             ),
//           ),
//           width: 200.0,
//           height: 200.0,
//           decoration: BoxDecoration(
//             color: active ? Colors.lightGreen[700] : Colors.grey[600],
//           ),
//         ),
//       );

//   void _handleTap() {
//     onChanged(!active);
//   }
// }

// 3.4.3.1 Flutterロゴを表示するアニメーション
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        home: LogoApp(),
      );
}

class LogoApp extends StatefulWidget {
  @override
  _LogoAppState createState() => _LogoAppState();
}

class _LogoAppState extends State<LogoApp> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            height: 300,
            width: 300,
            child: FlutterLogo(),
          ),
        ),
      );
}
