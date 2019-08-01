// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Sefaria.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Sefaria> _$sefariaSerializer = new _$SefariaSerializer();
Serializer<Text> _$textSerializer = new _$TextSerializer();

class _$SefariaSerializer implements StructuredSerializer<Sefaria> {
  @override
  final Iterable<Type> types = const [Sefaria, _$Sefaria];
  @override
  final String wireName = 'Sefaria';

  @override
  Iterable<Object> serialize(Serializers serializers, Sefaria object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.heVersionTitle != null) {
      result
        ..add('heVersionTitle')
        ..add(serializers.serialize(object.heVersionTitle,
            specifiedType: const FullType(String)));
    }
    if (object.versionTitle != null) {
      result
        ..add('versionTitle')
        ..add(serializers.serialize(object.versionTitle,
            specifiedType: const FullType(String)));
    }
    if (object.versionSource != null) {
      result
        ..add('versionSource')
        ..add(serializers.serialize(object.versionSource,
            specifiedType: const FullType(String)));
    }
    if (object.extendedNotes != null) {
      result
        ..add('extendedNotes')
        ..add(serializers.serialize(object.extendedNotes,
            specifiedType: const FullType(String)));
    }
    if (object.heSectionRef != null) {
      result
        ..add('heSectionRef')
        ..add(serializers.serialize(object.heSectionRef,
            specifiedType: const FullType(String)));
    }
    if (object.heIndexTitle != null) {
      result
        ..add('heIndexTitle')
        ..add(serializers.serialize(object.heIndexTitle,
            specifiedType: const FullType(String)));
    }
    if (object.text != null) {
      result
        ..add('text')
        ..add(serializers.serialize(object.text,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Text)])));
    }
    if (object.length != null) {
      result
        ..add('length')
        ..add(serializers.serialize(object.length,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Sefaria deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SefariaBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'heVersionTitle':
          result.heVersionTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'versionTitle':
          result.versionTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'versionSource':
          result.versionSource = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'extendedNotes':
          result.extendedNotes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'heSectionRef':
          result.heSectionRef = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'heIndexTitle':
          result.heIndexTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'text':
          result.text.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Text)]))
              as BuiltList<dynamic>);
          break;
        case 'length':
          result.length = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$TextSerializer implements StructuredSerializer<Text> {
  @override
  final Iterable<Type> types = const [Text, _$Text];
  @override
  final String wireName = 'Text';

  @override
  Iterable<Object> serialize(Serializers serializers, Text object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object>[];
  }

  @override
  Text deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new TextBuilder().build();
  }
}

class _$Sefaria extends Sefaria {
  @override
  final String heVersionTitle;
  @override
  final String versionTitle;
  @override
  final String versionSource;
  @override
  final String extendedNotes;
  @override
  final String heSectionRef;
  @override
  final String heIndexTitle;
  @override
  final BuiltList<Text> text;
  @override
  final int length;

  factory _$Sefaria([void Function(SefariaBuilder) updates]) =>
      (new SefariaBuilder()..update(updates)).build();

  _$Sefaria._(
      {this.heVersionTitle,
      this.versionTitle,
      this.versionSource,
      this.extendedNotes,
      this.heSectionRef,
      this.heIndexTitle,
      this.text,
      this.length})
      : super._();

  @override
  Sefaria rebuild(void Function(SefariaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SefariaBuilder toBuilder() => new SefariaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Sefaria &&
        heVersionTitle == other.heVersionTitle &&
        versionTitle == other.versionTitle &&
        versionSource == other.versionSource &&
        extendedNotes == other.extendedNotes &&
        heSectionRef == other.heSectionRef &&
        heIndexTitle == other.heIndexTitle &&
        text == other.text &&
        length == other.length;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, heVersionTitle.hashCode),
                                versionTitle.hashCode),
                            versionSource.hashCode),
                        extendedNotes.hashCode),
                    heSectionRef.hashCode),
                heIndexTitle.hashCode),
            text.hashCode),
        length.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Sefaria')
          ..add('heVersionTitle', heVersionTitle)
          ..add('versionTitle', versionTitle)
          ..add('versionSource', versionSource)
          ..add('extendedNotes', extendedNotes)
          ..add('heSectionRef', heSectionRef)
          ..add('heIndexTitle', heIndexTitle)
          ..add('text', text)
          ..add('length', length))
        .toString();
  }
}

class SefariaBuilder implements Builder<Sefaria, SefariaBuilder> {
  _$Sefaria _$v;

  String _heVersionTitle;
  String get heVersionTitle => _$this._heVersionTitle;
  set heVersionTitle(String heVersionTitle) =>
      _$this._heVersionTitle = heVersionTitle;

  String _versionTitle;
  String get versionTitle => _$this._versionTitle;
  set versionTitle(String versionTitle) => _$this._versionTitle = versionTitle;

  String _versionSource;
  String get versionSource => _$this._versionSource;
  set versionSource(String versionSource) =>
      _$this._versionSource = versionSource;

  String _extendedNotes;
  String get extendedNotes => _$this._extendedNotes;
  set extendedNotes(String extendedNotes) =>
      _$this._extendedNotes = extendedNotes;

  String _heSectionRef;
  String get heSectionRef => _$this._heSectionRef;
  set heSectionRef(String heSectionRef) => _$this._heSectionRef = heSectionRef;

  String _heIndexTitle;
  String get heIndexTitle => _$this._heIndexTitle;
  set heIndexTitle(String heIndexTitle) => _$this._heIndexTitle = heIndexTitle;

  ListBuilder<Text> _text;
  ListBuilder<Text> get text => _$this._text ??= new ListBuilder<Text>();
  set text(ListBuilder<Text> text) => _$this._text = text;

  int _length;
  int get length => _$this._length;
  set length(int length) => _$this._length = length;

  SefariaBuilder();

  SefariaBuilder get _$this {
    if (_$v != null) {
      _heVersionTitle = _$v.heVersionTitle;
      _versionTitle = _$v.versionTitle;
      _versionSource = _$v.versionSource;
      _extendedNotes = _$v.extendedNotes;
      _heSectionRef = _$v.heSectionRef;
      _heIndexTitle = _$v.heIndexTitle;
      _text = _$v.text?.toBuilder();
      _length = _$v.length;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Sefaria other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Sefaria;
  }

  @override
  void update(void Function(SefariaBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Sefaria build() {
    _$Sefaria _$result;
    try {
      _$result = _$v ??
          new _$Sefaria._(
              heVersionTitle: heVersionTitle,
              versionTitle: versionTitle,
              versionSource: versionSource,
              extendedNotes: extendedNotes,
              heSectionRef: heSectionRef,
              heIndexTitle: heIndexTitle,
              text: _text?.build(),
              length: length);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'text';
        _text?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Sefaria', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Text extends Text {
  factory _$Text([void Function(TextBuilder) updates]) =>
      (new TextBuilder()..update(updates)).build();

  _$Text._() : super._();

  @override
  Text rebuild(void Function(TextBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TextBuilder toBuilder() => new TextBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Text;
  }

  @override
  int get hashCode {
    return 900189511;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('Text').toString();
  }
}

class TextBuilder implements Builder<Text, TextBuilder> {
  _$Text _$v;

  TextBuilder();

  @override
  void replace(Text other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Text;
  }

  @override
  void update(void Function(TextBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Text build() {
    final _$result = _$v ?? new _$Text._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
