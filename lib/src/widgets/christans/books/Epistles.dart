import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:religion/src/widgets/bible/Bible.dart';
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
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.amberAccent,
                      fontFamily: 'OpenSana',
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Bible(
                          title: "Romans",
                          items: 16,
                          religion: "Christianity",
                        ),
                  ),
                );
              },
              child: CardView(
                title: "Epistle to the Romans",
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
                          title: "1Corinthians",
                          items: 16,
                          religion: "Christianity",
                        ),
                  ),
                );
              },
              child: CardView(
                title: "First Epistle to the Corinthians",
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
                          title: "2Corinthians",
                          items: 13,
                          religion: "Christianity",
                        ),
                  ),
                );
              },
              child: CardView(
                title: "Second Epistle to the Corinthians",
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
                          title: "Galatians",
                          items: 6,
                          religion: "Christianity",
                        ),
                  ),
                );
              },
              child: CardView(
                title: "Epistle to the Galatians",
                description:
                    "The Gospel of John is the fourth of the canonical gospels",
                icon: FontAwesomeIcons.ankh,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Bible(
                          title: "Ephesians",
                          items: 6,
                          religion: "Christianity",
                        ),
                  ),
                );
              },
              child: CardView(
                title: "Epistle to the Ephesians*",
                description:
                    "The Gospel of John is the fourth of the canonical gospels",
                icon: FontAwesomeIcons.ankh,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Bible(
                          title: "Philippians",
                          items: 4,
                          religion: "Christianity",
                        ),
                  ),
                );
              },
              child: CardView(
                title: "Epistle to the Philippians",
                description:
                    "The Gospel of John is the fourth of the canonical gospels",
                icon: FontAwesomeIcons.ankh,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Bible(
                          title: "Colossians",
                          items: 4,
                          religion: "Christianity",
                        ),
                  ),
                );
              },
              child: CardView(
                title: "Epistle to the Colossians*",
                description:
                    "The Gospel of John is the fourth of the canonical gospels",
                icon: FontAwesomeIcons.ankh,
              ),
            ),
            InkWell(
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Bible(
                            title: "1Thessalonians",
                            items: 5,
                            religion: "Christianity",
                          ),
                    ),
                  ),
              child: CardView(
                title: "First Epistle to the Thessalonians",
                description:
                    "The Gospel of John is the fourth of the canonical gospels",
                icon: FontAwesomeIcons.ankh,
              ),
            ),
            InkWell(
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Bible(
                            title: "2Thessalonians",
                            items: 3,
                            religion: "Christianity",
                          ),
                    ),
                  ),
              child: CardView(
                title: "Second Epistle to the Thessalonians*",
                description:
                    "The Gospel of John is the fourth of the canonical gospels",
                icon: FontAwesomeIcons.ankh,
              ),
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
            InkWell(
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Bible(
                            title: "1Timothy",
                            items: 6,
                            religion: "Christianity",
                          ),
                    ),
                  ),
              child: CardView(
                title: "First Epistle to Timothy*",
                description:
                    "The Gospel of John is the fourth of the canonical gospels",
                icon: FontAwesomeIcons.ankh,
              ),
            ),
            InkWell(
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Bible(
                            title: "2Timothy",
                            items: 4,
                            religion: "Christianity",
                          ),
                    ),
                  ),
              child: CardView(
                title: "Second Epistle to Timothy*",
                description:
                    "The Gospel of John is the fourth of the canonical gospels",
                icon: FontAwesomeIcons.ankh,
              ),
            ),
            InkWell(
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Bible(
                            title: "Titus",
                            items: 3,
                            religion: "Christianity",
                          ),
                    ),
                  ),
              child: CardView(
                title: "Epistle to Titus*",
                description:
                    "The Gospel of John is the fourth of the canonical gospels",
                icon: FontAwesomeIcons.ankh,
              ),
            ),
            InkWell(
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Bible(
                            title: "Philemon",
                            items: 1,
                            religion: "Christianity",
                          ),
                    ),
                  ),
              child: CardView(
                title: "Epistle to Philemon",
                description:
                    "The Gospel of John is the fourth of the canonical gospels",
                icon: FontAwesomeIcons.ankh,
              ),
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
            InkWell(
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Bible(
                            title: "Hebrews",
                            items: 13,
                            religion: "Christianity",
                          ),
                    ),
                  ),
              child: CardView(
                title: "Hebrews",
                description:
                    "The Gospel of John is the fourth of the canonical gospels",
                icon: FontAwesomeIcons.ankh,
              ),
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
            InkWell(
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Bible(
                            title: "James",
                            items: 5,
                            religion: "Christianity",
                          ),
                    ),
                  ),
              child: CardView(
                title: "Epistle of James",
                description:
                    "The Gospel of John is the fourth of the canonical gospels",
                icon: FontAwesomeIcons.ankh,
              ),
            ),
            InkWell(
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Bible(
                            title: "1Peter",
                            items: 5,
                            religion: "Christianity",
                          ),
                    ),
                  ),
              child: CardView(
                title: "First Epistle of Peter",
                description:
                    "The Gospel of John is the fourth of the canonical gospels",
                icon: FontAwesomeIcons.ankh,
              ),
            ),
            InkWell(
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Bible(
                            title: "2Peter",
                            items: 3,
                            religion: "Christianity",
                          ),
                    ),
                  ),
              child: CardView(
                title: "Second Epistle of Peter",
                description:
                    "The Gospel of John is the fourth of the canonical gospels",
                icon: FontAwesomeIcons.ankh,
              ),
            ),
            InkWell(
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Bible(
                            title: "1John",
                            items: 5,
                            religion: "Christianity",
                          ),
                    ),
                  ),
              child: CardView(
                title: "First Epistle of John",
                description:
                    "The Gospel of John is the fourth of the canonical gospels",
                icon: FontAwesomeIcons.ankh,
              ),
            ),
            InkWell(
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Bible(
                            title: "2John",
                            items: 1,
                            religion: "Christianity",
                          ),
                    ),
                  ),
              child: CardView(
                title: "Second Epistle of John",
                description:
                    "The Gospel of John is the fourth of the canonical gospels",
                icon: FontAwesomeIcons.ankh,
              ),
            ),
            InkWell(
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Bible(
                            title: "3John",
                            items: 1,
                            religion: "Christianity",
                          ),
                    ),
                  ),
              child: CardView(
                title: "Third Epistle of John",
                description:
                    "The Gospel of John is the fourth of the canonical gospels",
                icon: FontAwesomeIcons.ankh,
              ),
            ),
            InkWell(
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Bible(
                            title: "Jude",
                            items: 1,
                            religion: "Christianity",
                          ),
                    ),
                  ),
              child: CardView(
                title: "Epistle of Jude",
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
