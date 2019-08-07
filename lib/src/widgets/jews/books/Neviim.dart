import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:religion/src/widgets/bible/Bible.dart';
import 'package:religion/src/widgets/card/CardView.dart';

class Neviim extends StatefulWidget {
  @override
  _NeviimState createState() => _NeviimState();
}

class _NeviimState extends State<Neviim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Neviim"),
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
                  "The Former Prophets",
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
                          title: "Joshua",
                          items: 24,
                          religion: "Jews",
                        ),
                  ),
                );
              },
              child: CardView(
                title: "Joshua",
                description:
                    "The Book of Joshua is the sixth book in the Hebrew Bible and the Christian Old Testament, and is the first book of the Deuteronomistic history, the story of Israel from the conquest of Canaan to the Babylonian exile.",
                icon: FontAwesomeIcons.torah,
              ),
            ),
            InkWell(
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Bible(
                            title: "Judges",
                            items: 21,
                            religion: "Jews",
                          ),
                    ),
                  ),
              child: CardView(
                title: "Judges",
                description:
                    "The Book of Judges (ספר שופטים, Sefer Shoftim) is the seventh book of the Hebrew Bible and the Christian Old Testament. In the narrative of the Hebrew Bible, it covers the time between the conquest described in the Book of Joshua and the establishment of a kingdom in the Books of Samuel, during which Biblical judges served as temporary leaders.",
                icon: FontAwesomeIcons.hanukiah,
              ),
            ),
            InkWell(
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Bible(
                            title: "Samuel",
                            items: 30,
                            religion: "Jews",
                          ),
                    ),
                  ),
              child: CardView(
                title: "Samuel",
                description:
                    "The Books of Samuel,[a] 1 Samuel and 2 Samuel, form part of the narrative history of Israel in the Nevi'im or prophets section of the Hebrew Bible/Old Testament, called the Deuteronomistic history, a series of books (Joshua, Judges, Samuel and Kings) that constitute a theological history of the Israelites",
                icon: FontAwesomeIcons.synagogue,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Bible(
                          title: "Kings",
                          items: 30,
                          religion: "Jews",
                        ),
                  ),
                );
              },
              child: CardView(
                title: "Kings",
                description:
                    "The two Books of Kings, originally a single book, are the eleventh and twelfth books of the Hebrew Bible or Old Testament.",
                icon: FontAwesomeIcons.torah,
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "The Latter Prophets",
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
                          title: "Isaiah",
                          items: 66,
                          religion: "Jews",
                        ),
                  ),
                );
              },
              child: CardView(
                title: "Isaiah",
                description:
                    "The Book of Isaiah  is the first of the Latter Prophets in the Hebrew Bible and the first of the Major Prophets in the Christian Old Testament.",
                icon: FontAwesomeIcons.starOfDavid,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Bible(
                          title: "Jeremiah",
                          items: 52,
                          religion: "Jews",
                        ),
                  ),
                );
              },
              child: CardView(
                title: "Jeremiah",
                description:
                    "The Book of Jeremiah is the second of the Latter Prophets in the Hebrew Bible, and the second of the Prophets in the Christian Old Testament.",
                icon: FontAwesomeIcons.starOfDavid,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Bible(
                          title: "Ezekial",
                          items: 48,
                          religion: "Jews",
                        ),
                  ),
                );
              },
              child: CardView(
                title: "Ezekiel",
                description:
                    "The Book of Ezekiel is the third of the Latter Prophets in the Tanakh and one of the major prophetic books in the Old Testament, following Isaiah and Jeremiah.",
                icon: FontAwesomeIcons.synagogue,
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "The Twelve Minor Prophets ",
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
                          title: "Hosea",
                          items: 14,
                          religion: "Jews",
                        ),
                  ),
                );
              },
              child: CardView(
                title: "Hosea",
                description:
                    "The Book of Hosea is one of the books of the Hebrew Bible. According to the traditional order of most Hebrew Bibles, it is the first of the twelve Minor Prophets.",
                icon: FontAwesomeIcons.starOfDavid,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Bible(
                          title: "Joel",
                          items: 4,
                          religion: "Jews",
                        ),
                  ),
                );
              },
              child: CardView(
                title: "Joel",
                description:
                    "The Book of Joel is part of the Hebrew Bible, one of twelve prophetic books known as the Twelve Minor Prophets.",
                icon: FontAwesomeIcons.starOfDavid,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Bible(
                          title: "Amos",
                          items: 9,
                          religion: "Jews",
                        ),
                  ),
                );
              },
              child: CardView(
                title: "Amos",
                description:
                    "The Book of Amos is the third of the Twelve Minor Prophets in the Tanakh/Old Testament and the second in the Greek Septuagint tradition. Amos, an older contemporary of Hosea and Isaiah,was active c. 750 BC during the reign of Jeroboam II (788–747 BC),making Amos the first prophetic book of the Bible to be written.",
                icon: FontAwesomeIcons.starOfDavid,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Bible(
                          title: "Obadiah",
                          items: 1,
                          religion: "Jews",
                        ),
                  ),
                );
              },
              child: CardView(
                title: "Obadiah",
                description:
                    "The Book of Obadiah is an oracle concerning the divine judgment of Edom and the restoration of Israel. The text consists of a single chapter, divided into 21 verses, making it the shortest book in the Hebrew Bible.",
                icon: FontAwesomeIcons.menorah,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Bible(
                          title: "Jonah",
                          items: 4,
                          religion: "Jews",
                        ),
                  ),
                );
              },
              child: CardView(
                title: "Jonah",
                description:
                    """The Book of Jonah is a book of the Nevi'im ("Prophets") in the Hebrew Bible. It tells of a Hebrew prophet named Jonah son of Amittai who is sent by God to prophesy the destruction of Nineveh but tries to escape the divine mission.""",
                icon: FontAwesomeIcons.starOfDavid,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Bible(
                          title: "Micah",
                          items: 7,
                          religion: "Jews",
                        ),
                  ),
                );
              },
              child: CardView(
                title: "Micah",
                description:
                    """The Book of Micah is the sixth of the twelve minor prophets in the Hebrew Bible / Old Testament.[1] Ostensibly, it records the sayings of Micah, whose name is Mikayahu (Hebrew: מִיכָיָ֫הוּ), meaning "Who is like Yahweh?",""",
                icon: FontAwesomeIcons.starOfDavid,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Bible(
                          title: "Nahum",
                          items: 3,
                          religion: "Jews",
                        ),
                  ),
                );
              },
              child: CardView(
                title: "Nahum",
                description:
                    "The Book of Nahum is the seventh book of the 12 minor prophets of the Hebrew Bible. It is attributed to the prophet Nahum, and was probably written in Jerusalem in the 7th century BC.",
                icon: FontAwesomeIcons.starOfDavid,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Bible(
                          title: "Habakkuk",
                          items: 3,
                          religion: "Jews",
                        ),
                  ),
                );
              },
              child: CardView(
                title: "Habakkuk",
                description:
                    "The Book of Habakkuk is the eighth book of the 12 minor prophets of the Bible. It is attributed to the prophet Habakkuk, and was probably composed in the late 7th century BC.",
                icon: FontAwesomeIcons.starOfDavid,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Bible(
                          title: "Zephaniah",
                          items: 3,
                          religion: "Jews",
                        ),
                  ),
                );
              },
              child: CardView(
                title: "Zephaniah",
                description:
                    """The Book of Zephaniah is the ninth of the Twelve Minor Prophets, preceded by the Book of Habakkuk and followed by the Book of Haggai. Zephaniah means "Yahweh has hidden/protected,"[1] or "Yahweh hides".""",
                icon: FontAwesomeIcons.starOfDavid,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Bible(
                          title: "Haggai",
                          items: 2,
                          religion: "Jews",
                        ),
                  ),
                );
              },
              child: CardView(
                title: "Haggai",
                description:
                    "The Book of Haggai is a book of the Hebrew Bible or Tanakh, and has its place as the third-to-last of the Minor Prophets. It is a short book, consisting of only two chapters. The historical setting dates around 520 BCE before the Temple has been rebuilt.",
                icon: FontAwesomeIcons.starOfDavid,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Bible(
                          title: "Zechariah",
                          items: 14,
                          religion: "Jews",
                        ),
                  ),
                );
              },
              child: CardView(
                title: "Zechariah",
                description:
                    "The Book of Zechariah, attributed to the Hebrew prophet Zechariah, is included in the Twelve Minor Prophets in the Hebrew Bible.",
                icon: FontAwesomeIcons.starOfDavid,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Bible(
                          title: "Malachi",
                          items: 3,
                          religion: "Jews",
                        ),
                  ),
                );
              },
              child: CardView(
                title: "Malachi",
                description:
                    "Malachi is the last book of the Neviim contained in the Tanakh, canonically the last of the Twelve Minor Prophets. In the Christian ordering, the grouping of the Prophetic Books is the last section of the Old Testament, making Malachi the last book before The New Testament.",
                icon: FontAwesomeIcons.starOfDavid,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
