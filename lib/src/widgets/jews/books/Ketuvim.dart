import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:religion/src/widgets/bible/Bible.dart';
import 'package:religion/src/widgets/card/CardView.dart';

class Ketuvim extends StatefulWidget {
  @override
  _KetuvimState createState() => _KetuvimState();
}

class _KetuvimState extends State<Ketuvim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ketuvim"),
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
                  "The three poetic books",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.amberAccent,
                      fontFamily: 'OpenSana',
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            InkWell(
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Bible(
                            title: "Psalms",
                            items: 150,
                            religion: "Jews",
                          ),
                    ),
                  ),
              child: CardView(
                title: "Psalms",
                description:
                    """The Book of Psalms commonly referred to simply as Psalms or "the Psalms", is the first book of the Ketuvim ("Writings"), the third section of the Hebrew Bible, and thus a book of the Christian Old Testament.""",
                icon: FontAwesomeIcons.torah,
              ),
            ),
            InkWell(
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Bible(
                            title: "Proverbs",
                            items: 31,
                            religion: "Jews",
                          ),
                    ),
                  ),
              child: CardView(
                title: "Proverbs",
                description:
                    """The Book of Proverbs (Hebrew: מִשְלֵי, Míshlê (Shlomoh), "Proverbs (of Solomon)") is the second book of the third section (called Writings) of the Hebrew Bible and a book of the Christian Old Testament.""",
                icon: FontAwesomeIcons.hanukiah,
              ),
            ),
            InkWell(
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Bible(
                            title: "Job",
                            items: 42,
                            religion: "Jews",
                          ),
                    ),
                  ),
              child: CardView(
                title: "Job",
                description:
                    """The Book of Job is a book in the Ketuvim ("Writings") section of the Hebrew Bible (Tanakh), and the first poetic book in the Old Testament of the Christian Bible.""",
                icon: FontAwesomeIcons.synagogue,
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "The Five Megillot",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.amberAccent,
                      fontFamily: 'OpenSana',
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            InkWell(
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Bible(
                            title: "Song of Songs",
                            items: 8,
                            religion: "Jews",
                          ),
                    ),
                  ),
              child: CardView(
                title: "Song of Songs",
                description:
                    """The Song of Songs, also Song of Solomon or Canticles (Hebrew: שִׁיר הַשִּׁירִים Šîr HaŠŠîrîm, Greek and Ancient Greek: Ἆισμα Ἀισμάτων, romanized: Âisma Āismátōn; Latin: Canticum Canticorum), is one of the megillot (scrolls) found in the last section of the Tanakh, known as the Ketuvim (or "Writings"), and a book of the Old Testament.""",
                icon: FontAwesomeIcons.starOfDavid,
              ),
            ),
            InkWell(
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Bible(
                            title: "Ruth",
                            items: 4,
                            religion: "Jews",
                          ),
                    ),
                  ),
              child: CardView(
                title: "Ruth",
                description:
                    """The Book of Ruth (abbreviated Rth) (Hebrew: מגילת רות‎, Megilath Ruth, "the Scroll of Ruth", one of the Five Megillot) is included in the third division, or the Writings (Ketuvim), of the Hebrew Bible; in most Christian canons it is treated as a history book and placed between Judges and 1 Samuel,[1] as it is set "in the days when the judges judged",""",
                icon: FontAwesomeIcons.starOfDavid,
              ),
            ),
            InkWell(
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Bible(
                            title: "Lamentations",
                            items: 5,
                            religion: "Jews",
                          ),
                    ),
                  ),
              child: CardView(
                title: "Lamentations",
                description:
                    """The Book of Lamentations (Hebrew: אֵיכָה, ‘Êykhôh, from its incipit meaning "how") is a collection of poetic laments for the destruction of Jerusalem.""",
                icon: FontAwesomeIcons.synagogue,
              ),
            ),
            InkWell(
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Bible(
                            title: "Ecclesiastes",
                            items: 12,
                            religion: "Jews",
                          ),
                    ),
                  ),
              child: CardView(
                title: "Ecclesiastes",
                description:
                    """Ecclesiastes is one of 24 books of the Tanakh or Hebrew Bible, where it is classified as one of the Ketuvim (or "Writings"). Originally written c. 450–200 BCE, it is also among the canonical Wisdom Books in the Old Testament of most denominations of Christianity.""",
                icon: FontAwesomeIcons.synagogue,
              ),
            ),
            InkWell(
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Bible(
                            title: "Esther",
                            items: 10,
                            religion: "Jews",
                          ),
                    ),
                  ),
              child: CardView(
                title: " Esther",
                description:
                    """The Book of Esther, also known in Hebrew as "the Scroll" (Megillah), is a book in the third section (Ketuvim, "Writings") of the Jewish Tanakh (the Hebrew Bible) and in the Christian Old Testament.""",
                icon: FontAwesomeIcons.synagogue,
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Other books",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.amberAccent,
                      fontFamily: 'OpenSana',
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            InkWell(
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Bible(
                            title: "Daniel",
                            items: 12,
                            religion: "Jews",
                          ),
                    ),
                  ),
              child: CardView(
                title: "Daniel",
                description:
                    "The Book of Daniel is a 2nd-century BC biblical apocalypse combining a prophecy of history with an eschatology (a portrayal of end times) which is both cosmic in scope and political in its focus.",
                icon: FontAwesomeIcons.starOfDavid,
              ),
            ),
            InkWell(
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Bible(
                            title: "Ezra",
                            items: 10,
                            religion: "Jews",
                          ),
                    ),
                  ),
              child: CardView(
                title: "Ezra and Nehemiah",
                description:
                    "The Book of Ezra is a book of the Hebrew Bible; which formerly included the Book of Nehemiah in a single book, commonly distinguished in scholarship as Ezra–Nehemiah.",
                icon: FontAwesomeIcons.starOfDavid,
              ),
            ),
            InkWell(
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Bible(
                            title: "Chronicles",
                            items: 10,
                            religion: "Jews",
                          ),
                    ),
                  ),
              child: CardView(
                title: "Chronicles",
                description:
                    "The Book of Chronicles (Hebrew: דִּבְרֵי־הַיָּמִים Diḇrê Hayyāmîm 'The Matters [of] the Days') is a Hebrew prose work constituting part of Jewish and Christian scripture.",
                icon: FontAwesomeIcons.starOfDavid,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
