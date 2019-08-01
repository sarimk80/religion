import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:religion/src/widgets/card/CardView.dart';

class Epistles extends StatefulWidget {
  @override
  _EpistlesState createState() => _EpistlesState();
}

class _EpistlesState extends State<Epistles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Epistles"),
      ),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.all(10),
          children: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Pauline letters to churches",
                  style: TextStyle(fontSize: 30, color: Colors.amberAccent),
                ),
              ),
            ),
            CardView(
              title: "Epistle to the Romans",
              description:
                  "The Gospel According to Matthew is the first book of the New Testament and one of the three synoptic gospels.",
              icon: FontAwesomeIcons.church,
            ),
            CardView(
              title: "First Epistle to the Corinthians",
              description:
                  "The Gospel According to Mark is one of the four canonical gospels and one of the three synoptic gospels.",
              icon: FontAwesomeIcons.bible,
            ),
            CardView(
              title: "Second Epistle to the Corinthians",
              description:
                  "The Gospel According to Luke also called the Gospel of Luke, or simply Luke, is the third of the four canonical Gospels.",
              icon: FontAwesomeIcons.cross,
            ),
            CardView(
              title: "Epistle to the Galatians",
              description:
                  "The Gospel of John is the fourth of the canonical gospels",
              icon: FontAwesomeIcons.ankh,
            ),
            CardView(
              title: "Epistle to the Ephesians*",
              description:
                  "The Gospel of John is the fourth of the canonical gospels",
              icon: FontAwesomeIcons.ankh,
            ),
            CardView(
              title: "Epistle to the Philippians",
              description:
                  "The Gospel of John is the fourth of the canonical gospels",
              icon: FontAwesomeIcons.ankh,
            ),
            CardView(
              title: "Epistle to the Colossians*",
              description:
                  "The Gospel of John is the fourth of the canonical gospels",
              icon: FontAwesomeIcons.ankh,
            ),
            CardView(
              title: "First Epistle to the Thessalonians",
              description:
                  "The Gospel of John is the fourth of the canonical gospels",
              icon: FontAwesomeIcons.ankh,
            ),
            CardView(
              title: "Second Epistle to the Thessalonians*",
              description:
                  "The Gospel of John is the fourth of the canonical gospels",
              icon: FontAwesomeIcons.ankh,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Pauline Letters to Persons",
                  style: TextStyle(fontSize: 30, color: Colors.amberAccent),
                ),
              ),
            ),
            CardView(
              title: "First Epistle to Timothy*",
              description:
                  "The Gospel of John is the fourth of the canonical gospels",
              icon: FontAwesomeIcons.ankh,
            ),
            CardView(
              title: "Second Epistle to Timothy*",
              description:
                  "The Gospel of John is the fourth of the canonical gospels",
              icon: FontAwesomeIcons.ankh,
            ),
            CardView(
              title: "Epistle to Titus*",
              description:
                  "The Gospel of John is the fourth of the canonical gospels",
              icon: FontAwesomeIcons.ankh,
            ),
            CardView(
              title: "Epistle to Philemon",
              description:
                  "The Gospel of John is the fourth of the canonical gospels",
              icon: FontAwesomeIcons.ankh,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Hebrews",
                  style: TextStyle(fontSize: 30, color: Colors.amberAccent),
                ),
              ),
            ),
            CardView(
              title: "Hebrews",
              description:
                  "The Gospel of John is the fourth of the canonical gospels",
              icon: FontAwesomeIcons.ankh,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Catholic epistles",
                  style: TextStyle(fontSize: 30, color: Colors.amberAccent),
                ),
              ),
            ),
            CardView(
              title: "Epistle of James",
              description:
              "The Gospel of John is the fourth of the canonical gospels",
              icon: FontAwesomeIcons.ankh,
            ),
            CardView(
              title: "First Epistle of Peter",
              description:
              "The Gospel of John is the fourth of the canonical gospels",
              icon: FontAwesomeIcons.ankh,
            ),
            CardView(
              title: "Second Epistle of Peter",
              description:
              "The Gospel of John is the fourth of the canonical gospels",
              icon: FontAwesomeIcons.ankh,
            ),
            CardView(
              title: "First Epistle of John",
              description:
              "The Gospel of John is the fourth of the canonical gospels",
              icon: FontAwesomeIcons.ankh,
            ),
            CardView(
              title: "Second Epistle of John",
              description:
              "The Gospel of John is the fourth of the canonical gospels",
              icon: FontAwesomeIcons.ankh,
            ),
            CardView(
              title: "Third Epistle of John",
              description:
              "The Gospel of John is the fourth of the canonical gospels",
              icon: FontAwesomeIcons.ankh,
            ),
            CardView(
              title: "Epistle of Jude",
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
