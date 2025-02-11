// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Page<T> {
  List<T>? get item => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  /// Create a copy of Page
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PageCopyWith<T, Page<T>> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageCopyWith<T, $Res> {
  factory $PageCopyWith(Page<T> value, $Res Function(Page<T>) then) =
      _$PageCopyWithImpl<T, $Res, Page<T>>;
  @useResult
  $Res call({List<T>? item, int offset, int limit});
}

/// @nodoc
class _$PageCopyWithImpl<T, $Res, $Val extends Page<T>>
    implements $PageCopyWith<T, $Res> {
  _$PageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Page
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = freezed,
    Object? offset = null,
    Object? limit = null,
  }) {
    return _then(_value.copyWith(
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as List<T>?,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PageImplCopyWith<T, $Res> implements $PageCopyWith<T, $Res> {
  factory _$$PageImplCopyWith(
          _$PageImpl<T> value, $Res Function(_$PageImpl<T>) then) =
      __$$PageImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({List<T>? item, int offset, int limit});
}

/// @nodoc
class __$$PageImplCopyWithImpl<T, $Res>
    extends _$PageCopyWithImpl<T, $Res, _$PageImpl<T>>
    implements _$$PageImplCopyWith<T, $Res> {
  __$$PageImplCopyWithImpl(
      _$PageImpl<T> _value, $Res Function(_$PageImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of Page
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = freezed,
    Object? offset = null,
    Object? limit = null,
  }) {
    return _then(_$PageImpl<T>(
      item: freezed == item
          ? _value._item
          : item // ignore: cast_nullable_to_non_nullable
              as List<T>?,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PageImpl<T> implements _Page<T> {
  _$PageImpl(
      {required final List<T>? item, required this.offset, required this.limit})
      : _item = item;

  final List<T>? _item;
  @override
  List<T>? get item {
    final value = _item;
    if (value == null) return null;
    if (_item is EqualUnmodifiableListView) return _item;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int offset;
  @override
  final int limit;

  @override
  String toString() {
    return 'Page<$T>(item: $item, offset: $offset, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageImpl<T> &&
            const DeepCollectionEquality().equals(other._item, _item) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_item), offset, limit);

  /// Create a copy of Page
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PageImplCopyWith<T, _$PageImpl<T>> get copyWith =>
      __$$PageImplCopyWithImpl<T, _$PageImpl<T>>(this, _$identity);
}

abstract class _Page<T> implements Page<T> {
  factory _Page(
      {required final List<T>? item,
      required final int offset,
      required final int limit}) = _$PageImpl<T>;

  @override
  List<T>? get item;
  @override
  int get offset;
  @override
  int get limit;

  /// Create a copy of Page
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PageImplCopyWith<T, _$PageImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
