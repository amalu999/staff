import 'package:eprint_staff/feedbacksend.dart';
import 'package:eprint_staff/history.dart';
import 'package:eprint_staff/price_change.dart';
import 'package:eprint_staff/ready_to_collect.dart';
import 'package:eprint_staff/settings.dart';
import 'package:eprint_staff/to_print.dart';
import 'package:flutter/material.dart';
class MenuBar extends StatefulWidget {
  @override
  _MenuBarState createState() => _MenuBarState();
}

class _MenuBarState extends State<MenuBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('ORCHID PRINTINGS'),
              accountEmail: Text('myprinter@gmail.com'),
              currentAccountPicture: CircleAvatar(
                child: Text('ORCHID'),
                backgroundColor: Colors.white,
              ),
            ),
            ListTile(
                leading: Icon(Icons.print),
                title: Text('To Print'),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ToPrimt(),
                  ),);
                }
            ),
            ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text('Ready To Collect'),
                onTap: (){ Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ReadyToCollect(),
                ),);

                }
            ),
            ListTile(
                leading: Icon(Icons.history),
                title: Text('History'),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => History(),
                  ),);

                }
            ),
            ListTile(
                leading: Icon(Icons.attach_money),
                title: Text('Price Change'),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PriceChange(),
                  ),);

                }
            ),
            ListTile(
                leading: Icon(Icons.feedback),
                title: Text('Feedback'),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => FeedbackSend(),
                  ),);
                }
            ),
            ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: (){Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Settings(),
                ),);

                }
            ),
          ]
      ),
    );
  }
}
