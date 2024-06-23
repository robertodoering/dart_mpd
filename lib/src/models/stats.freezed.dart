// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MpdStats _$MpdStatsFromJson(Map<String, dynamic> json) {
  return _MpdStats.fromJson(json);
}

/// @nodoc
mixin _$MpdStats {
  @JsonKey(fromJson: parseInt)
  int? get artists => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseInt)
  int? get albums => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseInt)
  int? get songs => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseSeconds)
  Duration? get uptime => throw _privateConstructorUsedError;
  @JsonKey(name: 'db_playtime', fromJson: parseSeconds)
  Duration? get dbPlaytime => throw _privateConstructorUsedError;
  @JsonKey(name: 'db_update', fromJson: parseTimestamp)
  DateTime? get dbUpdate => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseSeconds)
  Duration? get playtime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MpdStatsCopyWith<MpdStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MpdStatsCopyWith<$Res> {
  factory $MpdStatsCopyWith(MpdStats value, $Res Function(MpdStats) then) =
      _$MpdStatsCopyWithImpl<$Res, MpdStats>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: parseInt) int? artists,
      @JsonKey(fromJson: parseInt) int? albums,
      @JsonKey(fromJson: parseInt) int? songs,
      @JsonKey(fromJson: parseSeconds) Duration? uptime,
      @JsonKey(name: 'db_playtime', fromJson: parseSeconds)
      Duration? dbPlaytime,
      @JsonKey(name: 'db_update', fromJson: parseTimestamp) DateTime? dbUpdate,
      @JsonKey(fromJson: parseSeconds) Duration? playtime});
}

/// @nodoc
class _$MpdStatsCopyWithImpl<$Res, $Val extends MpdStats>
    implements $MpdStatsCopyWith<$Res> {
  _$MpdStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artists = freezed,
    Object? albums = freezed,
    Object? songs = freezed,
    Object? uptime = freezed,
    Object? dbPlaytime = freezed,
    Object? dbUpdate = freezed,
    Object? playtime = freezed,
  }) {
    return _then(_value.copyWith(
      artists: freezed == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as int?,
      albums: freezed == albums
          ? _value.albums
          : albums // ignore: cast_nullable_to_non_nullable
              as int?,
      songs: freezed == songs
          ? _value.songs
          : songs // ignore: cast_nullable_to_non_nullable
              as int?,
      uptime: freezed == uptime
          ? _value.uptime
          : uptime // ignore: cast_nullable_to_non_nullable
              as Duration?,
      dbPlaytime: freezed == dbPlaytime
          ? _value.dbPlaytime
          : dbPlaytime // ignore: cast_nullable_to_non_nullable
              as Duration?,
      dbUpdate: freezed == dbUpdate
          ? _value.dbUpdate
          : dbUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      playtime: freezed == playtime
          ? _value.playtime
          : playtime // ignore: cast_nullable_to_non_nullable
              as Duration?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MpdStatsImplCopyWith<$Res>
    implements $MpdStatsCopyWith<$Res> {
  factory _$$MpdStatsImplCopyWith(
          _$MpdStatsImpl value, $Res Function(_$MpdStatsImpl) then) =
      __$$MpdStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: parseInt) int? artists,
      @JsonKey(fromJson: parseInt) int? albums,
      @JsonKey(fromJson: parseInt) int? songs,
      @JsonKey(fromJson: parseSeconds) Duration? uptime,
      @JsonKey(name: 'db_playtime', fromJson: parseSeconds)
      Duration? dbPlaytime,
      @JsonKey(name: 'db_update', fromJson: parseTimestamp) DateTime? dbUpdate,
      @JsonKey(fromJson: parseSeconds) Duration? playtime});
}

/// @nodoc
class __$$MpdStatsImplCopyWithImpl<$Res>
    extends _$MpdStatsCopyWithImpl<$Res, _$MpdStatsImpl>
    implements _$$MpdStatsImplCopyWith<$Res> {
  __$$MpdStatsImplCopyWithImpl(
      _$MpdStatsImpl _value, $Res Function(_$MpdStatsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artists = freezed,
    Object? albums = freezed,
    Object? songs = freezed,
    Object? uptime = freezed,
    Object? dbPlaytime = freezed,
    Object? dbUpdate = freezed,
    Object? playtime = freezed,
  }) {
    return _then(_$MpdStatsImpl(
      artists: freezed == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as int?,
      albums: freezed == albums
          ? _value.albums
          : albums // ignore: cast_nullable_to_non_nullable
              as int?,
      songs: freezed == songs
          ? _value.songs
          : songs // ignore: cast_nullable_to_non_nullable
              as int?,
      uptime: freezed == uptime
          ? _value.uptime
          : uptime // ignore: cast_nullable_to_non_nullable
              as Duration?,
      dbPlaytime: freezed == dbPlaytime
          ? _value.dbPlaytime
          : dbPlaytime // ignore: cast_nullable_to_non_nullable
              as Duration?,
      dbUpdate: freezed == dbUpdate
          ? _value.dbUpdate
          : dbUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      playtime: freezed == playtime
          ? _value.playtime
          : playtime // ignore: cast_nullable_to_non_nullable
              as Duration?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MpdStatsImpl implements _MpdStats {
  const _$MpdStatsImpl(
      {@JsonKey(fromJson: parseInt) this.artists,
      @JsonKey(fromJson: parseInt) this.albums,
      @JsonKey(fromJson: parseInt) this.songs,
      @JsonKey(fromJson: parseSeconds) this.uptime,
      @JsonKey(name: 'db_playtime', fromJson: parseSeconds) this.dbPlaytime,
      @JsonKey(name: 'db_update', fromJson: parseTimestamp) this.dbUpdate,
      @JsonKey(fromJson: parseSeconds) this.playtime});

  factory _$MpdStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MpdStatsImplFromJson(json);

  @override
  @JsonKey(fromJson: parseInt)
  final int? artists;
  @override
  @JsonKey(fromJson: parseInt)
  final int? albums;
  @override
  @JsonKey(fromJson: parseInt)
  final int? songs;
  @override
  @JsonKey(fromJson: parseSeconds)
  final Duration? uptime;
  @override
  @JsonKey(name: 'db_playtime', fromJson: parseSeconds)
  final Duration? dbPlaytime;
  @override
  @JsonKey(name: 'db_update', fromJson: parseTimestamp)
  final DateTime? dbUpdate;
  @override
  @JsonKey(fromJson: parseSeconds)
  final Duration? playtime;

  @override
  String toString() {
    return 'MpdStats(artists: $artists, albums: $albums, songs: $songs, uptime: $uptime, dbPlaytime: $dbPlaytime, dbUpdate: $dbUpdate, playtime: $playtime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MpdStatsImpl &&
            (identical(other.artists, artists) || other.artists == artists) &&
            (identical(other.albums, albums) || other.albums == albums) &&
            (identical(other.songs, songs) || other.songs == songs) &&
            (identical(other.uptime, uptime) || other.uptime == uptime) &&
            (identical(other.dbPlaytime, dbPlaytime) ||
                other.dbPlaytime == dbPlaytime) &&
            (identical(other.dbUpdate, dbUpdate) ||
                other.dbUpdate == dbUpdate) &&
            (identical(other.playtime, playtime) ||
                other.playtime == playtime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, artists, albums, songs, uptime,
      dbPlaytime, dbUpdate, playtime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MpdStatsImplCopyWith<_$MpdStatsImpl> get copyWith =>
      __$$MpdStatsImplCopyWithImpl<_$MpdStatsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MpdStatsImplToJson(
      this,
    );
  }
}

abstract class _MpdStats implements MpdStats {
  const factory _MpdStats(
          {@JsonKey(fromJson: parseInt) final int? artists,
          @JsonKey(fromJson: parseInt) final int? albums,
          @JsonKey(fromJson: parseInt) final int? songs,
          @JsonKey(fromJson: parseSeconds) final Duration? uptime,
          @JsonKey(name: 'db_playtime', fromJson: parseSeconds)
          final Duration? dbPlaytime,
          @JsonKey(name: 'db_update', fromJson: parseTimestamp)
          final DateTime? dbUpdate,
          @JsonKey(fromJson: parseSeconds) final Duration? playtime}) =
      _$MpdStatsImpl;

  factory _MpdStats.fromJson(Map<String, dynamic> json) =
      _$MpdStatsImpl.fromJson;

  @override
  @JsonKey(fromJson: parseInt)
  int? get artists;
  @override
  @JsonKey(fromJson: parseInt)
  int? get albums;
  @override
  @JsonKey(fromJson: parseInt)
  int? get songs;
  @override
  @JsonKey(fromJson: parseSeconds)
  Duration? get uptime;
  @override
  @JsonKey(name: 'db_playtime', fromJson: parseSeconds)
  Duration? get dbPlaytime;
  @override
  @JsonKey(name: 'db_update', fromJson: parseTimestamp)
  DateTime? get dbUpdate;
  @override
  @JsonKey(fromJson: parseSeconds)
  Duration? get playtime;
  @override
  @JsonKey(ignore: true)
  _$$MpdStatsImplCopyWith<_$MpdStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
