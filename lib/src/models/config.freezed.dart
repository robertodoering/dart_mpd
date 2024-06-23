// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MpdConfig _$MpdConfigFromJson(Map<String, dynamic> json) {
  return _MpdConfig.fromJson(json);
}

/// @nodoc
mixin _$MpdConfig {
  @JsonKey(name: 'music_directory', fromJson: parseString)
  String? get musicDirectory => throw _privateConstructorUsedError;
  @JsonKey(name: 'playlist_directory', fromJson: parseString)
  String? get playlistDirectory => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseBool)
  bool? get pcre => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MpdConfigCopyWith<MpdConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MpdConfigCopyWith<$Res> {
  factory $MpdConfigCopyWith(MpdConfig value, $Res Function(MpdConfig) then) =
      _$MpdConfigCopyWithImpl<$Res, MpdConfig>;
  @useResult
  $Res call(
      {@JsonKey(name: 'music_directory', fromJson: parseString)
      String? musicDirectory,
      @JsonKey(name: 'playlist_directory', fromJson: parseString)
      String? playlistDirectory,
      @JsonKey(fromJson: parseBool) bool? pcre});
}

/// @nodoc
class _$MpdConfigCopyWithImpl<$Res, $Val extends MpdConfig>
    implements $MpdConfigCopyWith<$Res> {
  _$MpdConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? musicDirectory = freezed,
    Object? playlistDirectory = freezed,
    Object? pcre = freezed,
  }) {
    return _then(_value.copyWith(
      musicDirectory: freezed == musicDirectory
          ? _value.musicDirectory
          : musicDirectory // ignore: cast_nullable_to_non_nullable
              as String?,
      playlistDirectory: freezed == playlistDirectory
          ? _value.playlistDirectory
          : playlistDirectory // ignore: cast_nullable_to_non_nullable
              as String?,
      pcre: freezed == pcre
          ? _value.pcre
          : pcre // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MpdConfigImplCopyWith<$Res>
    implements $MpdConfigCopyWith<$Res> {
  factory _$$MpdConfigImplCopyWith(
          _$MpdConfigImpl value, $Res Function(_$MpdConfigImpl) then) =
      __$$MpdConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'music_directory', fromJson: parseString)
      String? musicDirectory,
      @JsonKey(name: 'playlist_directory', fromJson: parseString)
      String? playlistDirectory,
      @JsonKey(fromJson: parseBool) bool? pcre});
}

/// @nodoc
class __$$MpdConfigImplCopyWithImpl<$Res>
    extends _$MpdConfigCopyWithImpl<$Res, _$MpdConfigImpl>
    implements _$$MpdConfigImplCopyWith<$Res> {
  __$$MpdConfigImplCopyWithImpl(
      _$MpdConfigImpl _value, $Res Function(_$MpdConfigImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? musicDirectory = freezed,
    Object? playlistDirectory = freezed,
    Object? pcre = freezed,
  }) {
    return _then(_$MpdConfigImpl(
      musicDirectory: freezed == musicDirectory
          ? _value.musicDirectory
          : musicDirectory // ignore: cast_nullable_to_non_nullable
              as String?,
      playlistDirectory: freezed == playlistDirectory
          ? _value.playlistDirectory
          : playlistDirectory // ignore: cast_nullable_to_non_nullable
              as String?,
      pcre: freezed == pcre
          ? _value.pcre
          : pcre // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MpdConfigImpl implements _MpdConfig {
  const _$MpdConfigImpl(
      {@JsonKey(name: 'music_directory', fromJson: parseString)
      this.musicDirectory,
      @JsonKey(name: 'playlist_directory', fromJson: parseString)
      this.playlistDirectory,
      @JsonKey(fromJson: parseBool) this.pcre});

  factory _$MpdConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$MpdConfigImplFromJson(json);

  @override
  @JsonKey(name: 'music_directory', fromJson: parseString)
  final String? musicDirectory;
  @override
  @JsonKey(name: 'playlist_directory', fromJson: parseString)
  final String? playlistDirectory;
  @override
  @JsonKey(fromJson: parseBool)
  final bool? pcre;

  @override
  String toString() {
    return 'MpdConfig(musicDirectory: $musicDirectory, playlistDirectory: $playlistDirectory, pcre: $pcre)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MpdConfigImpl &&
            (identical(other.musicDirectory, musicDirectory) ||
                other.musicDirectory == musicDirectory) &&
            (identical(other.playlistDirectory, playlistDirectory) ||
                other.playlistDirectory == playlistDirectory) &&
            (identical(other.pcre, pcre) || other.pcre == pcre));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, musicDirectory, playlistDirectory, pcre);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MpdConfigImplCopyWith<_$MpdConfigImpl> get copyWith =>
      __$$MpdConfigImplCopyWithImpl<_$MpdConfigImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MpdConfigImplToJson(
      this,
    );
  }
}

abstract class _MpdConfig implements MpdConfig {
  const factory _MpdConfig(
      {@JsonKey(name: 'music_directory', fromJson: parseString)
      final String? musicDirectory,
      @JsonKey(name: 'playlist_directory', fromJson: parseString)
      final String? playlistDirectory,
      @JsonKey(fromJson: parseBool) final bool? pcre}) = _$MpdConfigImpl;

  factory _MpdConfig.fromJson(Map<String, dynamic> json) =
      _$MpdConfigImpl.fromJson;

  @override
  @JsonKey(name: 'music_directory', fromJson: parseString)
  String? get musicDirectory;
  @override
  @JsonKey(name: 'playlist_directory', fromJson: parseString)
  String? get playlistDirectory;
  @override
  @JsonKey(fromJson: parseBool)
  bool? get pcre;
  @override
  @JsonKey(ignore: true)
  _$$MpdConfigImplCopyWith<_$MpdConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
