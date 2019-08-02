import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:religion/src/widgets/christans/Christianity.dart';
import 'package:religion/src/widgets/muslims/Islam.dart';
import 'package:religion/src/widgets/jews/Judaism.dart';
import 'package:religion/src/widgets/Setting.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentState = 0;
  final List<Widget> _childrens = [
    Judaism(),
    Christianity(),
    Islam(),
    Setting()
  ];

  onTapped(int index) {
    setState(() {
      _currentState = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          FontAwesomeIcons.globe,
          color: Colors.amberAccent,
        ),
        title: Text(
          widget.title,
          style: TextStyle(
              color: Colors.amberAccent,
              fontFamily: 'OpenSana',
              fontWeight: FontWeight.w700),
        ),
      ),
      body: _childrens[_currentState],
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.amberAccent,
        unselectedItemColor: Colors.grey[400],
        onTap: onTapped,
        currentIndex: _currentState,
        elevation: 5,
        items: [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.starOfDavid),
            title: Text("Judaism"),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.cross),
            title: Text("Christianity"),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.starAndCrescent),
            title: Text("Islam"),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.cog),
            title: Text("Setting"),
          )
        ],
      ),
    );
    //    return SafeArea(
//      child: CupertinoTabScaffold(
//        tabBar: CupertinoTabBar(
//          activeColor: Colors.amberAccent,
//          inactiveColor: Colors.grey[400],
//          items: [
//            BottomNavigationBarItem(
//              icon: Icon(FontAwesomeIcons.starOfDavid),
//              title: Text("Judaism"),
//            ),
//            BottomNavigationBarItem(
//              icon: Icon(FontAwesomeIcons.cross),
//              title: Text("Christianity"),
//            ),
//            BottomNavigationBarItem(
//              icon: Icon(FontAwesomeIcons.starAndCrescent),
//              title: Text("Islam"),
//            ),
//            BottomNavigationBarItem(
//              icon: Icon(FontAwesomeIcons.cog),
//              title: Text("Settings"),
//            ),
//          ],
//        ),
//        tabBuilder: (context, index) {
//          switch (index) {
//            case 0:
//              return Judaism();
//              break;
//            case 1:
//              return Christianity();
//              break;
//            case 2:
//              return Islam();
//              break;
//            case 3:
//              return Setting();
//              break;
//          }
//        },
//      ),
//    );
  }
}
