import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:religion/src/widgets/muslims/model/versesmodel/Verses.dart';

@immutable
abstract class VersesState {}

class InitialVersesState extends VersesState {}

class LoadingVersesState extends VersesState {}

class LoadedVersesState extends VersesState {
  final QuranVerses verses;

  LoadedVersesState({@required this.verses});
}

class ErrorVersesState extends VersesState {}
