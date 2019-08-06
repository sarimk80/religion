import 'package:flutter/cupertino.dart';
import 'package:religion/src/widgets/muslims/model/versesmodel/Verses.dart';
import 'package:religion/src/widgets/muslims/network/versesapi/VersesApi.dart';

class VersesRepository {
  VersesApi versesApi;

  VersesRepository({@required this.versesApi});

  Future<QuranVerses> getRepoVerses() async {
    return await versesApi.getVersesApi();
  }
}
