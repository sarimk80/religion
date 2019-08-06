// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Verses.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<QuranVerses> _$quranVersesSerializer = new _$QuranVersesSerializer();
Serializer<Data> _$dataSerializer = new _$DataSerializer();
Serializer<Ayahs> _$ayahsSerializer = new _$AyahsSerializer();
Serializer<Edition> _$editionSerializer = new _$EditionSerializer();

class _$QuranVersesSerializer implements StructuredSerializer<QuranVerses> {
  @override
  final Iterable<Type> types = const [QuranVerses, _$QuranVerses];
  @override
  final String wireName = 'QuranVerses';

  @override
  Iterable<Object> serialize(Serializers serializers, QuranVerses object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(int)),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(String)),
      'data',
      serializers.serialize(object.data, specifiedType: const FullType(Data)),
    ];

    return result;
  }

  @override
  QuranVerses deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new QuranVersesBuilder();

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
              specifiedType: const FullType(Data)) as Data);
          break;
      }
    }

    return result.build();
  }
}

class _$DataSerializer implements StructuredSerializer<Data> {
  @override
  final Iterable<Type> types = const [Data, _$Data];
  @override
  final String wireName = 'Data';

  @override
  Iterable<Object> serialize(Serializers serializers, Data object,
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
      'revelationType',
      serializers.serialize(object.revelationType,
          specifiedType: const FullType(String)),
      'numberOfAyahs',
      serializers.serialize(object.numberOfAyahs,
          specifiedType: const FullType(int)),
      'ayahs',
      serializers.serialize(object.ayahs,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Ayahs)])),
      'edition',
      serializers.serialize(object.edition,
          specifiedType: const FullType(Edition)),
    ];

    return result;
  }

  @override
  Data deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DataBuilder();

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
        case 'revelationType':
          result.revelationType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'numberOfAyahs':
          result.numberOfAyahs = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'ayahs':
          result.ayahs.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Ayahs)]))
              as BuiltList<dynamic>);
          break;
        case 'edition':
          result.edition.replace(serializers.deserialize(value,
              specifiedType: const FullType(Edition)) as Edition);
          break;
      }
    }

    return result.build();
  }
}

class _$AyahsSerializer implements StructuredSerializer<Ayahs> {
  @override
  final Iterable<Type> types = const [Ayahs, _$Ayahs];
  @override
  final String wireName = 'Ayahs';

  @override
  Iterable<Object> serialize(Serializers serializers, Ayahs object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'number',
      serializers.serialize(object.number, specifiedType: const FullType(int)),
      'text',
      serializers.serialize(object.text, specifiedType: const FullType(String)),
    ];
    if (object.numberInSurah != null) {
      result
        ..add('numberInSurah')
        ..add(serializers.serialize(object.numberInSurah,
            specifiedType: const FullType(int)));
    }
    if (object.juz != null) {
      result
        ..add('juz')
        ..add(serializers.serialize(object.juz,
            specifiedType: const FullType(int)));
    }
    if (object.manzil != null) {
      result
        ..add('manzil')
        ..add(serializers.serialize(object.manzil,
            specifiedType: const FullType(int)));
    }
    if (object.page != null) {
      result
        ..add('page')
        ..add(serializers.serialize(object.page,
            specifiedType: const FullType(int)));
    }
    if (object.ruku != null) {
      result
        ..add('ruku')
        ..add(serializers.serialize(object.ruku,
            specifiedType: const FullType(int)));
    }
    if (object.hizbQuarter != null) {
      result
        ..add('hizbQuarter')
        ..add(serializers.serialize(object.hizbQuarter,
            specifiedType: const FullType(int)));
    }
    if (object.sajda != null) {
      result
        ..add('sajda')
        ..add(serializers.serialize(object.sajda,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  Ayahs deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AyahsBuilder();

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
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'numberInSurah':
          result.numberInSurah = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'juz':
          result.juz = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'manzil':
          result.manzil = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'ruku':
          result.ruku = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'hizbQuarter':
          result.hizbQuarter = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'sajda':
          result.sajda = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$EditionSerializer implements StructuredSerializer<Edition> {
  @override
  final Iterable<Type> types = const [Edition, _$Edition];
  @override
  final String wireName = 'Edition';

  @override
  Iterable<Object> serialize(Serializers serializers, Edition object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'identifier',
      serializers.serialize(object.identifier,
          specifiedType: const FullType(String)),
      'language',
      serializers.serialize(object.language,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'englishName',
      serializers.serialize(object.englishName,
          specifiedType: const FullType(String)),
      'format',
      serializers.serialize(object.format,
          specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Edition deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EditionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'identifier':
          result.identifier = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'language':
          result.language = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'englishName':
          result.englishName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'format':
          result.format = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$QuranVerses extends QuranVerses {
  @override
  final int code;
  @override
  final String status;
  @override
  final Data data;

  factory _$QuranVerses([void Function(QuranVersesBuilder) updates]) =>
      (new QuranVersesBuilder()..update(updates)).build();

  _$QuranVerses._({this.code, this.status, this.data}) : super._() {
    if (code == null) {
      throw new BuiltValueNullFieldError('QuranVerses', 'code');
    }
    if (status == null) {
      throw new BuiltValueNullFieldError('QuranVerses', 'status');
    }
    if (data == null) {
      throw new BuiltValueNullFieldError('QuranVerses', 'data');
    }
  }

  @override
  QuranVerses rebuild(void Function(QuranVersesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuranVersesBuilder toBuilder() => new QuranVersesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuranVerses &&
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
    return (newBuiltValueToStringHelper('QuranVerses')
          ..add('code', code)
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class QuranVersesBuilder implements Builder<QuranVerses, QuranVersesBuilder> {
  _$QuranVerses _$v;

  int _code;
  int get code => _$this._code;
  set code(int code) => _$this._code = code;

  String _status;
  String get status => _$this._status;
  set status(String status) => _$this._status = status;

  DataBuilder _data;
  DataBuilder get data => _$this._data ??= new DataBuilder();
  set data(DataBuilder data) => _$this._data = data;

  QuranVersesBuilder();

  QuranVersesBuilder get _$this {
    if (_$v != null) {
      _code = _$v.code;
      _status = _$v.status;
      _data = _$v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuranVerses other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$QuranVerses;
  }

  @override
  void update(void Function(QuranVersesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$QuranVerses build() {
    _$QuranVerses _$result;
    try {
      _$result = _$v ??
          new _$QuranVerses._(code: code, status: status, data: data.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'QuranVerses', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Data extends Data {
  @override
  final int number;
  @override
  final String name;
  @override
  final String englishName;
  @override
  final String englishNameTranslation;
  @override
  final String revelationType;
  @override
  final int numberOfAyahs;
  @override
  final BuiltList<Ayahs> ayahs;
  @override
  final Edition edition;

  factory _$Data([void Function(DataBuilder) updates]) =>
      (new DataBuilder()..update(updates)).build();

  _$Data._(
      {this.number,
      this.name,
      this.englishName,
      this.englishNameTranslation,
      this.revelationType,
      this.numberOfAyahs,
      this.ayahs,
      this.edition})
      : super._() {
    if (number == null) {
      throw new BuiltValueNullFieldError('Data', 'number');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('Data', 'name');
    }
    if (englishName == null) {
      throw new BuiltValueNullFieldError('Data', 'englishName');
    }
    if (englishNameTranslation == null) {
      throw new BuiltValueNullFieldError('Data', 'englishNameTranslation');
    }
    if (revelationType == null) {
      throw new BuiltValueNullFieldError('Data', 'revelationType');
    }
    if (numberOfAyahs == null) {
      throw new BuiltValueNullFieldError('Data', 'numberOfAyahs');
    }
    if (ayahs == null) {
      throw new BuiltValueNullFieldError('Data', 'ayahs');
    }
    if (edition == null) {
      throw new BuiltValueNullFieldError('Data', 'edition');
    }
  }

  @override
  Data rebuild(void Function(DataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DataBuilder toBuilder() => new DataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Data &&
        number == other.number &&
        name == other.name &&
        englishName == other.englishName &&
        englishNameTranslation == other.englishNameTranslation &&
        revelationType == other.revelationType &&
        numberOfAyahs == other.numberOfAyahs &&
        ayahs == other.ayahs &&
        edition == other.edition;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, number.hashCode), name.hashCode),
                            englishName.hashCode),
                        englishNameTranslation.hashCode),
                    revelationType.hashCode),
                numberOfAyahs.hashCode),
            ayahs.hashCode),
        edition.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Data')
          ..add('number', number)
          ..add('name', name)
          ..add('englishName', englishName)
          ..add('englishNameTranslation', englishNameTranslation)
          ..add('revelationType', revelationType)
          ..add('numberOfAyahs', numberOfAyahs)
          ..add('ayahs', ayahs)
          ..add('edition', edition))
        .toString();
  }
}

class DataBuilder implements Builder<Data, DataBuilder> {
  _$Data _$v;

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

  String _revelationType;
  String get revelationType => _$this._revelationType;
  set revelationType(String revelationType) =>
      _$this._revelationType = revelationType;

  int _numberOfAyahs;
  int get numberOfAyahs => _$this._numberOfAyahs;
  set numberOfAyahs(int numberOfAyahs) => _$this._numberOfAyahs = numberOfAyahs;

  ListBuilder<Ayahs> _ayahs;
  ListBuilder<Ayahs> get ayahs => _$this._ayahs ??= new ListBuilder<Ayahs>();
  set ayahs(ListBuilder<Ayahs> ayahs) => _$this._ayahs = ayahs;

  EditionBuilder _edition;
  EditionBuilder get edition => _$this._edition ??= new EditionBuilder();
  set edition(EditionBuilder edition) => _$this._edition = edition;

  DataBuilder();

  DataBuilder get _$this {
    if (_$v != null) {
      _number = _$v.number;
      _name = _$v.name;
      _englishName = _$v.englishName;
      _englishNameTranslation = _$v.englishNameTranslation;
      _revelationType = _$v.revelationType;
      _numberOfAyahs = _$v.numberOfAyahs;
      _ayahs = _$v.ayahs?.toBuilder();
      _edition = _$v.edition?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Data other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Data;
  }

  @override
  void update(void Function(DataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Data build() {
    _$Data _$result;
    try {
      _$result = _$v ??
          new _$Data._(
              number: number,
              name: name,
              englishName: englishName,
              englishNameTranslation: englishNameTranslation,
              revelationType: revelationType,
              numberOfAyahs: numberOfAyahs,
              ayahs: ayahs.build(),
              edition: edition.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'ayahs';
        ayahs.build();
        _$failedField = 'edition';
        edition.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Data', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Ayahs extends Ayahs {
  @override
  final int number;
  @override
  final String text;
  @override
  final int numberInSurah;
  @override
  final int juz;
  @override
  final int manzil;
  @override
  final int page;
  @override
  final int ruku;
  @override
  final int hizbQuarter;
  @override
  final bool sajda;

  factory _$Ayahs([void Function(AyahsBuilder) updates]) =>
      (new AyahsBuilder()..update(updates)).build();

  _$Ayahs._(
      {this.number,
      this.text,
      this.numberInSurah,
      this.juz,
      this.manzil,
      this.page,
      this.ruku,
      this.hizbQuarter,
      this.sajda})
      : super._() {
    if (number == null) {
      throw new BuiltValueNullFieldError('Ayahs', 'number');
    }
    if (text == null) {
      throw new BuiltValueNullFieldError('Ayahs', 'text');
    }
  }

  @override
  Ayahs rebuild(void Function(AyahsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AyahsBuilder toBuilder() => new AyahsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Ayahs &&
        number == other.number &&
        text == other.text &&
        numberInSurah == other.numberInSurah &&
        juz == other.juz &&
        manzil == other.manzil &&
        page == other.page &&
        ruku == other.ruku &&
        hizbQuarter == other.hizbQuarter &&
        sajda == other.sajda;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, number.hashCode), text.hashCode),
                                numberInSurah.hashCode),
                            juz.hashCode),
                        manzil.hashCode),
                    page.hashCode),
                ruku.hashCode),
            hizbQuarter.hashCode),
        sajda.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Ayahs')
          ..add('number', number)
          ..add('text', text)
          ..add('numberInSurah', numberInSurah)
          ..add('juz', juz)
          ..add('manzil', manzil)
          ..add('page', page)
          ..add('ruku', ruku)
          ..add('hizbQuarter', hizbQuarter)
          ..add('sajda', sajda))
        .toString();
  }
}

class AyahsBuilder implements Builder<Ayahs, AyahsBuilder> {
  _$Ayahs _$v;

  int _number;
  int get number => _$this._number;
  set number(int number) => _$this._number = number;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  int _numberInSurah;
  int get numberInSurah => _$this._numberInSurah;
  set numberInSurah(int numberInSurah) => _$this._numberInSurah = numberInSurah;

  int _juz;
  int get juz => _$this._juz;
  set juz(int juz) => _$this._juz = juz;

  int _manzil;
  int get manzil => _$this._manzil;
  set manzil(int manzil) => _$this._manzil = manzil;

  int _page;
  int get page => _$this._page;
  set page(int page) => _$this._page = page;

  int _ruku;
  int get ruku => _$this._ruku;
  set ruku(int ruku) => _$this._ruku = ruku;

  int _hizbQuarter;
  int get hizbQuarter => _$this._hizbQuarter;
  set hizbQuarter(int hizbQuarter) => _$this._hizbQuarter = hizbQuarter;

  bool _sajda;
  bool get sajda => _$this._sajda;
  set sajda(bool sajda) => _$this._sajda = sajda;

  AyahsBuilder();

  AyahsBuilder get _$this {
    if (_$v != null) {
      _number = _$v.number;
      _text = _$v.text;
      _numberInSurah = _$v.numberInSurah;
      _juz = _$v.juz;
      _manzil = _$v.manzil;
      _page = _$v.page;
      _ruku = _$v.ruku;
      _hizbQuarter = _$v.hizbQuarter;
      _sajda = _$v.sajda;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Ayahs other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Ayahs;
  }

  @override
  void update(void Function(AyahsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Ayahs build() {
    final _$result = _$v ??
        new _$Ayahs._(
            number: number,
            text: text,
            numberInSurah: numberInSurah,
            juz: juz,
            manzil: manzil,
            page: page,
            ruku: ruku,
            hizbQuarter: hizbQuarter,
            sajda: sajda);
    replace(_$result);
    return _$result;
  }
}

class _$Edition extends Edition {
  @override
  final String identifier;
  @override
  final String language;
  @override
  final String name;
  @override
  final String englishName;
  @override
  final String format;
  @override
  final String type;

  factory _$Edition([void Function(EditionBuilder) updates]) =>
      (new EditionBuilder()..update(updates)).build();

  _$Edition._(
      {this.identifier,
      this.language,
      this.name,
      this.englishName,
      this.format,
      this.type})
      : super._() {
    if (identifier == null) {
      throw new BuiltValueNullFieldError('Edition', 'identifier');
    }
    if (language == null) {
      throw new BuiltValueNullFieldError('Edition', 'language');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('Edition', 'name');
    }
    if (englishName == null) {
      throw new BuiltValueNullFieldError('Edition', 'englishName');
    }
    if (format == null) {
      throw new BuiltValueNullFieldError('Edition', 'format');
    }
    if (type == null) {
      throw new BuiltValueNullFieldError('Edition', 'type');
    }
  }

  @override
  Edition rebuild(void Function(EditionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EditionBuilder toBuilder() => new EditionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Edition &&
        identifier == other.identifier &&
        language == other.language &&
        name == other.name &&
        englishName == other.englishName &&
        format == other.format &&
        type == other.type;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, identifier.hashCode), language.hashCode),
                    name.hashCode),
                englishName.hashCode),
            format.hashCode),
        type.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Edition')
          ..add('identifier', identifier)
          ..add('language', language)
          ..add('name', name)
          ..add('englishName', englishName)
          ..add('format', format)
          ..add('type', type))
        .toString();
  }
}

class EditionBuilder implements Builder<Edition, EditionBuilder> {
  _$Edition _$v;

  String _identifier;
  String get identifier => _$this._identifier;
  set identifier(String identifier) => _$this._identifier = identifier;

  String _language;
  String get language => _$this._language;
  set language(String language) => _$this._language = language;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _englishName;
  String get englishName => _$this._englishName;
  set englishName(String englishName) => _$this._englishName = englishName;

  String _format;
  String get format => _$this._format;
  set format(String format) => _$this._format = format;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  EditionBuilder();

  EditionBuilder get _$this {
    if (_$v != null) {
      _identifier = _$v.identifier;
      _language = _$v.language;
      _name = _$v.name;
      _englishName = _$v.englishName;
      _format = _$v.format;
      _type = _$v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Edition other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Edition;
  }

  @override
  void update(void Function(EditionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Edition build() {
    final _$result = _$v ??
        new _$Edition._(
            identifier: identifier,
            language: language,
            name: name,
            englishName: englishName,
            format: format,
            type: type);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
