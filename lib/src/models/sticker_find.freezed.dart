// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sticker_find.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MpdStickerFind {
  String get file => throw _privateConstructorUsedError;
  MapEntry<String, String> get sticker => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MpdStickerFindCopyWith<MpdStickerFind> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MpdStickerFindCopyWith<$Res> {
  factory $MpdStickerFindCopyWith(
          MpdStickerFind value, $Res Function(MpdStickerFind) then) =
      _$MpdStickerFindCopyWithImpl<$Res, MpdStickerFind>;
  @useResult
  $Res call({String file, MapEntry<String, String> sticker});
}

/// @nodoc
class _$MpdStickerFindCopyWithImpl<$Res, $Val extends MpdStickerFind>
    implements $MpdStickerFindCopyWith<$Res> {
  _$MpdStickerFindCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
    Object? sticker = null,
  }) {
    return _then(_value.copyWith(
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String,
      sticker: null == sticker
          ? _value.sticker
          : sticker // ignore: cast_nullable_to_non_nullable
              as MapEntry<String, String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MpdStickerFindImplCopyWith<$Res>
    implements $MpdStickerFindCopyWith<$Res> {
  factory _$$MpdStickerFindImplCopyWith(_$MpdStickerFindImpl value,
          $Res Function(_$MpdStickerFindImpl) then) =
      __$$MpdStickerFindImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String file, MapEntry<String, String> sticker});
}

/// @nodoc
class __$$MpdStickerFindImplCopyWithImpl<$Res>
    extends _$MpdStickerFindCopyWithImpl<$Res, _$MpdStickerFindImpl>
    implements _$$MpdStickerFindImplCopyWith<$Res> {
  __$$MpdStickerFindImplCopyWithImpl(
      _$MpdStickerFindImpl _value, $Res Function(_$MpdStickerFindImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
    Object? sticker = null,
  }) {
    return _then(_$MpdStickerFindImpl(
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String,
      sticker: null == sticker
          ? _value.sticker
          : sticker // ignore: cast_nullable_to_non_nullable
              as MapEntry<String, String>,
    ));
  }
}

/// @nodoc

class _$MpdStickerFindImpl implements _MpdStickerFind {
  const _$MpdStickerFindImpl({required this.file, required this.sticker});

  @override
  final String file;
  @override
  final MapEntry<String, String> sticker;

  @override
  String toString() {
    return 'MpdStickerFind(file: $file, sticker: $sticker)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MpdStickerFindImpl &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.sticker, sticker) || other.sticker == sticker));
  }

  @override
  int get hashCode => Object.hash(runtimeType, file, sticker);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MpdStickerFindImplCopyWith<_$MpdStickerFindImpl> get copyWith =>
      __$$MpdStickerFindImplCopyWithImpl<_$MpdStickerFindImpl>(
          this, _$identity);
}

abstract class _MpdStickerFind implements MpdStickerFind {
  const factory _MpdStickerFind(
      {required final String file,
      required final MapEntry<String, String> sticker}) = _$MpdStickerFindImpl;

  @override
  String get file;
  @override
  MapEntry<String, String> get sticker;
  @override
  @JsonKey(ignore: true)
  _$$MpdStickerFindImplCopyWith<_$MpdStickerFindImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
