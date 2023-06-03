// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playlist_modified.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlaylistModified _$PlaylistModifiedFromJson(Map<String, dynamic> json) {
  return _PlaylistModified.fromJson(json);
}

/// @nodoc
mixin _$PlaylistModified {
  @JsonKey(fromJson: parseStringSafe)
  String get playlist => throw _privateConstructorUsedError;
  @JsonKey(name: 'Last-Modified', fromJson: parseDateTime)
  DateTime? get lastModified => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaylistModifiedCopyWith<PlaylistModified> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistModifiedCopyWith<$Res> {
  factory $PlaylistModifiedCopyWith(
          PlaylistModified value, $Res Function(PlaylistModified) then) =
      _$PlaylistModifiedCopyWithImpl<$Res, PlaylistModified>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: parseStringSafe)
          String playlist,
      @JsonKey(name: 'Last-Modified', fromJson: parseDateTime)
          DateTime? lastModified});
}

/// @nodoc
class _$PlaylistModifiedCopyWithImpl<$Res, $Val extends PlaylistModified>
    implements $PlaylistModifiedCopyWith<$Res> {
  _$PlaylistModifiedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playlist = null,
    Object? lastModified = freezed,
  }) {
    return _then(_value.copyWith(
      playlist: null == playlist
          ? _value.playlist
          : playlist // ignore: cast_nullable_to_non_nullable
              as String,
      lastModified: freezed == lastModified
          ? _value.lastModified
          : lastModified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlaylistModifiedCopyWith<$Res>
    implements $PlaylistModifiedCopyWith<$Res> {
  factory _$$_PlaylistModifiedCopyWith(
          _$_PlaylistModified value, $Res Function(_$_PlaylistModified) then) =
      __$$_PlaylistModifiedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: parseStringSafe)
          String playlist,
      @JsonKey(name: 'Last-Modified', fromJson: parseDateTime)
          DateTime? lastModified});
}

/// @nodoc
class __$$_PlaylistModifiedCopyWithImpl<$Res>
    extends _$PlaylistModifiedCopyWithImpl<$Res, _$_PlaylistModified>
    implements _$$_PlaylistModifiedCopyWith<$Res> {
  __$$_PlaylistModifiedCopyWithImpl(
      _$_PlaylistModified _value, $Res Function(_$_PlaylistModified) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playlist = null,
    Object? lastModified = freezed,
  }) {
    return _then(_$_PlaylistModified(
      playlist: null == playlist
          ? _value.playlist
          : playlist // ignore: cast_nullable_to_non_nullable
              as String,
      lastModified: freezed == lastModified
          ? _value.lastModified
          : lastModified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlaylistModified implements _PlaylistModified {
  const _$_PlaylistModified(
      {@JsonKey(fromJson: parseStringSafe)
          required this.playlist,
      @JsonKey(name: 'Last-Modified', fromJson: parseDateTime)
          this.lastModified});

  factory _$_PlaylistModified.fromJson(Map<String, dynamic> json) =>
      _$$_PlaylistModifiedFromJson(json);

  @override
  @JsonKey(fromJson: parseStringSafe)
  final String playlist;
  @override
  @JsonKey(name: 'Last-Modified', fromJson: parseDateTime)
  final DateTime? lastModified;

  @override
  String toString() {
    return 'PlaylistModified(playlist: $playlist, lastModified: $lastModified)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlaylistModified &&
            (identical(other.playlist, playlist) ||
                other.playlist == playlist) &&
            (identical(other.lastModified, lastModified) ||
                other.lastModified == lastModified));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, playlist, lastModified);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlaylistModifiedCopyWith<_$_PlaylistModified> get copyWith =>
      __$$_PlaylistModifiedCopyWithImpl<_$_PlaylistModified>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlaylistModifiedToJson(
      this,
    );
  }
}

abstract class _PlaylistModified implements PlaylistModified {
  const factory _PlaylistModified(
      {@JsonKey(fromJson: parseStringSafe)
          required final String playlist,
      @JsonKey(name: 'Last-Modified', fromJson: parseDateTime)
          final DateTime? lastModified}) = _$_PlaylistModified;

  factory _PlaylistModified.fromJson(Map<String, dynamic> json) =
      _$_PlaylistModified.fromJson;

  @override
  @JsonKey(fromJson: parseStringSafe)
  String get playlist;
  @override
  @JsonKey(name: 'Last-Modified', fromJson: parseDateTime)
  DateTime? get lastModified;
  @override
  @JsonKey(ignore: true)
  _$$_PlaylistModifiedCopyWith<_$_PlaylistModified> get copyWith =>
      throw _privateConstructorUsedError;
}
