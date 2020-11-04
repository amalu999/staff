


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'Homepage.dart';
import 'to_print.dart';
import 'menubar.dart';




void main(){
  runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text('EPRINT - STAFF'),),
          backgroundColor: Colors.blue,
          resizeToAvoidBottomInset: false,
          body: SafeArea(
            child: MyApp(),
          ),
      ),
      ),
  );

  }


class MyApp extends StatefulWidget {
  @override

  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => Frontpage(),
    ),);
    throw UnimplementedError();
  }
}





