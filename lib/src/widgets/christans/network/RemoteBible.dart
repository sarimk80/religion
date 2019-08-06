import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:religion/src/widgets/christans/model/BibleApi.dart';

class RemoteBible {
  final http.Client httpClient;
  final int id;
  final String name;

  RemoteBible(
      {@required this.httpClient, @required this.id, @required this.name});

  Future<BibleApi> getRemoteBible() async {
    // ignore: non_constant_identifier_names
    final String URL = "https://bible-api.com/$name-$id";
    final res = await this.httpClient.get(Uri.parse(URL));
    if (res.statusCode != 200) {
      throw Exception("Error");
    } else {
      return getBibleApi(res.body);
    }
  }
}
