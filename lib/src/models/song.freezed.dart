// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'song.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MpdSong _$MpdSongFromJson(Map<String, dynamic> json) {
  return _MpdSong.fromJson(json);
}

/// @nodoc
mixin _$MpdSong {
  @JsonKey(fromJson: parseStringOrEmpty)
  String get file => throw _privateConstructorUsedError;
  @JsonKey(name: 'Last-Modified', fromJson: parseDateTime)
  DateTime? get lastModified => throw _privateConstructorUsedError;
  @JsonKey(name: 'Format', fromJson: parseString)
  String? get format => throw _privateConstructorUsedError;
  @JsonKey(name: 'Time', fromJson: parseInt)
  int? get time => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseDuration)
  Duration? get duration => throw _privateConstructorUsedError;
  @JsonKey(name: 'Pos', fromJson: parseInt)
  int? get pos => throw _privateConstructorUsedError;
  @JsonKey(name: 'Id', fromJson: parseInt)
  int? get id => throw _privateConstructorUsedError;

  /// Tags as defined in
  /// https://mpd.readthedocs.io/en/stable/protocol.html#tags.
  @JsonKey(includeFromJson: false)
  Map<String, MpdValue> get tags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MpdSongCopyWith<MpdSong> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MpdSongCopyWith<$Res> {
  factory $MpdSongCopyWith(MpdSong value, $Res Function(MpdSong) then) =
      _$MpdSongCopyWithImpl<$Res, MpdSong>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: parseStringOrEmpty)
          String file,
      @JsonKey(name: 'Last-Modified', fromJson: parseDateTime)
          DateTime? lastModified,
      @JsonKey(name: 'Format', fromJson: parseString)
          String? format,
      @JsonKey(name: 'Time', fromJson: parseInt)
          int? time,
      @JsonKey(fromJson: parseDuration)
          Duration? duration,
      @JsonKey(name: 'Pos', fromJson: parseInt)
          int? pos,
      @JsonKey(name: 'Id', fromJson: parseInt)
          int? id,
      @JsonKey(includeFromJson: false)
          Map<String, MpdValue> tags});
}

/// @nodoc
class _$MpdSongCopyWithImpl<$Res, $Val extends MpdSong>
    implements $MpdSongCopyWith<$Res> {
  _$MpdSongCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
    Object? lastModified = freezed,
    Object? format = freezed,
    Object? time = freezed,
    Object? duration = freezed,
    Object? pos = freezed,
    Object? id = freezed,
    Object? tags = null,
  }) {
    return _then(_value.copyWith(
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String,
      lastModified: freezed == lastModified
          ? _value.lastModified
          : lastModified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration?,
      pos: freezed == pos
          ? _value.pos
          : pos // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as Map<String, MpdValue>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MpdSongCopyWith<$Res> implements $MpdSongCopyWith<$Res> {
  factory _$$_MpdSongCopyWith(
          _$_MpdSong value, $Res Function(_$_MpdSong) then) =
      __$$_MpdSongCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: parseStringOrEmpty)
          String file,
      @JsonKey(name: 'Last-Modified', fromJson: parseDateTime)
          DateTime? lastModified,
      @JsonKey(name: 'Format', fromJson: parseString)
          String? format,
      @JsonKey(name: 'Time', fromJson: parseInt)
          int? time,
      @JsonKey(fromJson: parseDuration)
          Duration? duration,
      @JsonKey(name: 'Pos', fromJson: parseInt)
          int? pos,
      @JsonKey(name: 'Id', fromJson: parseInt)
          int? id,
      @JsonKey(includeFromJson: false)
          Map<String, MpdValue> tags});
}

/// @nodoc
class __$$_MpdSongCopyWithImpl<$Res>
    extends _$MpdSongCopyWithImpl<$Res, _$_MpdSong>
    implements _$$_MpdSongCopyWith<$Res> {
  __$$_MpdSongCopyWithImpl(_$_MpdSong _value, $Res Function(_$_MpdSong) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
    Object? lastModified = freezed,
    Object? format = freezed,
    Object? time = freezed,
    Object? duration = freezed,
    Object? pos = freezed,
    Object? id = freezed,
    Object? tags = null,
  }) {
    return _then(_$_MpdSong(
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String,
      lastModified: freezed == lastModified
          ? _value.lastModified
          : lastModified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration?,
      pos: freezed == pos
          ? _value.pos
          : pos // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as Map<String, MpdValue>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MpdSong implements _MpdSong {
  const _$_MpdSong(
      {@JsonKey(fromJson: parseStringOrEmpty)
          required this.file,
      @JsonKey(name: 'Last-Modified', fromJson: parseDateTime)
          this.lastModified,
      @JsonKey(name: 'Format', fromJson: parseString)
          this.format,
      @JsonKey(name: 'Time', fromJson: parseInt)
          this.time,
      @JsonKey(fromJson: parseDuration)
          this.duration,
      @JsonKey(name: 'Pos', fromJson: parseInt)
          this.pos,
      @JsonKey(name: 'Id', fromJson: parseInt)
          this.id,
      @JsonKey(includeFromJson: false)
          final Map<String, MpdValue> tags = const {}})
      : _tags = tags;

  factory _$_MpdSong.fromJson(Map<String, dynamic> json) =>
      _$$_MpdSongFromJson(json);

  @override
  @JsonKey(fromJson: parseStringOrEmpty)
  final String file;
  @override
  @JsonKey(name: 'Last-Modified', fromJson: parseDateTime)
  final DateTime? lastModified;
  @override
  @JsonKey(name: 'Format', fromJson: parseString)
  final String? format;
  @override
  @JsonKey(name: 'Time', fromJson: parseInt)
  final int? time;
  @override
  @JsonKey(fromJson: parseDuration)
  final Duration? duration;
  @override
  @JsonKey(name: 'Pos', fromJson: parseInt)
  final int? pos;
  @override
  @JsonKey(name: 'Id', fromJson: parseInt)
  final int? id;

  /// Tags as defined in
  /// https://mpd.readthedocs.io/en/stable/protocol.html#tags.
  final Map<String, MpdValue> _tags;

  /// Tags as defined in
  /// https://mpd.readthedocs.io/en/stable/protocol.html#tags.
  @override
  @JsonKey(includeFromJson: false)
  Map<String, MpdValue> get tags {
    if (_tags is EqualUnmodifiableMapView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_tags);
  }

  @override
  String toString() {
    return 'MpdSong(file: $file, lastModified: $lastModified, format: $format, time: $time, duration: $duration, pos: $pos, id: $id, tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MpdSong &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.lastModified, lastModified) ||
                other.lastModified == lastModified) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.pos, pos) || other.pos == pos) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, file, lastModified, format, time,
      duration, pos, id, const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MpdSongCopyWith<_$_MpdSong> get copyWith =>
      __$$_MpdSongCopyWithImpl<_$_MpdSong>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MpdSongToJson(
      this,
    );
  }
}

abstract class _MpdSong implements MpdSong {
  const factory _MpdSong(
      {@JsonKey(fromJson: parseStringOrEmpty)
          required final String file,
      @JsonKey(name: 'Last-Modified', fromJson: parseDateTime)
          final DateTime? lastModified,
      @JsonKey(name: 'Format', fromJson: parseString)
          final String? format,
      @JsonKey(name: 'Time', fromJson: parseInt)
          final int? time,
      @JsonKey(fromJson: parseDuration)
          final Duration? duration,
      @JsonKey(name: 'Pos', fromJson: parseInt)
          final int? pos,
      @JsonKey(name: 'Id', fromJson: parseInt)
          final int? id,
      @JsonKey(includeFromJson: false)
          final Map<String, MpdValue> tags}) = _$_MpdSong;

  factory _MpdSong.fromJson(Map<String, dynamic> json) = _$_MpdSong.fromJson;

  @override
  @JsonKey(fromJson: parseStringOrEmpty)
  String get file;
  @override
  @JsonKey(name: 'Last-Modified', fromJson: parseDateTime)
  DateTime? get lastModified;
  @override
  @JsonKey(name: 'Format', fromJson: parseString)
  String? get format;
  @override
  @JsonKey(name: 'Time', fromJson: parseInt)
  int? get time;
  @override
  @JsonKey(fromJson: parseDuration)
  Duration? get duration;
  @override
  @JsonKey(name: 'Pos', fromJson: parseInt)
  int? get pos;
  @override
  @JsonKey(name: 'Id', fromJson: parseInt)
  int? get id;
  @override

  /// Tags as defined in
  /// https://mpd.readthedocs.io/en/stable/protocol.html#tags.
  @JsonKey(includeFromJson: false)
  Map<String, MpdValue> get tags;
  @override
  @JsonKey(ignore: true)
  _$$_MpdSongCopyWith<_$_MpdSong> get copyWith =>
      throw _privateConstructorUsedError;
}
