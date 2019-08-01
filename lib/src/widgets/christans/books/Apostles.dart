import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:religion/src/widgets/card/CardView.dart';

class Apostles extends StatefulWidget {
  @override
  _ApostlesState createState() => _ApostlesState();
}

class _ApostlesState extends State<Apostles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gospel"),
      ),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.all(10),
          children: <Widget>[
            CardView(
              title: "Matthew",
              description:
              "The Gospel According to Matthew is the first book of the New Testament and one of the three synoptic gospels.",
              icon: FontAwesomeIcons.church,
            ),
            CardView(
              title: "Mark",
              description:
              "The Gospel According to Mark is one of the four canonical gospels and one of the three synoptic gospels.",
              icon: FontAwesomeIcons.bible,
            ),
            CardView(
              title: "Luke",
              description:
              "The Gospel According to Luke also called the Gospel of Luke, or simply Luke, is the third of the four canonical Gospels.",
              icon: FontAwesomeIcons.cross,
            ),
            CardView(
              title: "John",
              description:
              "The Gospel of John is the fourth of the canonical gospels",
              icon: FontAwesomeIcons.ankh,
            ),
          ],
        ),
      ),
    );
  }
}
