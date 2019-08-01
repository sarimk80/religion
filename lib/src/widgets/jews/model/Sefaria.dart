import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'dart:convert' as json;

import 'package:religion/src/serializers/Serializers.dart';

part 'Sefaria.g.dart';

abstract class Sefaria implements Built<Sefaria, SefariaBuilder> {
  static Serializer<Sefaria> get serializer => _$sefariaSerializer;

  @nullable
  String get heVersionTitle; //": "Tanach with Ta'amei Hamikra",
  @nullable
  String get versionTitle; //": "Tanakh: The Holy Scriptures, published by JPS",
  @nullable
  String
      get versionSource; //": "https://jps.org/books/tanakh-the-holy-scriptures-blue/",
  @nullable
  String get extendedNotes; //": "",
  @nullable
  String get heSectionRef; //": "בראשית א׳",
  @nullable
  String get heIndexTitle; //": "בראשית",
  @nullable
  BuiltList<Text> get text; //": [],
  @nullable
  int get length; //": 50,

  Sefaria._();

  factory Sefaria([void Function(SefariaBuilder) updates]) = _$Sefaria;
}

abstract class Text implements Built<Text, TextBuilder> {
  static Serializer<Text> get serializer => _$textSerializer;

  Text._();

  factory Text([void Function(TextBuilder) updates]) = _$Text;
}

Sefaria getSefaria(String jsonStr) {
  final res = json.jsonDecode(jsonStr);
  Sefaria sefaria =
      standardSerializers.deserializeWith(Sefaria.serializer, res);
  return sefaria;
  //https://www.sefaria.org/api/texts/Genesis.1
}
