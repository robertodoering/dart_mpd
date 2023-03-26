// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mount.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MpdMount _$MpdMountFromJson(Map<String, dynamic> json) {
  return _MpdMount.fromJson(json);
}

/// @nodoc
mixin _$MpdMount {
  String? get mount => throw _privateConstructorUsedError;
  String? get storage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MpdMountCopyWith<MpdMount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MpdMountCopyWith<$Res> {
  factory $MpdMountCopyWith(MpdMount value, $Res Function(MpdMount) then) =
      _$MpdMountCopyWithImpl<$Res, MpdMount>;
  @useResult
  $Res call({String? mount, String? storage});
}

/// @nodoc
class _$MpdMountCopyWithImpl<$Res, $Val extends MpdMount>
    implements $MpdMountCopyWith<$Res> {
  _$MpdMountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mount = freezed,
    Object? storage = freezed,
  }) {
    return _then(_value.copyWith(
      mount: freezed == mount
          ? _value.mount
          : mount // ignore: cast_nullable_to_non_nullable
              as String?,
      storage: freezed == storage
          ? _value.storage
          : storage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MpdMountCopyWith<$Res> implements $MpdMountCopyWith<$Res> {
  factory _$$_MpdMountCopyWith(
          _$_MpdMount value, $Res Function(_$_MpdMount) then) =
      __$$_MpdMountCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? mount, String? storage});
}

/// @nodoc
class __$$_MpdMountCopyWithImpl<$Res>
    extends _$MpdMountCopyWithImpl<$Res, _$_MpdMount>
    implements _$$_MpdMountCopyWith<$Res> {
  __$$_MpdMountCopyWithImpl(
      _$_MpdMount _value, $Res Function(_$_MpdMount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mount = freezed,
    Object? storage = freezed,
  }) {
    return _then(_$_MpdMount(
      mount: freezed == mount
          ? _value.mount
          : mount // ignore: cast_nullable_to_non_nullable
              as String?,
      storage: freezed == storage
          ? _value.storage
          : storage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MpdMount implements _MpdMount {
  const _$_MpdMount({this.mount, this.storage});

  factory _$_MpdMount.fromJson(Map<String, dynamic> json) =>
      _$$_MpdMountFromJson(json);

  @override
  final String? mount;
  @override
  final String? storage;

  @override
  String toString() {
    return 'MpdMount(mount: $mount, storage: $storage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MpdMount &&
            (identical(other.mount, mount) || other.mount == mount) &&
            (identical(other.storage, storage) || other.storage == storage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, mount, storage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MpdMountCopyWith<_$_MpdMount> get copyWith =>
      __$$_MpdMountCopyWithImpl<_$_MpdMount>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MpdMountToJson(
      this,
    );
  }
}

abstract class _MpdMount implements MpdMount {
  const factory _MpdMount({final String? mount, final String? storage}) =
      _$_MpdMount;

  factory _MpdMount.fromJson(Map<String, dynamic> json) = _$_MpdMount.fromJson;

  @override
  String? get mount;
  @override
  String? get storage;
  @override
  @JsonKey(ignore: true)
  _$$_MpdMountCopyWith<_$_MpdMount> get copyWith =>
      throw _privateConstructorUsedError;
}
