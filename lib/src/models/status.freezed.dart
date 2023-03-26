// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MpdStatus _$MpdStatusFromJson(Map<String, dynamic> json) {
  return _MpdStatus.fromJson(json);
}

/// @nodoc
mixin _$MpdStatus {
  String? get partition => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseInt)
  int? get volume => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseBool)
  bool? get repeat => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseBool)
  bool? get random => throw _privateConstructorUsedError;
  @JsonKey(fromJson: MpdSingle.parse)
  MpdSingle? get single => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseBool)
  bool? get consume => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseInt)
  int? get playlist => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseInt)
  int? get playlistlength => throw _privateConstructorUsedError;
  MpdState? get state => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseInt)
  int? get song => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseInt)
  int? get songid => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseInt)
  int? get nextsong => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseInt)
  int? get nextsongid => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseDouble)
  double? get elapsed => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseDouble)
  double? get duration => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseInt)
  int? get bitrate => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseInt)
  int? get crossfade => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseDouble)
  double? get mixramp => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseDouble)
  double? get mixrampdelay => throw _privateConstructorUsedError;
  String? get audio => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseInt)
  int? get updatingDb => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MpdStatusCopyWith<MpdStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MpdStatusCopyWith<$Res> {
  factory $MpdStatusCopyWith(MpdStatus value, $Res Function(MpdStatus) then) =
      _$MpdStatusCopyWithImpl<$Res, MpdStatus>;
  @useResult
  $Res call(
      {String? partition,
      @JsonKey(fromJson: parseInt) int? volume,
      @JsonKey(fromJson: parseBool) bool? repeat,
      @JsonKey(fromJson: parseBool) bool? random,
      @JsonKey(fromJson: MpdSingle.parse) MpdSingle? single,
      @JsonKey(fromJson: parseBool) bool? consume,
      @JsonKey(fromJson: parseInt) int? playlist,
      @JsonKey(fromJson: parseInt) int? playlistlength,
      MpdState? state,
      @JsonKey(fromJson: parseInt) int? song,
      @JsonKey(fromJson: parseInt) int? songid,
      @JsonKey(fromJson: parseInt) int? nextsong,
      @JsonKey(fromJson: parseInt) int? nextsongid,
      @JsonKey(fromJson: parseDouble) double? elapsed,
      @JsonKey(fromJson: parseDouble) double? duration,
      @JsonKey(fromJson: parseInt) int? bitrate,
      @JsonKey(fromJson: parseInt) int? crossfade,
      @JsonKey(fromJson: parseDouble) double? mixramp,
      @JsonKey(fromJson: parseDouble) double? mixrampdelay,
      String? audio,
      @JsonKey(fromJson: parseInt) int? updatingDb,
      String? error});
}

/// @nodoc
class _$MpdStatusCopyWithImpl<$Res, $Val extends MpdStatus>
    implements $MpdStatusCopyWith<$Res> {
  _$MpdStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partition = freezed,
    Object? volume = freezed,
    Object? repeat = freezed,
    Object? random = freezed,
    Object? single = freezed,
    Object? consume = freezed,
    Object? playlist = freezed,
    Object? playlistlength = freezed,
    Object? state = freezed,
    Object? song = freezed,
    Object? songid = freezed,
    Object? nextsong = freezed,
    Object? nextsongid = freezed,
    Object? elapsed = freezed,
    Object? duration = freezed,
    Object? bitrate = freezed,
    Object? crossfade = freezed,
    Object? mixramp = freezed,
    Object? mixrampdelay = freezed,
    Object? audio = freezed,
    Object? updatingDb = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      partition: freezed == partition
          ? _value.partition
          : partition // ignore: cast_nullable_to_non_nullable
              as String?,
      volume: freezed == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as int?,
      repeat: freezed == repeat
          ? _value.repeat
          : repeat // ignore: cast_nullable_to_non_nullable
              as bool?,
      random: freezed == random
          ? _value.random
          : random // ignore: cast_nullable_to_non_nullable
              as bool?,
      single: freezed == single
          ? _value.single
          : single // ignore: cast_nullable_to_non_nullable
              as MpdSingle?,
      consume: freezed == consume
          ? _value.consume
          : consume // ignore: cast_nullable_to_non_nullable
              as bool?,
      playlist: freezed == playlist
          ? _value.playlist
          : playlist // ignore: cast_nullable_to_non_nullable
              as int?,
      playlistlength: freezed == playlistlength
          ? _value.playlistlength
          : playlistlength // ignore: cast_nullable_to_non_nullable
              as int?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as MpdState?,
      song: freezed == song
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as int?,
      songid: freezed == songid
          ? _value.songid
          : songid // ignore: cast_nullable_to_non_nullable
              as int?,
      nextsong: freezed == nextsong
          ? _value.nextsong
          : nextsong // ignore: cast_nullable_to_non_nullable
              as int?,
      nextsongid: freezed == nextsongid
          ? _value.nextsongid
          : nextsongid // ignore: cast_nullable_to_non_nullable
              as int?,
      elapsed: freezed == elapsed
          ? _value.elapsed
          : elapsed // ignore: cast_nullable_to_non_nullable
              as double?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double?,
      bitrate: freezed == bitrate
          ? _value.bitrate
          : bitrate // ignore: cast_nullable_to_non_nullable
              as int?,
      crossfade: freezed == crossfade
          ? _value.crossfade
          : crossfade // ignore: cast_nullable_to_non_nullable
              as int?,
      mixramp: freezed == mixramp
          ? _value.mixramp
          : mixramp // ignore: cast_nullable_to_non_nullable
              as double?,
      mixrampdelay: freezed == mixrampdelay
          ? _value.mixrampdelay
          : mixrampdelay // ignore: cast_nullable_to_non_nullable
              as double?,
      audio: freezed == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as String?,
      updatingDb: freezed == updatingDb
          ? _value.updatingDb
          : updatingDb // ignore: cast_nullable_to_non_nullable
              as int?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MpdStatusCopyWith<$Res> implements $MpdStatusCopyWith<$Res> {
  factory _$$_MpdStatusCopyWith(
          _$_MpdStatus value, $Res Function(_$_MpdStatus) then) =
      __$$_MpdStatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? partition,
      @JsonKey(fromJson: parseInt) int? volume,
      @JsonKey(fromJson: parseBool) bool? repeat,
      @JsonKey(fromJson: parseBool) bool? random,
      @JsonKey(fromJson: MpdSingle.parse) MpdSingle? single,
      @JsonKey(fromJson: parseBool) bool? consume,
      @JsonKey(fromJson: parseInt) int? playlist,
      @JsonKey(fromJson: parseInt) int? playlistlength,
      MpdState? state,
      @JsonKey(fromJson: parseInt) int? song,
      @JsonKey(fromJson: parseInt) int? songid,
      @JsonKey(fromJson: parseInt) int? nextsong,
      @JsonKey(fromJson: parseInt) int? nextsongid,
      @JsonKey(fromJson: parseDouble) double? elapsed,
      @JsonKey(fromJson: parseDouble) double? duration,
      @JsonKey(fromJson: parseInt) int? bitrate,
      @JsonKey(fromJson: parseInt) int? crossfade,
      @JsonKey(fromJson: parseDouble) double? mixramp,
      @JsonKey(fromJson: parseDouble) double? mixrampdelay,
      String? audio,
      @JsonKey(fromJson: parseInt) int? updatingDb,
      String? error});
}

/// @nodoc
class __$$_MpdStatusCopyWithImpl<$Res>
    extends _$MpdStatusCopyWithImpl<$Res, _$_MpdStatus>
    implements _$$_MpdStatusCopyWith<$Res> {
  __$$_MpdStatusCopyWithImpl(
      _$_MpdStatus _value, $Res Function(_$_MpdStatus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partition = freezed,
    Object? volume = freezed,
    Object? repeat = freezed,
    Object? random = freezed,
    Object? single = freezed,
    Object? consume = freezed,
    Object? playlist = freezed,
    Object? playlistlength = freezed,
    Object? state = freezed,
    Object? song = freezed,
    Object? songid = freezed,
    Object? nextsong = freezed,
    Object? nextsongid = freezed,
    Object? elapsed = freezed,
    Object? duration = freezed,
    Object? bitrate = freezed,
    Object? crossfade = freezed,
    Object? mixramp = freezed,
    Object? mixrampdelay = freezed,
    Object? audio = freezed,
    Object? updatingDb = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_MpdStatus(
      partition: freezed == partition
          ? _value.partition
          : partition // ignore: cast_nullable_to_non_nullable
              as String?,
      volume: freezed == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as int?,
      repeat: freezed == repeat
          ? _value.repeat
          : repeat // ignore: cast_nullable_to_non_nullable
              as bool?,
      random: freezed == random
          ? _value.random
          : random // ignore: cast_nullable_to_non_nullable
              as bool?,
      single: freezed == single
          ? _value.single
          : single // ignore: cast_nullable_to_non_nullable
              as MpdSingle?,
      consume: freezed == consume
          ? _value.consume
          : consume // ignore: cast_nullable_to_non_nullable
              as bool?,
      playlist: freezed == playlist
          ? _value.playlist
          : playlist // ignore: cast_nullable_to_non_nullable
              as int?,
      playlistlength: freezed == playlistlength
          ? _value.playlistlength
          : playlistlength // ignore: cast_nullable_to_non_nullable
              as int?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as MpdState?,
      song: freezed == song
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as int?,
      songid: freezed == songid
          ? _value.songid
          : songid // ignore: cast_nullable_to_non_nullable
              as int?,
      nextsong: freezed == nextsong
          ? _value.nextsong
          : nextsong // ignore: cast_nullable_to_non_nullable
              as int?,
      nextsongid: freezed == nextsongid
          ? _value.nextsongid
          : nextsongid // ignore: cast_nullable_to_non_nullable
              as int?,
      elapsed: freezed == elapsed
          ? _value.elapsed
          : elapsed // ignore: cast_nullable_to_non_nullable
              as double?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double?,
      bitrate: freezed == bitrate
          ? _value.bitrate
          : bitrate // ignore: cast_nullable_to_non_nullable
              as int?,
      crossfade: freezed == crossfade
          ? _value.crossfade
          : crossfade // ignore: cast_nullable_to_non_nullable
              as int?,
      mixramp: freezed == mixramp
          ? _value.mixramp
          : mixramp // ignore: cast_nullable_to_non_nullable
              as double?,
      mixrampdelay: freezed == mixrampdelay
          ? _value.mixrampdelay
          : mixrampdelay // ignore: cast_nullable_to_non_nullable
              as double?,
      audio: freezed == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as String?,
      updatingDb: freezed == updatingDb
          ? _value.updatingDb
          : updatingDb // ignore: cast_nullable_to_non_nullable
              as int?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MpdStatus implements _MpdStatus {
  const _$_MpdStatus(
      {this.partition,
      @JsonKey(fromJson: parseInt) this.volume,
      @JsonKey(fromJson: parseBool) this.repeat,
      @JsonKey(fromJson: parseBool) this.random,
      @JsonKey(fromJson: MpdSingle.parse) this.single,
      @JsonKey(fromJson: parseBool) this.consume,
      @JsonKey(fromJson: parseInt) this.playlist,
      @JsonKey(fromJson: parseInt) this.playlistlength,
      this.state,
      @JsonKey(fromJson: parseInt) this.song,
      @JsonKey(fromJson: parseInt) this.songid,
      @JsonKey(fromJson: parseInt) this.nextsong,
      @JsonKey(fromJson: parseInt) this.nextsongid,
      @JsonKey(fromJson: parseDouble) this.elapsed,
      @JsonKey(fromJson: parseDouble) this.duration,
      @JsonKey(fromJson: parseInt) this.bitrate,
      @JsonKey(fromJson: parseInt) this.crossfade,
      @JsonKey(fromJson: parseDouble) this.mixramp,
      @JsonKey(fromJson: parseDouble) this.mixrampdelay,
      this.audio,
      @JsonKey(fromJson: parseInt) this.updatingDb,
      this.error});

  factory _$_MpdStatus.fromJson(Map<String, dynamic> json) =>
      _$$_MpdStatusFromJson(json);

  @override
  final String? partition;
  @override
  @JsonKey(fromJson: parseInt)
  final int? volume;
  @override
  @JsonKey(fromJson: parseBool)
  final bool? repeat;
  @override
  @JsonKey(fromJson: parseBool)
  final bool? random;
  @override
  @JsonKey(fromJson: MpdSingle.parse)
  final MpdSingle? single;
  @override
  @JsonKey(fromJson: parseBool)
  final bool? consume;
  @override
  @JsonKey(fromJson: parseInt)
  final int? playlist;
  @override
  @JsonKey(fromJson: parseInt)
  final int? playlistlength;
  @override
  final MpdState? state;
  @override
  @JsonKey(fromJson: parseInt)
  final int? song;
  @override
  @JsonKey(fromJson: parseInt)
  final int? songid;
  @override
  @JsonKey(fromJson: parseInt)
  final int? nextsong;
  @override
  @JsonKey(fromJson: parseInt)
  final int? nextsongid;
  @override
  @JsonKey(fromJson: parseDouble)
  final double? elapsed;
  @override
  @JsonKey(fromJson: parseDouble)
  final double? duration;
  @override
  @JsonKey(fromJson: parseInt)
  final int? bitrate;
  @override
  @JsonKey(fromJson: parseInt)
  final int? crossfade;
  @override
  @JsonKey(fromJson: parseDouble)
  final double? mixramp;
  @override
  @JsonKey(fromJson: parseDouble)
  final double? mixrampdelay;
  @override
  final String? audio;
  @override
  @JsonKey(fromJson: parseInt)
  final int? updatingDb;
  @override
  final String? error;

  @override
  String toString() {
    return 'MpdStatus(partition: $partition, volume: $volume, repeat: $repeat, random: $random, single: $single, consume: $consume, playlist: $playlist, playlistlength: $playlistlength, state: $state, song: $song, songid: $songid, nextsong: $nextsong, nextsongid: $nextsongid, elapsed: $elapsed, duration: $duration, bitrate: $bitrate, crossfade: $crossfade, mixramp: $mixramp, mixrampdelay: $mixrampdelay, audio: $audio, updatingDb: $updatingDb, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MpdStatus &&
            (identical(other.partition, partition) ||
                other.partition == partition) &&
            (identical(other.volume, volume) || other.volume == volume) &&
            (identical(other.repeat, repeat) || other.repeat == repeat) &&
            (identical(other.random, random) || other.random == random) &&
            (identical(other.single, single) || other.single == single) &&
            (identical(other.consume, consume) || other.consume == consume) &&
            (identical(other.playlist, playlist) ||
                other.playlist == playlist) &&
            (identical(other.playlistlength, playlistlength) ||
                other.playlistlength == playlistlength) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.song, song) || other.song == song) &&
            (identical(other.songid, songid) || other.songid == songid) &&
            (identical(other.nextsong, nextsong) ||
                other.nextsong == nextsong) &&
            (identical(other.nextsongid, nextsongid) ||
                other.nextsongid == nextsongid) &&
            (identical(other.elapsed, elapsed) || other.elapsed == elapsed) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.bitrate, bitrate) || other.bitrate == bitrate) &&
            (identical(other.crossfade, crossfade) ||
                other.crossfade == crossfade) &&
            (identical(other.mixramp, mixramp) || other.mixramp == mixramp) &&
            (identical(other.mixrampdelay, mixrampdelay) ||
                other.mixrampdelay == mixrampdelay) &&
            (identical(other.audio, audio) || other.audio == audio) &&
            (identical(other.updatingDb, updatingDb) ||
                other.updatingDb == updatingDb) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        partition,
        volume,
        repeat,
        random,
        single,
        consume,
        playlist,
        playlistlength,
        state,
        song,
        songid,
        nextsong,
        nextsongid,
        elapsed,
        duration,
        bitrate,
        crossfade,
        mixramp,
        mixrampdelay,
        audio,
        updatingDb,
        error
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MpdStatusCopyWith<_$_MpdStatus> get copyWith =>
      __$$_MpdStatusCopyWithImpl<_$_MpdStatus>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MpdStatusToJson(
      this,
    );
  }
}

abstract class _MpdStatus implements MpdStatus {
  const factory _MpdStatus(
      {final String? partition,
      @JsonKey(fromJson: parseInt) final int? volume,
      @JsonKey(fromJson: parseBool) final bool? repeat,
      @JsonKey(fromJson: parseBool) final bool? random,
      @JsonKey(fromJson: MpdSingle.parse) final MpdSingle? single,
      @JsonKey(fromJson: parseBool) final bool? consume,
      @JsonKey(fromJson: parseInt) final int? playlist,
      @JsonKey(fromJson: parseInt) final int? playlistlength,
      final MpdState? state,
      @JsonKey(fromJson: parseInt) final int? song,
      @JsonKey(fromJson: parseInt) final int? songid,
      @JsonKey(fromJson: parseInt) final int? nextsong,
      @JsonKey(fromJson: parseInt) final int? nextsongid,
      @JsonKey(fromJson: parseDouble) final double? elapsed,
      @JsonKey(fromJson: parseDouble) final double? duration,
      @JsonKey(fromJson: parseInt) final int? bitrate,
      @JsonKey(fromJson: parseInt) final int? crossfade,
      @JsonKey(fromJson: parseDouble) final double? mixramp,
      @JsonKey(fromJson: parseDouble) final double? mixrampdelay,
      final String? audio,
      @JsonKey(fromJson: parseInt) final int? updatingDb,
      final String? error}) = _$_MpdStatus;

  factory _MpdStatus.fromJson(Map<String, dynamic> json) =
      _$_MpdStatus.fromJson;

  @override
  String? get partition;
  @override
  @JsonKey(fromJson: parseInt)
  int? get volume;
  @override
  @JsonKey(fromJson: parseBool)
  bool? get repeat;
  @override
  @JsonKey(fromJson: parseBool)
  bool? get random;
  @override
  @JsonKey(fromJson: MpdSingle.parse)
  MpdSingle? get single;
  @override
  @JsonKey(fromJson: parseBool)
  bool? get consume;
  @override
  @JsonKey(fromJson: parseInt)
  int? get playlist;
  @override
  @JsonKey(fromJson: parseInt)
  int? get playlistlength;
  @override
  MpdState? get state;
  @override
  @JsonKey(fromJson: parseInt)
  int? get song;
  @override
  @JsonKey(fromJson: parseInt)
  int? get songid;
  @override
  @JsonKey(fromJson: parseInt)
  int? get nextsong;
  @override
  @JsonKey(fromJson: parseInt)
  int? get nextsongid;
  @override
  @JsonKey(fromJson: parseDouble)
  double? get elapsed;
  @override
  @JsonKey(fromJson: parseDouble)
  double? get duration;
  @override
  @JsonKey(fromJson: parseInt)
  int? get bitrate;
  @override
  @JsonKey(fromJson: parseInt)
  int? get crossfade;
  @override
  @JsonKey(fromJson: parseDouble)
  double? get mixramp;
  @override
  @JsonKey(fromJson: parseDouble)
  double? get mixrampdelay;
  @override
  String? get audio;
  @override
  @JsonKey(fromJson: parseInt)
  int? get updatingDb;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_MpdStatusCopyWith<_$_MpdStatus> get copyWith =>
      throw _privateConstructorUsedError;
}
