import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:religion/src/widgets/jews/model/Sefaria.dart';
import 'package:religion/src/widgets/jews/repository/SefariaRepo.dart';
import './bloc.dart';

class JewsBloc extends Bloc<JewsEvent, JewsState> {
  SefariaRepo sefariaRepo;

  JewsBloc({@required this.sefariaRepo});

  @override
  JewsState get initialState => InitialJewsState();

  @override
  Stream<JewsState> mapEventToState(JewsEvent event) async* {
    if (event is Fetch) {
      yield LoadingJewsState();
      try {
        final Sefaria sefaria = await sefariaRepo.getSefariaRepo();
        yield LoadedJewsState(sefaria: sefaria);
      } catch (_) {
        yield ErrorState();
      }
    }
  }
}
