// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'song_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SongListState {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get coverImage => throw _privateConstructorUsedError;
  List<Favorite>? get favorites => throw _privateConstructorUsedError;
  List<Track>? get tracks => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  /// Create a copy of SongListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SongListStateCopyWith<SongListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongListStateCopyWith<$Res> {
  factory $SongListStateCopyWith(
          SongListState value, $Res Function(SongListState) then) =
      _$SongListStateCopyWithImpl<$Res, SongListState>;
  @useResult
  $Res call(
      {String title,
      String description,
      String coverImage,
      List<Favorite>? favorites,
      List<Track>? tracks,
      String? error,
      bool isLoading});
}

/// @nodoc
class _$SongListStateCopyWithImpl<$Res, $Val extends SongListState>
    implements $SongListStateCopyWith<$Res> {
  _$SongListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SongListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? coverImage = null,
    Object? favorites = freezed,
    Object? tracks = freezed,
    Object? error = freezed,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      coverImage: null == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String,
      favorites: freezed == favorites
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<Favorite>?,
      tracks: freezed == tracks
          ? _value.tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as List<Track>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SongListStateImplCopyWith<$Res>
    implements $SongListStateCopyWith<$Res> {
  factory _$$SongListStateImplCopyWith(
          _$SongListStateImpl value, $Res Function(_$SongListStateImpl) then) =
      __$$SongListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      String coverImage,
      List<Favorite>? favorites,
      List<Track>? tracks,
      String? error,
      bool isLoading});
}

/// @nodoc
class __$$SongListStateImplCopyWithImpl<$Res>
    extends _$SongListStateCopyWithImpl<$Res, _$SongListStateImpl>
    implements _$$SongListStateImplCopyWith<$Res> {
  __$$SongListStateImplCopyWithImpl(
      _$SongListStateImpl _value, $Res Function(_$SongListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SongListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? coverImage = null,
    Object? favorites = freezed,
    Object? tracks = freezed,
    Object? error = freezed,
    Object? isLoading = null,
  }) {
    return _then(_$SongListStateImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      coverImage: null == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String,
      favorites: freezed == favorites
          ? _value._favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<Favorite>?,
      tracks: freezed == tracks
          ? _value._tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as List<Track>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SongListStateImpl implements _SongListState {
  _$SongListStateImpl(
      {this.title = "",
      this.description = "",
      this.coverImage = "",
      final List<Favorite>? favorites,
      final List<Track>? tracks,
      this.error,
      this.isLoading = true})
      : _favorites = favorites,
        _tracks = tracks;

  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String coverImage;
  final List<Favorite>? _favorites;
  @override
  List<Favorite>? get favorites {
    final value = _favorites;
    if (value == null) return null;
    if (_favorites is EqualUnmodifiableListView) return _favorites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Track>? _tracks;
  @override
  List<Track>? get tracks {
    final value = _tracks;
    if (value == null) return null;
    if (_tracks is EqualUnmodifiableListView) return _tracks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? error;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'SongListState(title: $title, description: $description, coverImage: $coverImage, favorites: $favorites, tracks: $tracks, error: $error, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SongListStateImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.coverImage, coverImage) ||
                other.coverImage == coverImage) &&
            const DeepCollectionEquality()
                .equals(other._favorites, _favorites) &&
            const DeepCollectionEquality().equals(other._tracks, _tracks) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      coverImage,
      const DeepCollectionEquality().hash(_favorites),
      const DeepCollectionEquality().hash(_tracks),
      error,
      isLoading);

  /// Create a copy of SongListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SongListStateImplCopyWith<_$SongListStateImpl> get copyWith =>
      __$$SongListStateImplCopyWithImpl<_$SongListStateImpl>(this, _$identity);
}

abstract class _SongListState implements SongListState {
  factory _SongListState(
      {final String title,
      final String description,
      final String coverImage,
      final List<Favorite>? favorites,
      final List<Track>? tracks,
      final String? error,
      final bool isLoading}) = _$SongListStateImpl;

  @override
  String get title;
  @override
  String get description;
  @override
  String get coverImage;
  @override
  List<Favorite>? get favorites;
  @override
  List<Track>? get tracks;
  @override
  String? get error;
  @override
  bool get isLoading;

  /// Create a copy of SongListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SongListStateImplCopyWith<_$SongListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
