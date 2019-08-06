import 'package:flutter/material.dart';
import 'package:religion/src/widgets/book/Quran.dart';
import 'package:religion/src/widgets/muslims/bloc/chaptersbloc/bloc.dart';
import 'package:religion/src/widgets/muslims/model/chaptermodel/Chapters.dart';
import 'package:religion/src/widgets/muslims/network/chapterapi/ChaptersApi.dart';
import 'package:religion/src/widgets/muslims/repository/chapterrepo/Repository.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_bloc/flutter_bloc.dart';

class Islam extends StatefulWidget {
  @override
  _IslamState createState() => _IslamState();
}

class _IslamState extends State<Islam> {
  IslamBlocBloc islamBloc;
  ChaptersRepo chaptersRepo =
      ChaptersRepo(chaptersApi: ChaptersApi(httpClient: http.Client()));

  @override
  void initState() {
    islamBloc = IslamBlocBloc(chaptersRepo: chaptersRepo);
    islamBloc.dispatch(Fetch());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocBuilder(
      bloc: islamBloc,
      builder: (BuildContext context, IslamBlocState state) {
        if (state is LoadingIslamState) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is LoadedIslamState) {
          return ListView(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              children: state.chapters.data.map(_builtData).toList());
        }
        if (state is ErrorIslamState) {
          return Center(
            child: Text("No Internet Connection"),
          );
        } else {
          return Center(
            child: Text("Error"),
          );
        }
      },
    ));
  }

  Widget _builtData(GetData e) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.white.withOpacity(0.5)),
        ),
      ),
      child: ListTile(
        leading: Text(
          e.number.toString(),
          style: TextStyle(fontFamily: 'OpenSana', fontWeight: FontWeight.w700),
        ),
        title: Text(
          e.englishName,
          style: TextStyle(fontFamily: 'OpenSana', fontWeight: FontWeight.w700),
        ),
        subtitle: Text(
          e.englishNameTranslation,
          style: TextStyle(fontFamily: 'OpenSana', fontWeight: FontWeight.w300),
        ),
        trailing: Text(
          e.revelationType,
          style: TextStyle(fontFamily: 'OpenSana', fontWeight: FontWeight.w300),
        ),
        onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Quran(
                      id: e.number,
                      name: e.englishName,
                    ),
              ),
            ),
      ),
    );
  }

  @override
  void dispose() {
    islamBloc.dispose();
    super.dispose();
  }
}
