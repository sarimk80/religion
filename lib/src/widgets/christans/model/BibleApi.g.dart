// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BibleApi.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BibleApi> _$bibleApiSerializer = new _$BibleApiSerializer();
Serializer<Verses> _$versesSerializer = new _$VersesSerializer();

class _$BibleApiSerializer implements StructuredSerializer<BibleApi> {
  @override
  final Iterable<Type> types = const [BibleApi, _$BibleApi];
  @override
  final String wireName = 'BibleApi';

  @override
  Iterable<Object> serialize(Serializers serializers, BibleApi object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'reference',
      serializers.serialize(object.reference,
          specifiedType: const FullType(String)),
      'verses',
      serializers.serialize(object.verses,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Verses)])),
      'text',
      serializers.serialize(object.text, specifiedType: const FullType(String)),
      'translation_id',
      serializers.serialize(object.translation_id,
          specifiedType: const FullType(String)),
      'translation_name',
      serializers.serialize(object.translation_name,
          specifiedType: const FullType(String)),
      'translation_note',
      serializers.serialize(object.translation_note,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  BibleApi deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BibleApiBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'reference':
          result.reference = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'verses':
          result.verses.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Verses)]))
              as BuiltList<dynamic>);
          break;
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'translation_id':
          result.translation_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'translation_name':
          result.translation_name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'translation_note':
          result.translation_note = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$VersesSerializer implements StructuredSerializer<Verses> {
  @override
  final Iterable<Type> types = const [Verses, _$Verses];
  @override
  final String wireName = 'Verses';

  @override
  Iterable<Object> serialize(Serializers serializers, Verses object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'book_id',
      serializers.serialize(object.book_id,
          specifiedType: const FullType(String)),
      'book_name',
      serializers.serialize(object.book_name,
          specifiedType: const FullType(String)),
      'chapter',
      serializers.serialize(object.chapter, specifiedType: const FullType(int)),
      'verse',
      serializers.serialize(object.verse, specifiedType: const FullType(int)),
      'text',
      serializers.serialize(object.text, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Verses deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VersesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'book_id':
          result.book_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'book_name':
          result.book_name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'chapter':
          result.chapter = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'verse':
          result.verse = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BibleApi extends BibleApi {
  @override
  final String reference;
  @override
  final BuiltList<Verses> verses;
  @override
  final String text;
  @override
  final String translation_id;
  @override
  final String translation_name;
  @override
  final String translation_note;

  factory _$BibleApi([void Function(BibleApiBuilder) updates]) =>
      (new BibleApiBuilder()..update(updates)).build();

  _$BibleApi._(
      {this.reference,
      this.verses,
      this.text,
      this.translation_id,
      this.translation_name,
      this.translation_note})
      : super._() {
    if (reference == null) {
      throw new BuiltValueNullFieldError('BibleApi', 'reference');
    }
    if (verses == null) {
      throw new BuiltValueNullFieldError('BibleApi', 'verses');
    }
    if (text == null) {
      throw new BuiltValueNullFieldError('BibleApi', 'text');
    }
    if (translation_id == null) {
      throw new BuiltValueNullFieldError('BibleApi', 'translation_id');
    }
    if (translation_name == null) {
      throw new BuiltValueNullFieldError('BibleApi', 'translation_name');
    }
    if (translation_note == null) {
      throw new BuiltValueNullFieldError('BibleApi', 'translation_note');
    }
  }

  @override
  BibleApi rebuild(void Function(BibleApiBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BibleApiBuilder toBuilder() => new BibleApiBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BibleApi &&
        reference == other.reference &&
        verses == other.verses &&
        text == other.text &&
        translation_id == other.translation_id &&
        translation_name == other.translation_name &&
        translation_note == other.translation_note;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, reference.hashCode), verses.hashCode),
                    text.hashCode),
                translation_id.hashCode),
            translation_name.hashCode),
        translation_note.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BibleApi')
          ..add('reference', reference)
          ..add('verses', verses)
          ..add('text', text)
          ..add('translation_id', translation_id)
          ..add('translation_name', translation_name)
          ..add('translation_note', translation_note))
        .toString();
  }
}

class BibleApiBuilder implements Builder<BibleApi, BibleApiBuilder> {
  _$BibleApi _$v;

  String _reference;
  String get reference => _$this._reference;
  set reference(String reference) => _$this._reference = reference;

  ListBuilder<Verses> _verses;
  ListBuilder<Verses> get verses =>
      _$this._verses ??= new ListBuilder<Verses>();
  set verses(ListBuilder<Verses> verses) => _$this._verses = verses;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  String _translation_id;
  String get translation_id => _$this._translation_id;
  set translation_id(String translation_id) =>
      _$this._translation_id = translation_id;

  String _translation_name;
  String get translation_name => _$this._translation_name;
  set translation_name(String translation_name) =>
      _$this._translation_name = translation_name;

  String _translation_note;
  String get translation_note => _$this._translation_note;
  set translation_note(String translation_note) =>
      _$this._translation_note = translation_note;

  BibleApiBuilder();

  BibleApiBuilder get _$this {
    if (_$v != null) {
      _reference = _$v.reference;
      _verses = _$v.verses?.toBuilder();
      _text = _$v.text;
      _translation_id = _$v.translation_id;
      _translation_name = _$v.translation_name;
      _translation_note = _$v.translation_note;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BibleApi other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BibleApi;
  }

  @override
  void update(void Function(BibleApiBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BibleApi build() {
    _$BibleApi _$result;
    try {
      _$result = _$v ??
          new _$BibleApi._(
              reference: reference,
              verses: verses.build(),
              text: text,
              translation_id: translation_id,
              translation_name: translation_name,
              translation_note: translation_note);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'verses';
        verses.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BibleApi', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Verses extends Verses {
  @override
  final String book_id;
  @override
  final String book_name;
  @override
  final int chapter;
  @override
  final int verse;
  @override
  final String text;

  factory _$Verses([void Function(VersesBuilder) updates]) =>
      (new VersesBuilder()..update(updates)).build();

  _$Verses._(
      {this.book_id, this.book_name, this.chapter, this.verse, this.text})
      : super._() {
    if (book_id == null) {
      throw new BuiltValueNullFieldError('Verses', 'book_id');
    }
    if (book_name == null) {
      throw new BuiltValueNullFieldError('Verses', 'book_name');
    }
    if (chapter == null) {
      throw new BuiltValueNullFieldError('Verses', 'chapter');
    }
    if (verse == null) {
      throw new BuiltValueNullFieldError('Verses', 'verse');
    }
    if (text == null) {
      throw new BuiltValueNullFieldError('Verses', 'text');
    }
  }

  @override
  Verses rebuild(void Function(VersesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VersesBuilder toBuilder() => new VersesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Verses &&
        book_id == other.book_id &&
        book_name == other.book_name &&
        chapter == other.chapter &&
        verse == other.verse &&
        text == other.text;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, book_id.hashCode), book_name.hashCode),
                chapter.hashCode),
            verse.hashCode),
        text.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Verses')
          ..add('book_id', book_id)
          ..add('book_name', book_name)
          ..add('chapter', chapter)
          ..add('verse', verse)
          ..add('text', text))
        .toString();
  }
}

class VersesBuilder implements Builder<Verses, VersesBuilder> {
  _$Verses _$v;

  String _book_id;
  String get book_id => _$this._book_id;
  set book_id(String book_id) => _$this._book_id = book_id;

  String _book_name;
  String get book_name => _$this._book_name;
  set book_name(String book_name) => _$this._book_name = book_name;

  int _chapter;
  int get chapter => _$this._chapter;
  set chapter(int chapter) => _$this._chapter = chapter;

  int _verse;
  int get verse => _$this._verse;
  set verse(int verse) => _$this._verse = verse;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  VersesBuilder();

  VersesBuilder get _$this {
    if (_$v != null) {
      _book_id = _$v.book_id;
      _book_name = _$v.book_name;
      _chapter = _$v.chapter;
      _verse = _$v.verse;
      _text = _$v.text;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Verses other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Verses;
  }

  @override
  void update(void Function(VersesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Verses build() {
    final _$result = _$v ??
        new _$Verses._(
            book_id: book_id,
            book_name: book_name,
            chapter: chapter,
            verse: verse,
            text: text);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
