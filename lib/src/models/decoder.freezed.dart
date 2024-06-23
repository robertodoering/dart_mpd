// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'decoder.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MpdDecoder {
  String? get plugin => throw _privateConstructorUsedError;
  List<String> get suffix => throw _privateConstructorUsedError;
  List<String> get mimeType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MpdDecoderCopyWith<MpdDecoder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MpdDecoderCopyWith<$Res> {
  factory $MpdDecoderCopyWith(
          MpdDecoder value, $Res Function(MpdDecoder) then) =
      _$MpdDecoderCopyWithImpl<$Res, MpdDecoder>;
  @useResult
  $Res call({String? plugin, List<String> suffix, List<String> mimeType});
}

/// @nodoc
class _$MpdDecoderCopyWithImpl<$Res, $Val extends MpdDecoder>
    implements $MpdDecoderCopyWith<$Res> {
  _$MpdDecoderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plugin = freezed,
    Object? suffix = null,
    Object? mimeType = null,
  }) {
    return _then(_value.copyWith(
      plugin: freezed == plugin
          ? _value.plugin
          : plugin // ignore: cast_nullable_to_non_nullable
              as String?,
      suffix: null == suffix
          ? _value.suffix
          : suffix // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mimeType: null == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MpdDecoderImplCopyWith<$Res>
    implements $MpdDecoderCopyWith<$Res> {
  factory _$$MpdDecoderImplCopyWith(
          _$MpdDecoderImpl value, $Res Function(_$MpdDecoderImpl) then) =
      __$$MpdDecoderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? plugin, List<String> suffix, List<String> mimeType});
}

/// @nodoc
class __$$MpdDecoderImplCopyWithImpl<$Res>
    extends _$MpdDecoderCopyWithImpl<$Res, _$MpdDecoderImpl>
    implements _$$MpdDecoderImplCopyWith<$Res> {
  __$$MpdDecoderImplCopyWithImpl(
      _$MpdDecoderImpl _value, $Res Function(_$MpdDecoderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plugin = freezed,
    Object? suffix = null,
    Object? mimeType = null,
  }) {
    return _then(_$MpdDecoderImpl(
      plugin: freezed == plugin
          ? _value.plugin
          : plugin // ignore: cast_nullable_to_non_nullable
              as String?,
      suffix: null == suffix
          ? _value._suffix
          : suffix // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mimeType: null == mimeType
          ? _value._mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$MpdDecoderImpl implements _MpdDecoder {
  const _$MpdDecoderImpl(
      {this.plugin,
      required final List<String> suffix,
      required final List<String> mimeType})
      : _suffix = suffix,
        _mimeType = mimeType;

  @override
  final String? plugin;
  final List<String> _suffix;
  @override
  List<String> get suffix {
    if (_suffix is EqualUnmodifiableListView) return _suffix;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suffix);
  }

  final List<String> _mimeType;
  @override
  List<String> get mimeType {
    if (_mimeType is EqualUnmodifiableListView) return _mimeType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mimeType);
  }

  @override
  String toString() {
    return 'MpdDecoder(plugin: $plugin, suffix: $suffix, mimeType: $mimeType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MpdDecoderImpl &&
            (identical(other.plugin, plugin) || other.plugin == plugin) &&
            const DeepCollectionEquality().equals(other._suffix, _suffix) &&
            const DeepCollectionEquality().equals(other._mimeType, _mimeType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      plugin,
      const DeepCollectionEquality().hash(_suffix),
      const DeepCollectionEquality().hash(_mimeType));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MpdDecoderImplCopyWith<_$MpdDecoderImpl> get copyWith =>
      __$$MpdDecoderImplCopyWithImpl<_$MpdDecoderImpl>(this, _$identity);
}

abstract class _MpdDecoder implements MpdDecoder {
  const factory _MpdDecoder(
      {final String? plugin,
      required final List<String> suffix,
      required final List<String> mimeType}) = _$MpdDecoderImpl;

  @override
  String? get plugin;
  @override
  List<String> get suffix;
  @override
  List<String> get mimeType;
  @override
  @JsonKey(ignore: true)
  _$$MpdDecoderImplCopyWith<_$MpdDecoderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
