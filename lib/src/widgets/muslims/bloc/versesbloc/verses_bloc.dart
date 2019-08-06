import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:religion/src/widgets/muslims/model/versesmodel/Verses.dart';
import 'package:religion/src/widgets/muslims/repository/versesrepo/VersesRepository.dart';
import './bloc.dart';

class VersesBloc extends Bloc<VersesEvent, VersesState> {
  VersesRepository versesRepository;

  VersesBloc({@required this.versesRepository});

  @override
  VersesState get initialState => InitialVersesState();

  @override
  Stream<VersesState> mapEventToState(VersesEvent event) async* {
    if (event is Fetch) {
      yield LoadingVersesState();
      try {
        final QuranVerses verses = await versesRepository.getRepoVerses();
        yield LoadedVersesState(verses: verses);
      } catch (_) {
        yield ErrorVersesState();
      }
    }
  }
}
