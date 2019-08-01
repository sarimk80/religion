import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'dart:convert' as json;

import 'package:religion/src/serializers/Serializers.dart';

part 'Chapters.g.dart';

abstract class Chapters implements Built<Chapters, ChaptersBuilder> {
  static Serializer<Chapters> get serializer => _$chaptersSerializer;

  int get code; //": 200,
  String get status; //": "OK",
  BuiltList<Data> get data; //": [
//  {
//  "number": 1,
//  "name": "سُورَةُ ٱلْفَاتِحَةِ",
//  "englishName": "Al-Faatiha",
//  "englishNameTranslation": "The Opening",
//  "numberOfAyahs": 7,
//  "revelationType": "Meccan"
//  },
  Chapters._();

  factory Chapters([void Function(ChaptersBuilder) updates]) = _$Chapters;
}

abstract class Data implements Built<Data, DataBuilder> {
  static Serializer<Data> get serializer => _$dataSerializer;

  int get number; //": 1,
  String get name; //": "سُورَةُ ٱلْفَاتِحَةِ",
  String get englishName; //": "Al-Faatiha",
  String get englishNameTranslation; //": "The Opening",
  int get numberOfAyahs; //": 7,
  String get revelationType; //": "Meccan"
  Data._();

  factory Data([void Function(DataBuilder) updates]) = _$Data;
}

Chapters getChapter(String Strjson) {
  final res = json.jsonDecode(Strjson);
  Chapters chapters =
      standardSerializers.deserializeWith(Chapters.serializer, res);
  return chapters;
}
