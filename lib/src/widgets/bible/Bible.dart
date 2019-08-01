import 'package:flutter/material.dart';

class Bible extends StatefulWidget {
  final String title;
  final int items;

  const Bible({Key key, @required this.title, @required this.items})
      : super(key: key);

  @override
  _BibleState createState() => _BibleState();
}

class _BibleState extends State<Bible> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: widget.items,
          itemBuilder: (context, index) {
            return Center(
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ),
                child: ListTile(
                  leading: Text("$index"),
                  title: Text(widget.title + " " + "$index"),
                  onTap: () {},
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
