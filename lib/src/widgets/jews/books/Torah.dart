import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:religion/src/widgets/bible/Bible.dart';
import 'package:religion/src/widgets/card/CardView.dart';

class Torah extends StatefulWidget {
  @override
  _TorahState createState() => _TorahState();
}

class _TorahState extends State<Torah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Torah"),
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
                          title: "Genesis",
                          items: 50,
                        ),
                  ),
                );
              },
              child: CardView(
                title: "Genesis",
                description:
                    "The Book of Genesis,the first book of the Hebrew Bible and the Old Testament,is Judaism's account of the creation of the world and the origins of the Jewish people.",
                icon: FontAwesomeIcons.torah,
              ),
            ),
            InkWell(
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Bible(
                            title: "Exodus",
                            items: 40,
                          ),
                    ),
                  ),
              child: CardView(
                title: "Exodus",
                description:
                    "The Book of Exodus is the second book of the Bible and describes the Exodus, which includes the Israelites' deliverance from slavery in Egypt through the hand of Yahweh, the revelations at biblical Mount Sinai, and the subsequent divine indwelling of God with Israel.",
                icon: FontAwesomeIcons.hanukiah,
              ),
            ),
            InkWell(
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Bible(
                            title: "Leviticus",
                            items: 27,
                          ),
                    ),
                  ),
              child: CardView(
                title: "Leviticus",
                description:
                    "The Book of Leviticus is the third book of the Torah and of the Old Testament; scholars generally agree that it developed over a long period of time, reaching its present form during the Persian Period between 538-332 BCE.",
                icon: FontAwesomeIcons.synagogue,
              ),
            ),
            InkWell(
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Bible(
                            title: "Numbers",
                            items: 36,
                          ),
                    ),
                  ),
              child: CardView(
                title: "Numbers",
                description:
                    "The Book of Numbers Bəmiḏbar,In the desert [of]) is the fourth book of the Hebrew Bible, and the fourth of five books of the Jewish Torah",
                icon: FontAwesomeIcons.torah,
              ),
            ),
            InkWell(
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Bible(
                        items: 34,
                            title: "Deuteronomy",
                          ),
                    ),
                  ),
              child: CardView(
                title: "Deuteronomy",
                description:
                    "The Book of Deuteronomy is the fifth book of the Christian Old Testament and of the Jewish Torah, where it is called Devarim",
                icon: FontAwesomeIcons.starOfDavid,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
