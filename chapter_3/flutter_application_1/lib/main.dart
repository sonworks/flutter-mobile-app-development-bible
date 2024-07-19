import 'package:flutter/material.dart'; // Flutterウィジェットが使用可能になる

// アプリが起動した時に、最初に動作する部分
void main() => runApp(MyApp());

// StatelessWidget Sample
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Pavolva Demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Pavolva(),
      );
}

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

//3.2.1.33 ratings all
class Pavolva extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final stars = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.black),
        Icon(Icons.star, color: Colors.black)
      ],
    );

    final ratings = Container(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(child: stars),
            Expanded(
                child: Text(
              '170 Reviews',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w800,
                fontFamily: 'Roboto',
                letterSpacing: 0.5,
                fontSize: 20,
              ),
            )),
          ],
        ));

    final descTextStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 18,
      height: 2,
    );

    final iconList = DefaultTextStyle.merge(
        style: descTextStyle,
        child: Container(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                  child: Column(
                children: [
                  Icon(Icons.kitchen, color: Colors.green[500]),
                  Text('PREP:'),
                  Text('25 min'),
                ],
              )),
              Expanded(
                  child: Column(
                children: [
                  Icon(Icons.timer, color: Colors.green[500]),
                  Text('COOK:'),
                  Text('1 hr'),
                ],
              )),
              Expanded(
                  child: Column(
                children: [
                  Icon(Icons.restaurant, color: Colors.green[500]),
                  Text('FEEDS:'),
                  Text('4-6')
                ],
              )),
            ],
          ),
        ));

    final leftColumn = Container(
      padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
      child: Column(
        children: [
          Text('Strawberry Pavolva'),
          Text(
              'Pavolva is meringue-besed dessert named after the Russian ballerina Anna Pavolva.'),
          ratings,
          iconList,
        ],
      ),
    );

    final sample = Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            child: Container(
              width: 440,
              child: leftColumn,
            ),
            flex: 4),
        Expanded(child: Image.asset('assets/images/image1.png'), flex: 1)
      ],
    );

    return Scaffold(
      body: Center(
        child: sample,
      ),
    );
  }
}

// 3.2.2.2 Container example
Widget _buildImageContainer(List<String> images) {
  final slicedImages = images.fold<List<List<String>>>([], (list, image) {
    if (list.length == 0 || list.last.length >= 2) {
      list.add(<String>[]);
    }
    list.last.add(image);
    return list;
  });
  return Container(
    decoration: BoxDecoration(
      color: Colors.black26,
    ),
    child: Column(
      children: slicedImages
          .map((rowImages) => Row(
              children: rowImages
                  .map((image) => Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 10, color: Colors.black38),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        margin: EdgeInsets.all(4),
                        child: Image.asset(image, width: 150),
                      ))
                  .toList()))
          .toList(),
    ),
  );
}

// 3.2.2.4 GridView
Widget _buildGrid(List<String> images) => GridView.extent(
      maxCrossAxisExtent: 150,
      padding: EdgeInsets.all(4),
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      children: images
          .map((image) => Container(
                child: Image.asset(image),
              ))
          .toList(),
    );

// 3.2.2.5 ListView
Widget _buildList() => ListView(
      children: <Widget>[
        _tile('Theatre1', 'It\'s theatre', Icons.theaters),
        _tile('Theatre2', 'It\'s theatre', Icons.theaters),
        _tile('Theatre3', 'It\'s theatre', Icons.theaters),
        _tile('Theatre4', 'It\'s theatre', Icons.theaters),
        _tile('Theatre5', 'It\'s theatre', Icons.theaters),
        _tile('Theatre6', 'It\'s theatre', Icons.theaters),
        Divider(),
        _tile('Restaurant1', 'It\'s restaurant', Icons.restaurant),
        _tile('Restaurant2', 'It\'s restaurant', Icons.restaurant),
        _tile('Restaurant3', 'It\'s restaurant', Icons.restaurant),
        _tile('Restaurant4', 'It\'s restaurant', Icons.restaurant),
        _tile('Restaurant5', 'It\'s restaurant', Icons.restaurant),
      ],
    );

ListTile _tile(String title, String subtitle, IconData icon) => ListTile(
      title: Text(title,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          )),
      subtitle: Text(subtitle),
      leading: Icon(
        icon,
        color: Colors.blue[500],
      ),
    );

// 3.2.2.6 Stack
Widget _buildStack() => Stack(
      alignment: Alignment(0.6, 0.6),
      children: [
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/image1.jpg'),
          radius: 100,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.black45,
          ),
          child: Text(
            'Mia B',
            stye: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
