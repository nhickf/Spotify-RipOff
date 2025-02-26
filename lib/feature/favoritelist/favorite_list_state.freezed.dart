// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavoriteListState {
  Layout get layout => throw _privateConstructorUsedError;

  /// Create a copy of FavoriteListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FavoriteListStateCopyWith<FavoriteListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteListStateCopyWith<$Res> {
  factory $FavoriteListStateCopyWith(
          FavoriteListState value, $Res Function(FavoriteListState) then) =
      _$FavoriteListStateCopyWithImpl<$Res, FavoriteListState>;
  @useResult
  $Res call({Layout layout});
}

/// @nodoc
class _$FavoriteListStateCopyWithImpl<$Res, $Val extends FavoriteListState>
    implements $FavoriteListStateCopyWith<$Res> {
  _$FavoriteListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavoriteListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? layout = null,
  }) {
    return _then(_value.copyWith(
      layout: null == layout
          ? _value.layout
          : layout // ignore: cast_nullable_to_non_nullable
              as Layout,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavoriteListStateImplCopyWith<$Res>
    implements $FavoriteListStateCopyWith<$Res> {
  factory _$$FavoriteListStateImplCopyWith(_$FavoriteListStateImpl value,
          $Res Function(_$FavoriteListStateImpl) then) =
      __$$FavoriteListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Layout layout});
}

/// @nodoc
class __$$FavoriteListStateImplCopyWithImpl<$Res>
    extends _$FavoriteListStateCopyWithImpl<$Res, _$FavoriteListStateImpl>
    implements _$$FavoriteListStateImplCopyWith<$Res> {
  __$$FavoriteListStateImplCopyWithImpl(_$FavoriteListStateImpl _value,
      $Res Function(_$FavoriteListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoriteListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? layout = null,
  }) {
    return _then(_$FavoriteListStateImpl(
      layout: null == layout
          ? _value.layout
          : layout // ignore: cast_nullable_to_non_nullable
              as Layout,
    ));
  }
}

/// @nodoc

class _$FavoriteListStateImpl implements _FavoriteListState {
  _$FavoriteListStateImpl({this.layout = Layout.list});

  @override
  @JsonKey()
  final Layout layout;

  @override
  String toString() {
    return 'FavoriteListState(layout: $layout)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteListStateImpl &&
            (identical(other.layout, layout) || other.layout == layout));
  }

  @override
  int get hashCode => Object.hash(runtimeType, layout);

  /// Create a copy of FavoriteListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteListStateImplCopyWith<_$FavoriteListStateImpl> get copyWith =>
      __$$FavoriteListStateImplCopyWithImpl<_$FavoriteListStateImpl>(
          this, _$identity);
}

abstract class _FavoriteListState implements FavoriteListState {
  factory _FavoriteListState({final Layout layout}) = _$FavoriteListStateImpl;

  @override
  Layout get layout;

  /// Create a copy of FavoriteListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FavoriteListStateImplCopyWith<_$FavoriteListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
