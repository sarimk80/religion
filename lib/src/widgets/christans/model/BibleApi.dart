import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'dart:convert' as json;

import 'package:religion/src/serializers/Serializers.dart';

part 'BibleApi.g.dart';

abstract class BibleApi implements Built<BibleApi, BibleApiBuilder> {
  BibleApi._();

  static Serializer<BibleApi> get serializer => _$bibleApiSerializer;

  String get reference; //": "1 Timothy 1",
  BuiltList<Verses> get verses;

//  ": [
//  {
//  "book_id": "1TI",
//  "book_name": "1 Timothy",
//  "chapter": 1,
//  "verse": 1,
//  "text": "Paul, an apostle of Jesus Christ according to the commandment of God our Savior and the Lord Jesus Christ our hope;\n"
//  },

  String get text; //": "Paul
  String get translation_id; //": "web",
  String get translation_name; //": "World English Bible",
  String get translation_note; //": "Public Domain"

  factory BibleApi([void Function(BibleApiBuilder) updates]) = _$BibleApi;
}

abstract class Verses implements Built<Verses, VersesBuilder> {
  Verses._();

  static Serializer<Verses> get serializer => _$versesSerializer;

  String get book_id; //": "1TI",
  String get book_name; //": "1 Timothy",
  int get chapter; //": 1,
  int get verse; //": 1,
  String get text;

  factory Verses([void Function(VersesBuilder) updates]) = _$Verses;
}

BibleApi getBibleApi(String jsonStr) {
  final res = json.jsonDecode(jsonStr);
  BibleApi bibleApi =
      standardSerializers.deserializeWith(BibleApi.serializer, res);
  return bibleApi;
}
