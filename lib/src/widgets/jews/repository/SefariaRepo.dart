import 'package:flutter/cupertino.dart';
import 'package:religion/src/widgets/jews/model/Sefaria.dart';
import 'package:religion/src/widgets/jews/network/SefariaApi.dart';

class SefariaRepo {
  SefariaApi sefariaApi;

  SefariaRepo({@required this.sefariaApi});

  Future<Sefaria> getSefariaRepo() async {
    return await sefariaApi.getSefariaApi();
  }
}
