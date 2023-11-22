import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Gridlayout with Builder"),
        ),
        body: Material(
          child: GridBuilder(),
        ),
      ),
    ),

  );
}

class GridBuilder extends StatelessWidget {
  const GridBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    var mylist=[Colors.red,Colors.pink,Colors.black,Colors.grey,Colors.lightGreenAccent,Colors.indigo,Colors.yellow,Colors.blue,Colors.teal,Colors.orangeAccent];
    return GridView.builder(itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(color: mylist[index],
          ),
        );
       },
      itemCount: mylist.length, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    );
  }
}
