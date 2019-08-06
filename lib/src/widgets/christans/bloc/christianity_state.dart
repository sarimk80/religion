import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:religion/src/widgets/christans/model/BibleApi.dart';

@immutable
abstract class ChristianityState {}

class InitialChristianityState extends ChristianityState {}

class LoadingChristianityState extends ChristianityState {}

class LoadedChristianityState extends ChristianityState {
  final BibleApi bibleApi;

  LoadedChristianityState({@required this.bibleApi});
}

class ErrorStateChristianity extends ChristianityState {}
