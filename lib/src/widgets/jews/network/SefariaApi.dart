import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:religion/src/widgets/jews/model/Sefaria.dart';

class SefariaApi {
  final http.Client httpClient;
  final int id;
  final String name;

  SefariaApi(
      {@required this.httpClient, @required this.id, @required this.name});

  Future<Sefaria> getSefariaApi() async {
    final String URL = "https://www.sefaria.org/api/texts/$name.$id";
    final res = await this.httpClient.get(Uri.parse(URL));
    if (res.statusCode != 200) {
      return null;
    } else {
      print(res.body);
      return getSefaria(res.body);
    }
  }
}
