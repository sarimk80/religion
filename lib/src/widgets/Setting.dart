import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:religion/src/widgets/card/CardView.dart';
import 'package:religion/src/widgets/card/Settings.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Setings("Introduction", FontWeight.w700),
        Setings(
            "If their is any mistake in this app feel free to contact me"
            "The main motivation for this app was to bring all the religious book in "
            "one place.",
            FontWeight.w300),
        Setings("More language support is coming soon and", FontWeight.w300)
      ],
    );
  }
}
