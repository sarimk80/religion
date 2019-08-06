import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:religion/src/widgets/christans/model/BibleApi.dart';
import 'package:religion/src/widgets/christans/repository/RepositoryBible.dart';
import './bloc.dart';

class ChristianityBloc extends Bloc<ChristianityEvent, ChristianityState> {
  final RepositoryBibleApi repositoryBibleApi;

  ChristianityBloc({@required this.repositoryBibleApi});

  @override
  ChristianityState get initialState => InitialChristianityState();

  @override
  Stream<ChristianityState> mapEventToState(ChristianityEvent event) async* {
    if (event is Fetch) {
      yield LoadingChristianityState();
      try {
        final BibleApi bibleApi = await repositoryBibleApi.getRepositoryBible();
        yield LoadedChristianityState(bibleApi: bibleApi);
      } catch (_) {
        yield ErrorStateChristianity();
      }

    }
  }
}
