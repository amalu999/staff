import 'package:flutter/material.dart';
import 'to_print.dart';
import 'menubar.dart';
class Frontpage extends StatefulWidget {
  @override
  _FrontpageState createState() => _FrontpageState();
}

class _FrontpageState extends State<Frontpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("STAFF"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      drawer: MenuBar(),
      body: Center(
        child: RaisedButton(
       onPressed: () {
         Navigator.of(context).push(MaterialPageRoute(
           builder: (context) => ToPrimt(),
         ),);
       },
       child: Text("TOPRINT"),
          color: Colors.blueGrey,
        )

    ),

    );

  }
}
