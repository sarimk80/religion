import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:religion/src/widgets/bible/Bible.dart';
import 'package:religion/src/widgets/card/CardView.dart';
import 'package:religion/src/widgets/christans/books/Epistles.dart';
import 'package:religion/src/widgets/christans/books/Gospel.dart';

class Christianity extends StatefulWidget {
  @override
  _ChristianityState createState() => _ChristianityState();
}

class _ChristianityState extends State<Christianity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          padding: EdgeInsets.all(10),
          shrinkWrap: true,
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Gospel(),
                  ),
                );
              },
              child: CardView(
                title: "Gospels",
                description:
                    "Gospel originally meant the Christian message itself, but in the 2nd century it came to be used for the books in which the message was set out.",
                icon: FontAwesomeIcons.bible,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Bible(
                          title: "Acts of the Apostles",
                          items: 28,
                          religion: "Christianity",
                        ),
                  ),
                );
              },
              child: CardView(
                title: "Acts of the Apostles",
                description:
                    "Acts of the Apostles  often referred to simply as Acts, or formally the Book of Acts, is the fifth book of the New Testament",
                icon: FontAwesomeIcons.ankh,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Epistles(),
                  ),
                );
              },
              child: CardView(
                title: "Epistles",
                description:
                    "An epistle  is a writing directed or sent to a person or group of people, usually an elegant and formal didactic letter.",
                icon: FontAwesomeIcons.cross,
              ),
            ),
            InkWell(
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Bible(
                            title: "Revelation",
                            items: 22,
                            religion: "Christianity",
                          ),
                    ),
                  ),
              child: CardView(
                title: "Revelation",
                description:
                    "Apocalyptic literature is a genre of prophetical writing that developed in post-Exilic Jewish culture and was popular among millennialist early Christians.",
                icon: FontAwesomeIcons.bible,
              ),
            ),
          ],
        ),
      ),

    );
  }
}
