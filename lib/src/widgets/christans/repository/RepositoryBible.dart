import 'package:flutter/cupertino.dart';
import 'package:religion/src/widgets/christans/model/BibleApi.dart';
import 'package:religion/src/widgets/christans/network/RemoteBible.dart';

class RepositoryBibleApi {
  RemoteBible remoteBible;

  RepositoryBibleApi({@required this.remoteBible});

  Future<BibleApi> getRepositoryBible() async {
    return await remoteBible.getRemoteBible();
  }
}
