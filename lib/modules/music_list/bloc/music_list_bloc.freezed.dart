// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'music_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MusicListEventTearOff {
  const _$MusicListEventTearOff();

  SearchByArtist searchByArtist({String? artist}) {
    return SearchByArtist(
      artist: artist,
    );
  }
}

/// @nodoc
const $MusicListEvent = _$MusicListEventTearOff();

/// @nodoc
mixin _$MusicListEvent {
  String? get artist => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? artist) searchByArtist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? artist)? searchByArtist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? artist)? searchByArtist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchByArtist value) searchByArtist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchByArtist value)? searchByArtist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchByArtist value)? searchByArtist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MusicListEventCopyWith<MusicListEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MusicListEventCopyWith<$Res> {
  factory $MusicListEventCopyWith(
          MusicListEvent value, $Res Function(MusicListEvent) then) =
      _$MusicListEventCopyWithImpl<$Res>;
  $Res call({String? artist});
}

/// @nodoc
class _$MusicListEventCopyWithImpl<$Res>
    implements $MusicListEventCopyWith<$Res> {
  _$MusicListEventCopyWithImpl(this._value, this._then);

  final MusicListEvent _value;
  // ignore: unused_field
  final $Res Function(MusicListEvent) _then;

  @override
  $Res call({
    Object? artist = freezed,
  }) {
    return _then(_value.copyWith(
      artist: artist == freezed
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class $SearchByArtistCopyWith<$Res>
    implements $MusicListEventCopyWith<$Res> {
  factory $SearchByArtistCopyWith(
          SearchByArtist value, $Res Function(SearchByArtist) then) =
      _$SearchByArtistCopyWithImpl<$Res>;
  @override
  $Res call({String? artist});
}

/// @nodoc
class _$SearchByArtistCopyWithImpl<$Res>
    extends _$MusicListEventCopyWithImpl<$Res>
    implements $SearchByArtistCopyWith<$Res> {
  _$SearchByArtistCopyWithImpl(
      SearchByArtist _value, $Res Function(SearchByArtist) _then)
      : super(_value, (v) => _then(v as SearchByArtist));

  @override
  SearchByArtist get _value => super._value as SearchByArtist;

  @override
  $Res call({
    Object? artist = freezed,
  }) {
    return _then(SearchByArtist(
      artist: artist == freezed
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SearchByArtist implements SearchByArtist {
  const _$SearchByArtist({this.artist});

  @override
  final String? artist;

  @override
  String toString() {
    return 'MusicListEvent.searchByArtist(artist: $artist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchByArtist &&
            const DeepCollectionEquality().equals(other.artist, artist));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(artist));

  @JsonKey(ignore: true)
  @override
  $SearchByArtistCopyWith<SearchByArtist> get copyWith =>
      _$SearchByArtistCopyWithImpl<SearchByArtist>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? artist) searchByArtist,
  }) {
    return searchByArtist(artist);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? artist)? searchByArtist,
  }) {
    return searchByArtist?.call(artist);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? artist)? searchByArtist,
    required TResult orElse(),
  }) {
    if (searchByArtist != null) {
      return searchByArtist(artist);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchByArtist value) searchByArtist,
  }) {
    return searchByArtist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchByArtist value)? searchByArtist,
  }) {
    return searchByArtist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchByArtist value)? searchByArtist,
    required TResult orElse(),
  }) {
    if (searchByArtist != null) {
      return searchByArtist(this);
    }
    return orElse();
  }
}

abstract class SearchByArtist implements MusicListEvent {
  const factory SearchByArtist({String? artist}) = _$SearchByArtist;

  @override
  String? get artist;
  @override
  @JsonKey(ignore: true)
  $SearchByArtistCopyWith<SearchByArtist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$MusicListStateTearOff {
  const _$MusicListStateTearOff();

  MusicListInitial initial() {
    return const MusicListInitial();
  }

  MusicListLoaded loaded({ITunes? loadedData}) {
    return MusicListLoaded(
      loadedData: loadedData,
    );
  }

  MusicListError error({NetworkError? error}) {
    return MusicListError(
      error: error,
    );
  }

  MusicListLoading loading() {
    return const MusicListLoading();
  }
}

/// @nodoc
const $MusicListState = _$MusicListStateTearOff();

/// @nodoc
mixin _$MusicListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ITunes? loadedData) loaded,
    required TResult Function(NetworkError? error) error,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ITunes? loadedData)? loaded,
    TResult Function(NetworkError? error)? error,
    TResult Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ITunes? loadedData)? loaded,
    TResult Function(NetworkError? error)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MusicListInitial value) initial,
    required TResult Function(MusicListLoaded value) loaded,
    required TResult Function(MusicListError value) error,
    required TResult Function(MusicListLoading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MusicListInitial value)? initial,
    TResult Function(MusicListLoaded value)? loaded,
    TResult Function(MusicListError value)? error,
    TResult Function(MusicListLoading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MusicListInitial value)? initial,
    TResult Function(MusicListLoaded value)? loaded,
    TResult Function(MusicListError value)? error,
    TResult Function(MusicListLoading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MusicListStateCopyWith<$Res> {
  factory $MusicListStateCopyWith(
          MusicListState value, $Res Function(MusicListState) then) =
      _$MusicListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MusicListStateCopyWithImpl<$Res>
    implements $MusicListStateCopyWith<$Res> {
  _$MusicListStateCopyWithImpl(this._value, this._then);

  final MusicListState _value;
  // ignore: unused_field
  final $Res Function(MusicListState) _then;
}

/// @nodoc
abstract class $MusicListInitialCopyWith<$Res> {
  factory $MusicListInitialCopyWith(
          MusicListInitial value, $Res Function(MusicListInitial) then) =
      _$MusicListInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$MusicListInitialCopyWithImpl<$Res>
    extends _$MusicListStateCopyWithImpl<$Res>
    implements $MusicListInitialCopyWith<$Res> {
  _$MusicListInitialCopyWithImpl(
      MusicListInitial _value, $Res Function(MusicListInitial) _then)
      : super(_value, (v) => _then(v as MusicListInitial));

  @override
  MusicListInitial get _value => super._value as MusicListInitial;
}

/// @nodoc

class _$MusicListInitial implements MusicListInitial {
  const _$MusicListInitial();

  @override
  String toString() {
    return 'MusicListState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MusicListInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ITunes? loadedData) loaded,
    required TResult Function(NetworkError? error) error,
    required TResult Function() loading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ITunes? loadedData)? loaded,
    TResult Function(NetworkError? error)? error,
    TResult Function()? loading,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ITunes? loadedData)? loaded,
    TResult Function(NetworkError? error)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MusicListInitial value) initial,
    required TResult Function(MusicListLoaded value) loaded,
    required TResult Function(MusicListError value) error,
    required TResult Function(MusicListLoading value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MusicListInitial value)? initial,
    TResult Function(MusicListLoaded value)? loaded,
    TResult Function(MusicListError value)? error,
    TResult Function(MusicListLoading value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MusicListInitial value)? initial,
    TResult Function(MusicListLoaded value)? loaded,
    TResult Function(MusicListError value)? error,
    TResult Function(MusicListLoading value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class MusicListInitial implements MusicListState {
  const factory MusicListInitial() = _$MusicListInitial;
}

/// @nodoc
abstract class $MusicListLoadedCopyWith<$Res> {
  factory $MusicListLoadedCopyWith(
          MusicListLoaded value, $Res Function(MusicListLoaded) then) =
      _$MusicListLoadedCopyWithImpl<$Res>;
  $Res call({ITunes? loadedData});

  $ITunesCopyWith<$Res>? get loadedData;
}

/// @nodoc
class _$MusicListLoadedCopyWithImpl<$Res>
    extends _$MusicListStateCopyWithImpl<$Res>
    implements $MusicListLoadedCopyWith<$Res> {
  _$MusicListLoadedCopyWithImpl(
      MusicListLoaded _value, $Res Function(MusicListLoaded) _then)
      : super(_value, (v) => _then(v as MusicListLoaded));

  @override
  MusicListLoaded get _value => super._value as MusicListLoaded;

  @override
  $Res call({
    Object? loadedData = freezed,
  }) {
    return _then(MusicListLoaded(
      loadedData: loadedData == freezed
          ? _value.loadedData
          : loadedData // ignore: cast_nullable_to_non_nullable
              as ITunes?,
    ));
  }

  @override
  $ITunesCopyWith<$Res>? get loadedData {
    if (_value.loadedData == null) {
      return null;
    }

    return $ITunesCopyWith<$Res>(_value.loadedData!, (value) {
      return _then(_value.copyWith(loadedData: value));
    });
  }
}

/// @nodoc

class _$MusicListLoaded implements MusicListLoaded {
  const _$MusicListLoaded({this.loadedData});

  @override
  final ITunes? loadedData;

  @override
  String toString() {
    return 'MusicListState.loaded(loadedData: $loadedData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MusicListLoaded &&
            const DeepCollectionEquality()
                .equals(other.loadedData, loadedData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(loadedData));

  @JsonKey(ignore: true)
  @override
  $MusicListLoadedCopyWith<MusicListLoaded> get copyWith =>
      _$MusicListLoadedCopyWithImpl<MusicListLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ITunes? loadedData) loaded,
    required TResult Function(NetworkError? error) error,
    required TResult Function() loading,
  }) {
    return loaded(loadedData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ITunes? loadedData)? loaded,
    TResult Function(NetworkError? error)? error,
    TResult Function()? loading,
  }) {
    return loaded?.call(loadedData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ITunes? loadedData)? loaded,
    TResult Function(NetworkError? error)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(loadedData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MusicListInitial value) initial,
    required TResult Function(MusicListLoaded value) loaded,
    required TResult Function(MusicListError value) error,
    required TResult Function(MusicListLoading value) loading,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MusicListInitial value)? initial,
    TResult Function(MusicListLoaded value)? loaded,
    TResult Function(MusicListError value)? error,
    TResult Function(MusicListLoading value)? loading,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MusicListInitial value)? initial,
    TResult Function(MusicListLoaded value)? loaded,
    TResult Function(MusicListError value)? error,
    TResult Function(MusicListLoading value)? loading,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class MusicListLoaded implements MusicListState {
  const factory MusicListLoaded({ITunes? loadedData}) = _$MusicListLoaded;

  ITunes? get loadedData;
  @JsonKey(ignore: true)
  $MusicListLoadedCopyWith<MusicListLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MusicListErrorCopyWith<$Res> {
  factory $MusicListErrorCopyWith(
          MusicListError value, $Res Function(MusicListError) then) =
      _$MusicListErrorCopyWithImpl<$Res>;
  $Res call({NetworkError? error});
}

/// @nodoc
class _$MusicListErrorCopyWithImpl<$Res>
    extends _$MusicListStateCopyWithImpl<$Res>
    implements $MusicListErrorCopyWith<$Res> {
  _$MusicListErrorCopyWithImpl(
      MusicListError _value, $Res Function(MusicListError) _then)
      : super(_value, (v) => _then(v as MusicListError));

  @override
  MusicListError get _value => super._value as MusicListError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(MusicListError(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as NetworkError?,
    ));
  }
}

/// @nodoc

class _$MusicListError implements MusicListError {
  const _$MusicListError({this.error});

  @override
  final NetworkError? error;

  @override
  String toString() {
    return 'MusicListState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MusicListError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $MusicListErrorCopyWith<MusicListError> get copyWith =>
      _$MusicListErrorCopyWithImpl<MusicListError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ITunes? loadedData) loaded,
    required TResult Function(NetworkError? error) error,
    required TResult Function() loading,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ITunes? loadedData)? loaded,
    TResult Function(NetworkError? error)? error,
    TResult Function()? loading,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ITunes? loadedData)? loaded,
    TResult Function(NetworkError? error)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MusicListInitial value) initial,
    required TResult Function(MusicListLoaded value) loaded,
    required TResult Function(MusicListError value) error,
    required TResult Function(MusicListLoading value) loading,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MusicListInitial value)? initial,
    TResult Function(MusicListLoaded value)? loaded,
    TResult Function(MusicListError value)? error,
    TResult Function(MusicListLoading value)? loading,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MusicListInitial value)? initial,
    TResult Function(MusicListLoaded value)? loaded,
    TResult Function(MusicListError value)? error,
    TResult Function(MusicListLoading value)? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class MusicListError implements MusicListState {
  const factory MusicListError({NetworkError? error}) = _$MusicListError;

  NetworkError? get error;
  @JsonKey(ignore: true)
  $MusicListErrorCopyWith<MusicListError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MusicListLoadingCopyWith<$Res> {
  factory $MusicListLoadingCopyWith(
          MusicListLoading value, $Res Function(MusicListLoading) then) =
      _$MusicListLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$MusicListLoadingCopyWithImpl<$Res>
    extends _$MusicListStateCopyWithImpl<$Res>
    implements $MusicListLoadingCopyWith<$Res> {
  _$MusicListLoadingCopyWithImpl(
      MusicListLoading _value, $Res Function(MusicListLoading) _then)
      : super(_value, (v) => _then(v as MusicListLoading));

  @override
  MusicListLoading get _value => super._value as MusicListLoading;
}

/// @nodoc

class _$MusicListLoading implements MusicListLoading {
  const _$MusicListLoading();

  @override
  String toString() {
    return 'MusicListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MusicListLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ITunes? loadedData) loaded,
    required TResult Function(NetworkError? error) error,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ITunes? loadedData)? loaded,
    TResult Function(NetworkError? error)? error,
    TResult Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ITunes? loadedData)? loaded,
    TResult Function(NetworkError? error)? error,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MusicListInitial value) initial,
    required TResult Function(MusicListLoaded value) loaded,
    required TResult Function(MusicListError value) error,
    required TResult Function(MusicListLoading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MusicListInitial value)? initial,
    TResult Function(MusicListLoaded value)? loaded,
    TResult Function(MusicListError value)? error,
    TResult Function(MusicListLoading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MusicListInitial value)? initial,
    TResult Function(MusicListLoaded value)? loaded,
    TResult Function(MusicListError value)? error,
    TResult Function(MusicListLoading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MusicListLoading implements MusicListState {
  const factory MusicListLoading() = _$MusicListLoading;
}
