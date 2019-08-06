import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:religion/src/widgets/muslims/model/chaptermodel/Chapters.dart';
import 'package:religion/src/widgets/muslims/repository/chapterrepo/Repository.dart';
import 'package:religion/src/widgets/muslims/bloc/chaptersbloc/bloc.dart';

class IslamBlocBloc extends Bloc<IslamBlocEvent, IslamBlocState> {
  ChaptersRepo chaptersRepo;


  IslamBlocBloc({@required this.chaptersRepo});

  @override
  IslamBlocState get initialState => InitialIslamBlocState();

  @override
  Stream<IslamBlocState> mapEventToState(IslamBlocEvent event) async* {

    if(event is Fetch){
      yield LoadingIslamState();
      try{
      final Chapters chapters=await chaptersRepo.getRepoChapters();
      yield LoadedIslamState(chapters: chapters);
      }catch(_){
      yield ErrorIslamState();
      }
    }
  }
}
