import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:religion/src/widgets/jews/bloc/bloc.dart';
import 'package:religion/src/widgets/jews/network/SefariaApi.dart';
import 'package:religion/src/widgets/jews/repository/SefariaRepo.dart';
import 'package:http/http.dart' as http;

class Chapters extends StatefulWidget {
  final int id;
  final String name;

  Chapters({Key key, @required this.id, @required this.name}) : super(key: key);

  @override
  _ChaptersState createState() => _ChaptersState();
}

class _ChaptersState extends State<Chapters> {
  JewsBloc jewsBloc;

  @override
  void initState() {
    SefariaRepo sefariaRepo = SefariaRepo(
      sefariaApi: SefariaApi(
        id: widget.id,
        name: widget.name,
        httpClient: http.Client(),
      ),
    );
    jewsBloc = JewsBloc(sefariaRepo: sefariaRepo);
    jewsBloc.dispatch(Fetch());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.name + " " + widget.id.toString(),
          style: TextStyle(fontFamily: 'OpenSana', fontWeight: FontWeight.w700),
        ),
      ),
      body: BlocBuilder(
        bloc: jewsBloc,
        builder: (BuildContext context, JewsState state) {
          if (state is LoadingJewsState) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is LoadedJewsState) {
            return ListView(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              children: state.sefaria.text.map(_builtString).toList(),
            );
          }
          if (state is ErrorState) {
            return Center(
              child: Text("Error"),
            );
          } else {
            return Center(
              child: Text(""),
            );
          }
        },
      ),
    );
  }

  Widget _builtString(String e) {
    if (e.isEmpty) {
      return Center(
        child: Text("Sorry Could not found what you "
            "are looking for"),
      );
    } else
      return Container(
        padding: EdgeInsets.all(5),
        child: ListTile(
          title: Text(
            e.replaceAll('<i></i>', ''),
            style:
                TextStyle(fontFamily: 'OpenSana', fontWeight: FontWeight.w300),
          ),
        ),
      );
  }
}
