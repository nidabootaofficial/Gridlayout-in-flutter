import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Grid Layout with Count"),
        ),
        body: Material(
          child: GridLayout(),
        ),
      ),
    ),
  );
}
class GridLayout extends StatelessWidget {
  const GridLayout({super.key});

  @override
  Widget build(BuildContext context) {
    var mylist=[Colors.red,Colors.pink,Colors.black,Colors.grey,Colors.lightGreenAccent,Colors.indigo,Colors.yellow,Colors.blue,Colors.teal,Colors.orangeAccent];
    return GridView.count(
        crossAxisCount: 2,
      children: [
        Container(color: mylist[0],),
        Container(color: mylist[1],),
        Container(color: mylist[2],),
        Container(color: mylist[3],),
        Container(color: mylist[4],),
        Container(color: mylist[5],),
        Container(color: mylist[6],),
        Container(color: mylist[7],),
        Container(color: mylist[8],),
        Container(color: mylist[9],),
      ],
    );
  }
}
