// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'count.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MpdCount {
  String? get group => throw _privateConstructorUsedError;
  int? get songs => throw _privateConstructorUsedError;
  int? get playtime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MpdCountCopyWith<MpdCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MpdCountCopyWith<$Res> {
  factory $MpdCountCopyWith(MpdCount value, $Res Function(MpdCount) then) =
      _$MpdCountCopyWithImpl<$Res, MpdCount>;
  @useResult
  $Res call({String? group, int? songs, int? playtime});
}

/// @nodoc
class _$MpdCountCopyWithImpl<$Res, $Val extends MpdCount>
    implements $MpdCountCopyWith<$Res> {
  _$MpdCountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group = freezed,
    Object? songs = freezed,
    Object? playtime = freezed,
  }) {
    return _then(_value.copyWith(
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String?,
      songs: freezed == songs
          ? _value.songs
          : songs // ignore: cast_nullable_to_non_nullable
              as int?,
      playtime: freezed == playtime
          ? _value.playtime
          : playtime // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MpdCountImplCopyWith<$Res>
    implements $MpdCountCopyWith<$Res> {
  factory _$$MpdCountImplCopyWith(
          _$MpdCountImpl value, $Res Function(_$MpdCountImpl) then) =
      __$$MpdCountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? group, int? songs, int? playtime});
}

/// @nodoc
class __$$MpdCountImplCopyWithImpl<$Res>
    extends _$MpdCountCopyWithImpl<$Res, _$MpdCountImpl>
    implements _$$MpdCountImplCopyWith<$Res> {
  __$$MpdCountImplCopyWithImpl(
      _$MpdCountImpl _value, $Res Function(_$MpdCountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group = freezed,
    Object? songs = freezed,
    Object? playtime = freezed,
  }) {
    return _then(_$MpdCountImpl(
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String?,
      songs: freezed == songs
          ? _value.songs
          : songs // ignore: cast_nullable_to_non_nullable
              as int?,
      playtime: freezed == playtime
          ? _value.playtime
          : playtime // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$MpdCountImpl implements _MpdCount {
  const _$MpdCountImpl({this.group, this.songs, this.playtime});

  @override
  final String? group;
  @override
  final int? songs;
  @override
  final int? playtime;

  @override
  String toString() {
    return 'MpdCount(group: $group, songs: $songs, playtime: $playtime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MpdCountImpl &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.songs, songs) || other.songs == songs) &&
            (identical(other.playtime, playtime) ||
                other.playtime == playtime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, group, songs, playtime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MpdCountImplCopyWith<_$MpdCountImpl> get copyWith =>
      __$$MpdCountImplCopyWithImpl<_$MpdCountImpl>(this, _$identity);
}

abstract class _MpdCount implements MpdCount {
  const factory _MpdCount(
      {final String? group,
      final int? songs,
      final int? playtime}) = _$MpdCountImpl;

  @override
  String? get group;
  @override
  int? get songs;
  @override
  int? get playtime;
  @override
  @JsonKey(ignore: true)
  _$$MpdCountImplCopyWith<_$MpdCountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
