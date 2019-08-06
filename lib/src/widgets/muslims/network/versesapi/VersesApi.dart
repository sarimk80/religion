import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:religion/src/widgets/muslims/model/versesmodel/Verses.dart';

class VersesApi {
  final int id;
  final http.Client httpClient;

  VersesApi({@required this.httpClient, @required this.id});

  Future<QuranVerses> getVersesApi() async {
    final String url = "http://api.alquran.cloud/v1/surah/$id/en.asad";

    final res = await this.httpClient.get(Uri.parse(url));
    if (res.statusCode != 200) {
      throw Exception("Error");
    } else {
      return getVerses(res.body);
    }
  }
}
