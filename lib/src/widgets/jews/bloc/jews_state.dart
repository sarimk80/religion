import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:religion/src/widgets/jews/model/Sefaria.dart';

@immutable
abstract class JewsState {}

class InitialJewsState extends JewsState {}

class LoadingJewsState extends JewsState {}

class LoadedJewsState extends JewsState {
  final Sefaria sefaria;

  LoadedJewsState({@required this.sefaria});
}

class ErrorState extends JewsState {}
