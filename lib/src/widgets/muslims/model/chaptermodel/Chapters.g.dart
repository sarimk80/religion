// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Chapters.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Chapters> _$chaptersSerializer = new _$ChaptersSerializer();
Serializer<GetData> _$getDataSerializer = new _$GetDataSerializer();

class _$ChaptersSerializer implements StructuredSerializer<Chapters> {
  @override
  final Iterable<Type> types = const [Chapters, _$Chapters];
  @override
  final String wireName = 'Chapters';

  @override
  Iterable<Object> serialize(Serializers serializers, Chapters object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(int)),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(String)),
      'data',
      serializers.serialize(object.data,
          specifiedType:
              const FullType(BuiltList, const [const FullType(GetData)])),
    ];

    return result;
  }

  @override
  Chapters deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ChaptersBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GetData)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$GetDataSerializer implements StructuredSerializer<GetData> {
  @override
  final Iterable<Type> types = const [GetData, _$GetData];
  @override
  final String wireName = 'GetData';

  @override
  Iterable<Object> serialize(Serializers serializers, GetData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'number',
      serializers.serialize(object.number, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'englishName',
      serializers.serialize(object.englishName,
          specifiedType: const FullType(String)),
      'englishNameTranslation',
      serializers.serialize(object.englishNameTranslation,
          specifiedType: const FullType(String)),
      'numberOfAyahs',
      serializers.serialize(object.numberOfAyahs,
          specifiedType: const FullType(int)),
      'revelationType',
      serializers.serialize(object.revelationType,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GetData deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GetDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'number':
          result.number = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'englishName':
          result.englishName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'englishNameTranslation':
          result.englishNameTranslation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'numberOfAyahs':
          result.numberOfAyahs = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'revelationType':
          result.revelationType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Chapters extends Chapters {
  @override
  final int code;
  @override
  final String status;
  @override
  final BuiltList<GetData> data;

  factory _$Chapters([void Function(ChaptersBuilder) updates]) =>
      (new ChaptersBuilder()..update(updates)).build();

  _$Chapters._({this.code, this.status, this.data}) : super._() {
    if (code == null) {
      throw new BuiltValueNullFieldError('Chapters', 'code');
    }
    if (status == null) {
      throw new BuiltValueNullFieldError('Chapters', 'status');
    }
    if (data == null) {
      throw new BuiltValueNullFieldError('Chapters', 'data');
    }
  }

  @override
  Chapters rebuild(void Function(ChaptersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChaptersBuilder toBuilder() => new ChaptersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Chapters &&
        code == other.code &&
        status == other.status &&
        data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, code.hashCode), status.hashCode), data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Chapters')
          ..add('code', code)
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class ChaptersBuilder implements Builder<Chapters, ChaptersBuilder> {
  _$Chapters _$v;

  int _code;
  int get code => _$this._code;
  set code(int code) => _$this._code = code;

  String _status;
  String get status => _$this._status;
  set status(String status) => _$this._status = status;

  ListBuilder<GetData> _data;
  ListBuilder<GetData> get data => _$this._data ??= new ListBuilder<GetData>();
  set data(ListBuilder<GetData> data) => _$this._data = data;

  ChaptersBuilder();

  ChaptersBuilder get _$this {
    if (_$v != null) {
      _code = _$v.code;
      _status = _$v.status;
      _data = _$v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Chapters other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Chapters;
  }

  @override
  void update(void Function(ChaptersBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Chapters build() {
    _$Chapters _$result;
    try {
      _$result = _$v ??
          new _$Chapters._(code: code, status: status, data: data.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Chapters', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GetData extends GetData {
  @override
  final int number;
  @override
  final String name;
  @override
  final String englishName;
  @override
  final String englishNameTranslation;
  @override
  final int numberOfAyahs;
  @override
  final String revelationType;

  factory _$GetData([void Function(GetDataBuilder) updates]) =>
      (new GetDataBuilder()..update(updates)).build();

  _$GetData._(
      {this.number,
      this.name,
      this.englishName,
      this.englishNameTranslation,
      this.numberOfAyahs,
      this.revelationType})
      : super._() {
    if (number == null) {
      throw new BuiltValueNullFieldError('GetData', 'number');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('GetData', 'name');
    }
    if (englishName == null) {
      throw new BuiltValueNullFieldError('GetData', 'englishName');
    }
    if (englishNameTranslation == null) {
      throw new BuiltValueNullFieldError('GetData', 'englishNameTranslation');
    }
    if (numberOfAyahs == null) {
      throw new BuiltValueNullFieldError('GetData', 'numberOfAyahs');
    }
    if (revelationType == null) {
      throw new BuiltValueNullFieldError('GetData', 'revelationType');
    }
  }

  @override
  GetData rebuild(void Function(GetDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetDataBuilder toBuilder() => new GetDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetData &&
        number == other.number &&
        name == other.name &&
        englishName == other.englishName &&
        englishNameTranslation == other.englishNameTranslation &&
        numberOfAyahs == other.numberOfAyahs &&
        revelationType == other.revelationType;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, number.hashCode), name.hashCode),
                    englishName.hashCode),
                englishNameTranslation.hashCode),
            numberOfAyahs.hashCode),
        revelationType.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetData')
          ..add('number', number)
          ..add('name', name)
          ..add('englishName', englishName)
          ..add('englishNameTranslation', englishNameTranslation)
          ..add('numberOfAyahs', numberOfAyahs)
          ..add('revelationType', revelationType))
        .toString();
  }
}

class GetDataBuilder implements Builder<GetData, GetDataBuilder> {
  _$GetData _$v;

  int _number;
  int get number => _$this._number;
  set number(int number) => _$this._number = number;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _englishName;
  String get englishName => _$this._englishName;
  set englishName(String englishName) => _$this._englishName = englishName;

  String _englishNameTranslation;
  String get englishNameTranslation => _$this._englishNameTranslation;
  set englishNameTranslation(String englishNameTranslation) =>
      _$this._englishNameTranslation = englishNameTranslation;

  int _numberOfAyahs;
  int get numberOfAyahs => _$this._numberOfAyahs;
  set numberOfAyahs(int numberOfAyahs) => _$this._numberOfAyahs = numberOfAyahs;

  String _revelationType;
  String get revelationType => _$this._revelationType;
  set revelationType(String revelationType) =>
      _$this._revelationType = revelationType;

  GetDataBuilder();

  GetDataBuilder get _$this {
    if (_$v != null) {
      _number = _$v.number;
      _name = _$v.name;
      _englishName = _$v.englishName;
      _englishNameTranslation = _$v.englishNameTranslation;
      _numberOfAyahs = _$v.numberOfAyahs;
      _revelationType = _$v.revelationType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetData;
  }

  @override
  void update(void Function(GetDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetData build() {
    final _$result = _$v ??
        new _$GetData._(
            number: number,
            name: name,
            englishName: englishName,
            englishNameTranslation: englishNameTranslation,
            numberOfAyahs: numberOfAyahs,
            revelationType: revelationType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
