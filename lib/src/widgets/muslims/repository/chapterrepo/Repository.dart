import 'package:flutter/cupertino.dart';
import 'package:religion/src/widgets/muslims/model/chaptermodel/Chapters.dart';
import 'package:religion/src/widgets/muslims/network/chapterapi/ChaptersApi.dart';

class ChaptersRepo {
  ChaptersApi chaptersApi;

  ChaptersRepo({@required this.chaptersApi});

  Future<Chapters> getRepoChapters() async {
    return await chaptersApi.getApiChapters();
  }
}
