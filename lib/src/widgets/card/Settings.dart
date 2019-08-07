import 'package:flutter/material.dart';

class Setings extends StatefulWidget {
  final String intro;
  final FontWeight fontWeight;

  Setings(this.intro, this.fontWeight);

  @override
  _SetingsState createState() => _SetingsState();
}

class _SetingsState extends State<Setings> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
          ),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
              child: Center(
                child: Text(
                  widget.intro,
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'OpenSans',
                      fontWeight: widget.fontWeight),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
