import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:religion/src/widgets/muslims/bloc/versesbloc/bloc.dart';
import 'package:religion/src/widgets/muslims/model/versesmodel/Verses.dart';
import 'package:religion/src/widgets/muslims/network/versesapi/VersesApi.dart';
import 'package:religion/src/widgets/muslims/repository/versesrepo/VersesRepository.dart';
import 'package:http/http.dart' as http;

//http://api.alquran.cloud/v1/surah/2/en.asad
class Quran extends StatefulWidget {
  final int id;
  final String name;

  Quran({@required this.id, @required this.name});

  @override
  _QuranState createState() => _QuranState();
}

class _QuranState extends State<Quran> {
  VersesBloc versesBloc;

  @override
  void initState() {
    VersesRepository versesRepository = VersesRepository(
        versesApi: VersesApi(httpClient: http.Client(), id: widget.id));
    versesBloc = VersesBloc(versesRepository: versesRepository);
    versesBloc.dispatch(Fetch());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.name,
          style: TextStyle(fontFamily: 'OpenSana', fontWeight: FontWeight.w700),
        ),
      ),
      body: BlocBuilder(
        bloc: versesBloc,
        builder: (BuildContext context, VersesState state) {
          if (state is LoadingVersesState) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is LoadedVersesState) {
            return ListView(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                children: state.verses.data.ayahs.map(_builtAyahs).toList());
          }
          if (state is ErrorVersesState) {
            return Center(
              child: Text("Error"),
            );
          } else {
            return Center(
              child: Text("Error"),
            );
          }
        },
      ),
    );
  }

  Widget _builtAyahs(Ayahs e) {
    return Container(
      padding: EdgeInsets.all(5),

      child: ListTile(
        title: Text(e.text,
            style:
                TextStyle(fontFamily: 'OpenSana', fontWeight: FontWeight.w300)),
      ),
    );
  }

  @override
  void dispose() {
    versesBloc.dispose();
    super.dispose();
  }
}
