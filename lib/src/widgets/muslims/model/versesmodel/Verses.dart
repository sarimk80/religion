import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'dart:convert' as json;

import 'package:religion/src/serializers/Serializers.dart';

part 'Verses.g.dart';

abstract class QuranVerses implements Built<QuranVerses, QuranVersesBuilder> {
  static Serializer<QuranVerses> get serializer => _$quranVersesSerializer;

  QuranVerses._();

  int get code; //": 200,
  String get status; //": "OK",
  Data get data;

  factory QuranVerses([void Function(QuranVersesBuilder) updates]) = _$QuranVerses;

}

abstract class Data implements Built<Data, DataBuilder> {
  static Serializer<Data> get serializer => _$dataSerializer;

  Data._();

  int get number; //": 114,
  String get name; //": "سورة الناس",
  String get englishName; //": "An-Naas",
  String get englishNameTranslation; //": "Mankind",
  String get revelationType; //": "Meccan",
  int get numberOfAyahs; //": 6,
  BuiltList<Ayahs> get ayahs; //": [],
  Edition get edition; //": {}
  factory Data([void Function(DataBuilder) updates]) = _$Data;
}

abstract class Ayahs implements Built<Ayahs, AyahsBuilder> {
  static Serializer<Ayahs> get serializer => _$ayahsSerializer;

  int get number; //": 6231,
  String get text; //": "SAY: \"I seek refuge with the Sustainer of men,",
  @nullable
  int get numberInSurah; //": 1,
  @nullable
  int get juz; //": 30,
  @nullable
  int get manzil; //": 7,
  @nullable
  int get page; //": 604,
  @nullable
  int get ruku; //": 556,
  @nullable
  int get hizbQuarter; //": 240,
  @nullable
  bool get sajda; //": false

  Ayahs._();

  factory Ayahs([void Function(AyahsBuilder) updates]) = _$Ayahs;
}

abstract class Edition implements Built<Edition, EditionBuilder> {
  static Serializer<Edition> get serializer => _$editionSerializer;

  Edition._();

  String get identifier; //": "en.asad",
  String get language; //": "en",
  String get name; //": "Asad",
  String get englishName; //": "Muhammad Asad",
  String get format; //": "text",
  String get type; //": "translation"
  factory Edition([void Function(EditionBuilder) updates]) = _$Edition;
}

QuranVerses getVerses(String jsonStr) {
  final res = json.jsonDecode(jsonStr);
  QuranVerses verses = standardSerializers.deserializeWith(QuranVerses.serializer, res);
  return verses;
}
