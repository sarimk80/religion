// GENERATED CODE - DO NOT MODIFY BY HAND

part of serializers;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(Ayahs.serializer)
      ..add(BibleApi.serializer)
      ..add(Chapters.serializer)
      ..add(Data.serializer)
      ..add(Edition.serializer)
      ..add(GetData.serializer)
      ..add(QuranVerses.serializer)
      ..add(Sefaria.serializer)
      ..add(Verses.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Ayahs)]),
          () => new ListBuilder<Ayahs>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GetData)]),
          () => new ListBuilder<GetData>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Verses)]),
          () => new ListBuilder<Verses>()))
    .build();

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
