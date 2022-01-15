// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'itunes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ITunes _$ITunesFromJson(Map<String, dynamic> json) {
  return _ITunes.fromJson(json);
}

/// @nodoc
class _$ITunesTearOff {
  const _$ITunesTearOff();

  _ITunes call({int? resultCount, List<Music>? results}) {
    return _ITunes(
      resultCount: resultCount,
      results: results,
    );
  }

  ITunes fromJson(Map<String, Object?> json) {
    return ITunes.fromJson(json);
  }
}

/// @nodoc
const $ITunes = _$ITunesTearOff();

/// @nodoc
mixin _$ITunes {
  int? get resultCount => throw _privateConstructorUsedError;
  List<Music>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ITunesCopyWith<ITunes> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ITunesCopyWith<$Res> {
  factory $ITunesCopyWith(ITunes value, $Res Function(ITunes) then) =
      _$ITunesCopyWithImpl<$Res>;
  $Res call({int? resultCount, List<Music>? results});
}

/// @nodoc
class _$ITunesCopyWithImpl<$Res> implements $ITunesCopyWith<$Res> {
  _$ITunesCopyWithImpl(this._value, this._then);

  final ITunes _value;
  // ignore: unused_field
  final $Res Function(ITunes) _then;

  @override
  $Res call({
    Object? resultCount = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      resultCount: resultCount == freezed
          ? _value.resultCount
          : resultCount // ignore: cast_nullable_to_non_nullable
              as int?,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Music>?,
    ));
  }
}

/// @nodoc
abstract class _$ITunesCopyWith<$Res> implements $ITunesCopyWith<$Res> {
  factory _$ITunesCopyWith(_ITunes value, $Res Function(_ITunes) then) =
      __$ITunesCopyWithImpl<$Res>;
  @override
  $Res call({int? resultCount, List<Music>? results});
}

/// @nodoc
class __$ITunesCopyWithImpl<$Res> extends _$ITunesCopyWithImpl<$Res>
    implements _$ITunesCopyWith<$Res> {
  __$ITunesCopyWithImpl(_ITunes _value, $Res Function(_ITunes) _then)
      : super(_value, (v) => _then(v as _ITunes));

  @override
  _ITunes get _value => super._value as _ITunes;

  @override
  $Res call({
    Object? resultCount = freezed,
    Object? results = freezed,
  }) {
    return _then(_ITunes(
      resultCount: resultCount == freezed
          ? _value.resultCount
          : resultCount // ignore: cast_nullable_to_non_nullable
              as int?,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Music>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ITunes implements _ITunes {
  _$_ITunes({this.resultCount, this.results});

  factory _$_ITunes.fromJson(Map<String, dynamic> json) =>
      _$$_ITunesFromJson(json);

  @override
  final int? resultCount;
  @override
  final List<Music>? results;

  @override
  String toString() {
    return 'ITunes(resultCount: $resultCount, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ITunes &&
            const DeepCollectionEquality()
                .equals(other.resultCount, resultCount) &&
            const DeepCollectionEquality().equals(other.results, results));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(resultCount),
      const DeepCollectionEquality().hash(results));

  @JsonKey(ignore: true)
  @override
  _$ITunesCopyWith<_ITunes> get copyWith =>
      __$ITunesCopyWithImpl<_ITunes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ITunesToJson(this);
  }
}

abstract class _ITunes implements ITunes {
  factory _ITunes({int? resultCount, List<Music>? results}) = _$_ITunes;

  factory _ITunes.fromJson(Map<String, dynamic> json) = _$_ITunes.fromJson;

  @override
  int? get resultCount;
  @override
  List<Music>? get results;
  @override
  @JsonKey(ignore: true)
  _$ITunesCopyWith<_ITunes> get copyWith => throw _privateConstructorUsedError;
}
