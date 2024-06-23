// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MpdImage {
  int? get size => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  int? get binary => throw _privateConstructorUsedError;
  List<int> get bytes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MpdImageCopyWith<MpdImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MpdImageCopyWith<$Res> {
  factory $MpdImageCopyWith(MpdImage value, $Res Function(MpdImage) then) =
      _$MpdImageCopyWithImpl<$Res, MpdImage>;
  @useResult
  $Res call({int? size, String? type, int? binary, List<int> bytes});
}

/// @nodoc
class _$MpdImageCopyWithImpl<$Res, $Val extends MpdImage>
    implements $MpdImageCopyWith<$Res> {
  _$MpdImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = freezed,
    Object? type = freezed,
    Object? binary = freezed,
    Object? bytes = null,
  }) {
    return _then(_value.copyWith(
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      binary: freezed == binary
          ? _value.binary
          : binary // ignore: cast_nullable_to_non_nullable
              as int?,
      bytes: null == bytes
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MpdImageImplCopyWith<$Res>
    implements $MpdImageCopyWith<$Res> {
  factory _$$MpdImageImplCopyWith(
          _$MpdImageImpl value, $Res Function(_$MpdImageImpl) then) =
      __$$MpdImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? size, String? type, int? binary, List<int> bytes});
}

/// @nodoc
class __$$MpdImageImplCopyWithImpl<$Res>
    extends _$MpdImageCopyWithImpl<$Res, _$MpdImageImpl>
    implements _$$MpdImageImplCopyWith<$Res> {
  __$$MpdImageImplCopyWithImpl(
      _$MpdImageImpl _value, $Res Function(_$MpdImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = freezed,
    Object? type = freezed,
    Object? binary = freezed,
    Object? bytes = null,
  }) {
    return _then(_$MpdImageImpl(
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      binary: freezed == binary
          ? _value.binary
          : binary // ignore: cast_nullable_to_non_nullable
              as int?,
      bytes: null == bytes
          ? _value._bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$MpdImageImpl implements _MpdImage {
  const _$MpdImageImpl(
      {this.size, this.type, this.binary, required final List<int> bytes})
      : _bytes = bytes;

  @override
  final int? size;
  @override
  final String? type;
  @override
  final int? binary;
  final List<int> _bytes;
  @override
  List<int> get bytes {
    if (_bytes is EqualUnmodifiableListView) return _bytes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bytes);
  }

  @override
  String toString() {
    return 'MpdImage(size: $size, type: $type, binary: $binary, bytes: $bytes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MpdImageImpl &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.binary, binary) || other.binary == binary) &&
            const DeepCollectionEquality().equals(other._bytes, _bytes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, size, type, binary,
      const DeepCollectionEquality().hash(_bytes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MpdImageImplCopyWith<_$MpdImageImpl> get copyWith =>
      __$$MpdImageImplCopyWithImpl<_$MpdImageImpl>(this, _$identity);
}

abstract class _MpdImage implements MpdImage {
  const factory _MpdImage(
      {final int? size,
      final String? type,
      final int? binary,
      required final List<int> bytes}) = _$MpdImageImpl;

  @override
  int? get size;
  @override
  String? get type;
  @override
  int? get binary;
  @override
  List<int> get bytes;
  @override
  @JsonKey(ignore: true)
  _$$MpdImageImplCopyWith<_$MpdImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
