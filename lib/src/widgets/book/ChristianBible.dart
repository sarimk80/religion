import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:religion/src/widgets/christans/bloc/bloc.dart';
import 'package:religion/src/widgets/christans/model/BibleApi.dart';
import 'package:religion/src/widgets/christans/network/RemoteBible.dart';
import 'package:religion/src/widgets/christans/repository/RepositoryBible.dart';
import 'package:http/http.dart' as http;

class ChristianBible extends StatefulWidget {
  final int id;
  final String name;

  ChristianBible({@required this.id, @required this.name});

  @override
  _ChristianBibleState createState() => _ChristianBibleState();
}

class _ChristianBibleState extends State<ChristianBible> {
  ChristianityBloc christianityBloc;

  @override
  void initState() {
    RepositoryBibleApi repositoryBibleApi = RepositoryBibleApi(
      remoteBible: RemoteBible(
          httpClient: http.Client(), name: widget.name, id: widget.id),
    );
    christianityBloc = ChristianityBloc(repositoryBibleApi: repositoryBibleApi);
    christianityBloc.dispatch(Fetch());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            widget.name + " " + widget.id.toString(),
            style:
                TextStyle(fontFamily: 'OpenSana', fontWeight: FontWeight.w700),
          ),
        ),
        body: BlocBuilder(
          bloc: christianityBloc,
          builder: (BuildContext context, ChristianityState state) {
            if (state is LoadingChristianityState) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is LoadedChristianityState) {
              return ListView(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                children: state.bibleApi.verses.map(_buildVerses).toList(),
              );
            }
            if (state is ErrorStateChristianity) {
              return Center(
                child: Text("Error"),
              );
            } else {
              return Center(
                child: Text("Error"),
              );
            }
          },
        ));
  }

  Widget _buildVerses(Verses e) {
    return Container(
      padding: EdgeInsets.all(10),
      child: ListTile(
        title: Text(
          e.text.replaceAll("\n", ""),
          style: TextStyle(fontFamily: 'OpenSana', fontWeight: FontWeight.w300),
        ),
      ),
    );
  }
}
