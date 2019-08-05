import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:religion/src/widgets/bible/Bible.dart';
import 'package:religion/src/widgets/card/CardView.dart';

class Gospel extends StatefulWidget {
  @override
  _GospelState createState() => _GospelState();
}

class _GospelState extends State<Gospel> {
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
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Bible(
                          title: "Matthew",
                          items: 28,
                          religion: "Christianity",
                        ),
                  ),
                );
              },
              child: CardView(
                title: "Matthew",
                description:
                    "The Gospel According to Matthew is the first book of the New Testament and one of the three synoptic gospels.",
                icon: FontAwesomeIcons.church,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Bible(
                          title: "Mark",
                          items: 16,
                          religion: "Christianity",
                        ),
                  ),
                );
              },
              child: CardView(
                title: "Mark",
                description:
                    "The Gospel According to Mark is one of the four canonical gospels and one of the three synoptic gospels.",
                icon: FontAwesomeIcons.bible,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Bible(
                          title: "Luke",
                          items: 24,
                          religion: "Christianity",
                        ),
                  ),
                );
              },
              child: CardView(
                title: "Luke",
                description:
                    "The Gospel According to Luke also called the Gospel of Luke, or simply Luke, is the third of the four canonical Gospels.",
                icon: FontAwesomeIcons.cross,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Bible(
                          title: "John",
                          items: 21,
                          religion: "Christianity",
                        ),
                  ),
                );
              },
              child: CardView(
                title: "John",
                description:
                    "The Gospel of John is the fourth of the canonical gospels",
                icon: FontAwesomeIcons.ankh,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
