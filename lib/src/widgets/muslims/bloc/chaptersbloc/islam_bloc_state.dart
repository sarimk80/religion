import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:religion/src/widgets/muslims/model/chaptermodel/Chapters.dart';

@immutable
abstract class IslamBlocState {}

class InitialIslamBlocState extends IslamBlocState {}

class LoadingIslamState extends IslamBlocState {}

class LoadedIslamState extends IslamBlocState {
  final Chapters chapters;

  LoadedIslamState({@required this.chapters});
}

class ErrorIslamState extends IslamBlocState {}
