import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:religion/src/widgets/muslims/model/Chapters.dart';

class ChaptersApi {
  final String URL = "http://api.alquran.cloud/v1/surah";
  final http.Client httpClient;

  ChaptersApi({@required this.httpClient});

  Future<Chapters> getApiChapters() async {
    final res = await this.httpClient.get(Uri.parse(URL));
    if (res.statusCode != 200) {
      return null;
    } else {
      return getChapter(res.body);
    }
  }
}
