import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:religion/src/widgets/card/CardView.dart';
import 'package:religion/src/widgets/jews/books/Ketuvim.dart';
import 'package:religion/src/widgets/jews/books/Neviim.dart';
import 'package:religion/src/widgets/jews/books/Torah.dart';

class Judaism extends StatefulWidget {
  @override
  _JudaismState createState() => _JudaismState();
}

class _JudaismState extends State<Judaism> {
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
                    builder: (context) => Torah(),
                  ),
                );
              },
              splashColor: Colors.amberAccent,
              child: CardView(
                title: "Torah",
                description:
                    "The Torah also known as the Pentateuch, or as the Five Books of Moses",
                icon: FontAwesomeIcons.torah,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Neviim(),
                  ),
                );
              },
              child: CardView(
                title: "Nevi'im",
                description:
                    "Nevi'im is the second main division of the Tanakh",
                icon: FontAwesomeIcons.synagogue,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Ketuvim(),
                  ),
                );
              },
              child: CardView(
                title: "Ketuvim",
                description:
                    "Ketuvim consists of eleven books, described below. They are also divided into three subgroups based on the distinctiveness of Sifrei Emet and Hamesh Megillot.",
                icon: FontAwesomeIcons.menorah,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
