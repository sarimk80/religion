import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:religion/src/widgets/jews/model/Sefaria.dart';
import 'package:religion/src/widgets/muslims/model/Chapters.dart';


class Sefaria {
  final String URL = "https://www.sefaria.org/api/texts/Genesis.1";
  final http.Client httpClient;
  final int id;

  Sefaria({@required this.httpClient, @required this.id});

  Future<Sefaria> getSefariaApi() async {
    final res = await this.httpClient.get(Uri.parse(URL));
    if (res.statusCode != 200) {
      return null;
    } else {
      return null;
    }
  }
}
