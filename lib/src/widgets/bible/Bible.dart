import 'package:flutter/material.dart';
import 'package:religion/src/widgets/book/Chapters.dart';

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
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          itemBuilder: (context, index) {
            int result = index + 1;
            return Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
              child: ListTile(
                title: Text(widget.title + " " + result.toString()),
                leading: Text(result.toString()),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Chapters(
                            id: result,
                            name: widget.title,
                          ),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
      floatingActionButton: FlatButton(
        color: Colors.amberAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        child: Text(
          "Resume",
          style: TextStyle(
              fontFamily: 'OpenSana',
              fontWeight: FontWeight.w700,
              color: Colors.black),
        ),
        onPressed: () {},
      ),
    );
  }
}
