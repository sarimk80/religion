library serializers;

import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_collection/built_collection.dart';
import 'package:religion/src/widgets/christans/model/BibleApi.dart';
import 'package:religion/src/widgets/jews/model/Sefaria.dart';
import 'package:religion/src/widgets/muslims/model/chaptermodel/Chapters.dart';
import 'package:religion/src/widgets/muslims/model/versesmodel/Verses.dart';


part 'Serializers.g.dart';

/// Example of how to use built_value serialization.
///
/// Declare a top level [Serializers] field called serializers. Annotate it
/// with [SerializersFor] and provide a `const` `List` of types you want to
/// be serializable.
///
/// The built_value code generator will provide the implementation. It will
/// contain serializers for all the types asked for explicitly plus all the
/// types needed transitively via fields.
///
/// You usually only need to do this once per project.
@SerializersFor(const [Chapters, Sefaria, BibleApi,QuranVerses])
Serializers serializers = _$serializers;

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(new StandardJsonPlugin())).build();
