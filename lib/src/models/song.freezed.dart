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
  @JsonKey(fromJson: parseStringSafe)
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

  /// Tags as defined in:
  /// https://mpd.readthedocs.io/en/stable/protocol.html#tags.
  /// Named as they are returned by mpd:
  /// https://github.com/MusicPlayerDaemon/MPD/blob/45f81cde6ddf8dd8e80d9396566900d6e6e5e4d9/src/tag/Names.cxx.
  @JsonKey(name: 'Artist')
  List<String>? get artist => throw _privateConstructorUsedError;
  @JsonKey(name: 'ArtistSort')
  List<String>? get artistSort => throw _privateConstructorUsedError;
  @JsonKey(name: 'Album')
  List<String>? get album => throw _privateConstructorUsedError;
  @JsonKey(name: 'AlbumSort')
  List<String>? get albumSort => throw _privateConstructorUsedError;
  @JsonKey(name: 'AlbumArtist')
  List<String>? get albumArtist => throw _privateConstructorUsedError;
  @JsonKey(name: 'AlbumArtistSort')
  List<String>? get albumArtistSort => throw _privateConstructorUsedError;
  @JsonKey(name: 'Title')
  List<String>? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'TitleSort')
  List<String>? get titleSort => throw _privateConstructorUsedError;
  @JsonKey(name: 'Name')
  List<String>? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'Genre')
  List<String>? get genre => throw _privateConstructorUsedError;
  @JsonKey(name: 'Mood')
  List<String>? get mood => throw _privateConstructorUsedError;
  @JsonKey(name: 'Date')
  List<String>? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'OriginalDate')
  List<String>? get originalDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'Composer')
  List<String>? get composer => throw _privateConstructorUsedError;
  @JsonKey(name: 'ComposerSort')
  List<String>? get composerSort => throw _privateConstructorUsedError;
  @JsonKey(name: 'Performer')
  List<String>? get performer => throw _privateConstructorUsedError;
  @JsonKey(name: 'Conductor')
  List<String>? get conductor => throw _privateConstructorUsedError;
  @JsonKey(name: 'Work')
  List<String>? get work => throw _privateConstructorUsedError;
  @JsonKey(name: 'Ensemble')
  List<String>? get ensemble => throw _privateConstructorUsedError;
  @JsonKey(name: 'Movement')
  List<String>? get movement => throw _privateConstructorUsedError;
  @JsonKey(name: 'MovementNumber')
  List<String>? get movementNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'Location')
  List<String>? get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'Grouping')
  List<String>? get grouping => throw _privateConstructorUsedError;
  @JsonKey(name: 'Comment')
  List<String>? get comment => throw _privateConstructorUsedError;
  @JsonKey(name: 'Disc')
  List<String>? get disc => throw _privateConstructorUsedError;
  @JsonKey(name: 'Label')
  List<String>? get label => throw _privateConstructorUsedError;
  @JsonKey(name: 'MUSICBRAINZ_ARTISTID')
  List<String>? get musicbrainzArtistid => throw _privateConstructorUsedError;
  @JsonKey(name: 'MUSICBRAINZ_ALBUMID')
  List<String>? get musicbrainzAlbumid => throw _privateConstructorUsedError;
  @JsonKey(name: 'MUSICBRAINZ_ALBUMARTISTID')
  List<String>? get musicbrainzAlbumartistid =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'MUSICBRAINZ_TRACKID')
  List<String>? get musicbrainzTrackid => throw _privateConstructorUsedError;
  @JsonKey(name: 'MUSICBRAINZ_RELEASETRACKID')
  List<String>? get musicbrainzReleasetrackid =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'MUSICBRAINZ_WORKID')
  List<String>? get musicbrainzWorkid => throw _privateConstructorUsedError;

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
      {@JsonKey(fromJson: parseStringSafe)
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
      @JsonKey(name: 'Artist')
          List<String>? artist,
      @JsonKey(name: 'ArtistSort')
          List<String>? artistSort,
      @JsonKey(name: 'Album')
          List<String>? album,
      @JsonKey(name: 'AlbumSort')
          List<String>? albumSort,
      @JsonKey(name: 'AlbumArtist')
          List<String>? albumArtist,
      @JsonKey(name: 'AlbumArtistSort')
          List<String>? albumArtistSort,
      @JsonKey(name: 'Title')
          List<String>? title,
      @JsonKey(name: 'TitleSort')
          List<String>? titleSort,
      @JsonKey(name: 'Name')
          List<String>? name,
      @JsonKey(name: 'Genre')
          List<String>? genre,
      @JsonKey(name: 'Mood')
          List<String>? mood,
      @JsonKey(name: 'Date')
          List<String>? date,
      @JsonKey(name: 'OriginalDate')
          List<String>? originalDate,
      @JsonKey(name: 'Composer')
          List<String>? composer,
      @JsonKey(name: 'ComposerSort')
          List<String>? composerSort,
      @JsonKey(name: 'Performer')
          List<String>? performer,
      @JsonKey(name: 'Conductor')
          List<String>? conductor,
      @JsonKey(name: 'Work')
          List<String>? work,
      @JsonKey(name: 'Ensemble')
          List<String>? ensemble,
      @JsonKey(name: 'Movement')
          List<String>? movement,
      @JsonKey(name: 'MovementNumber')
          List<String>? movementNumber,
      @JsonKey(name: 'Location')
          List<String>? location,
      @JsonKey(name: 'Grouping')
          List<String>? grouping,
      @JsonKey(name: 'Comment')
          List<String>? comment,
      @JsonKey(name: 'Disc')
          List<String>? disc,
      @JsonKey(name: 'Label')
          List<String>? label,
      @JsonKey(name: 'MUSICBRAINZ_ARTISTID')
          List<String>? musicbrainzArtistid,
      @JsonKey(name: 'MUSICBRAINZ_ALBUMID')
          List<String>? musicbrainzAlbumid,
      @JsonKey(name: 'MUSICBRAINZ_ALBUMARTISTID')
          List<String>? musicbrainzAlbumartistid,
      @JsonKey(name: 'MUSICBRAINZ_TRACKID')
          List<String>? musicbrainzTrackid,
      @JsonKey(name: 'MUSICBRAINZ_RELEASETRACKID')
          List<String>? musicbrainzReleasetrackid,
      @JsonKey(name: 'MUSICBRAINZ_WORKID')
          List<String>? musicbrainzWorkid});
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
    Object? artist = freezed,
    Object? artistSort = freezed,
    Object? album = freezed,
    Object? albumSort = freezed,
    Object? albumArtist = freezed,
    Object? albumArtistSort = freezed,
    Object? title = freezed,
    Object? titleSort = freezed,
    Object? name = freezed,
    Object? genre = freezed,
    Object? mood = freezed,
    Object? date = freezed,
    Object? originalDate = freezed,
    Object? composer = freezed,
    Object? composerSort = freezed,
    Object? performer = freezed,
    Object? conductor = freezed,
    Object? work = freezed,
    Object? ensemble = freezed,
    Object? movement = freezed,
    Object? movementNumber = freezed,
    Object? location = freezed,
    Object? grouping = freezed,
    Object? comment = freezed,
    Object? disc = freezed,
    Object? label = freezed,
    Object? musicbrainzArtistid = freezed,
    Object? musicbrainzAlbumid = freezed,
    Object? musicbrainzAlbumartistid = freezed,
    Object? musicbrainzTrackid = freezed,
    Object? musicbrainzReleasetrackid = freezed,
    Object? musicbrainzWorkid = freezed,
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
      artist: freezed == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      artistSort: freezed == artistSort
          ? _value.artistSort
          : artistSort // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      album: freezed == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      albumSort: freezed == albumSort
          ? _value.albumSort
          : albumSort // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      albumArtist: freezed == albumArtist
          ? _value.albumArtist
          : albumArtist // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      albumArtistSort: freezed == albumArtistSort
          ? _value.albumArtistSort
          : albumArtistSort // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      titleSort: freezed == titleSort
          ? _value.titleSort
          : titleSort // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      genre: freezed == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      mood: freezed == mood
          ? _value.mood
          : mood // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      originalDate: freezed == originalDate
          ? _value.originalDate
          : originalDate // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      composer: freezed == composer
          ? _value.composer
          : composer // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      composerSort: freezed == composerSort
          ? _value.composerSort
          : composerSort // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      performer: freezed == performer
          ? _value.performer
          : performer // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      conductor: freezed == conductor
          ? _value.conductor
          : conductor // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      work: freezed == work
          ? _value.work
          : work // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      ensemble: freezed == ensemble
          ? _value.ensemble
          : ensemble // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      movement: freezed == movement
          ? _value.movement
          : movement // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      movementNumber: freezed == movementNumber
          ? _value.movementNumber
          : movementNumber // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      grouping: freezed == grouping
          ? _value.grouping
          : grouping // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      disc: freezed == disc
          ? _value.disc
          : disc // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      musicbrainzArtistid: freezed == musicbrainzArtistid
          ? _value.musicbrainzArtistid
          : musicbrainzArtistid // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      musicbrainzAlbumid: freezed == musicbrainzAlbumid
          ? _value.musicbrainzAlbumid
          : musicbrainzAlbumid // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      musicbrainzAlbumartistid: freezed == musicbrainzAlbumartistid
          ? _value.musicbrainzAlbumartistid
          : musicbrainzAlbumartistid // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      musicbrainzTrackid: freezed == musicbrainzTrackid
          ? _value.musicbrainzTrackid
          : musicbrainzTrackid // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      musicbrainzReleasetrackid: freezed == musicbrainzReleasetrackid
          ? _value.musicbrainzReleasetrackid
          : musicbrainzReleasetrackid // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      musicbrainzWorkid: freezed == musicbrainzWorkid
          ? _value.musicbrainzWorkid
          : musicbrainzWorkid // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
      {@JsonKey(fromJson: parseStringSafe)
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
      @JsonKey(name: 'Artist')
          List<String>? artist,
      @JsonKey(name: 'ArtistSort')
          List<String>? artistSort,
      @JsonKey(name: 'Album')
          List<String>? album,
      @JsonKey(name: 'AlbumSort')
          List<String>? albumSort,
      @JsonKey(name: 'AlbumArtist')
          List<String>? albumArtist,
      @JsonKey(name: 'AlbumArtistSort')
          List<String>? albumArtistSort,
      @JsonKey(name: 'Title')
          List<String>? title,
      @JsonKey(name: 'TitleSort')
          List<String>? titleSort,
      @JsonKey(name: 'Name')
          List<String>? name,
      @JsonKey(name: 'Genre')
          List<String>? genre,
      @JsonKey(name: 'Mood')
          List<String>? mood,
      @JsonKey(name: 'Date')
          List<String>? date,
      @JsonKey(name: 'OriginalDate')
          List<String>? originalDate,
      @JsonKey(name: 'Composer')
          List<String>? composer,
      @JsonKey(name: 'ComposerSort')
          List<String>? composerSort,
      @JsonKey(name: 'Performer')
          List<String>? performer,
      @JsonKey(name: 'Conductor')
          List<String>? conductor,
      @JsonKey(name: 'Work')
          List<String>? work,
      @JsonKey(name: 'Ensemble')
          List<String>? ensemble,
      @JsonKey(name: 'Movement')
          List<String>? movement,
      @JsonKey(name: 'MovementNumber')
          List<String>? movementNumber,
      @JsonKey(name: 'Location')
          List<String>? location,
      @JsonKey(name: 'Grouping')
          List<String>? grouping,
      @JsonKey(name: 'Comment')
          List<String>? comment,
      @JsonKey(name: 'Disc')
          List<String>? disc,
      @JsonKey(name: 'Label')
          List<String>? label,
      @JsonKey(name: 'MUSICBRAINZ_ARTISTID')
          List<String>? musicbrainzArtistid,
      @JsonKey(name: 'MUSICBRAINZ_ALBUMID')
          List<String>? musicbrainzAlbumid,
      @JsonKey(name: 'MUSICBRAINZ_ALBUMARTISTID')
          List<String>? musicbrainzAlbumartistid,
      @JsonKey(name: 'MUSICBRAINZ_TRACKID')
          List<String>? musicbrainzTrackid,
      @JsonKey(name: 'MUSICBRAINZ_RELEASETRACKID')
          List<String>? musicbrainzReleasetrackid,
      @JsonKey(name: 'MUSICBRAINZ_WORKID')
          List<String>? musicbrainzWorkid});
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
    Object? artist = freezed,
    Object? artistSort = freezed,
    Object? album = freezed,
    Object? albumSort = freezed,
    Object? albumArtist = freezed,
    Object? albumArtistSort = freezed,
    Object? title = freezed,
    Object? titleSort = freezed,
    Object? name = freezed,
    Object? genre = freezed,
    Object? mood = freezed,
    Object? date = freezed,
    Object? originalDate = freezed,
    Object? composer = freezed,
    Object? composerSort = freezed,
    Object? performer = freezed,
    Object? conductor = freezed,
    Object? work = freezed,
    Object? ensemble = freezed,
    Object? movement = freezed,
    Object? movementNumber = freezed,
    Object? location = freezed,
    Object? grouping = freezed,
    Object? comment = freezed,
    Object? disc = freezed,
    Object? label = freezed,
    Object? musicbrainzArtistid = freezed,
    Object? musicbrainzAlbumid = freezed,
    Object? musicbrainzAlbumartistid = freezed,
    Object? musicbrainzTrackid = freezed,
    Object? musicbrainzReleasetrackid = freezed,
    Object? musicbrainzWorkid = freezed,
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
      artist: freezed == artist
          ? _value._artist
          : artist // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      artistSort: freezed == artistSort
          ? _value._artistSort
          : artistSort // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      album: freezed == album
          ? _value._album
          : album // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      albumSort: freezed == albumSort
          ? _value._albumSort
          : albumSort // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      albumArtist: freezed == albumArtist
          ? _value._albumArtist
          : albumArtist // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      albumArtistSort: freezed == albumArtistSort
          ? _value._albumArtistSort
          : albumArtistSort // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      title: freezed == title
          ? _value._title
          : title // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      titleSort: freezed == titleSort
          ? _value._titleSort
          : titleSort // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      name: freezed == name
          ? _value._name
          : name // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      genre: freezed == genre
          ? _value._genre
          : genre // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      mood: freezed == mood
          ? _value._mood
          : mood // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      date: freezed == date
          ? _value._date
          : date // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      originalDate: freezed == originalDate
          ? _value._originalDate
          : originalDate // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      composer: freezed == composer
          ? _value._composer
          : composer // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      composerSort: freezed == composerSort
          ? _value._composerSort
          : composerSort // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      performer: freezed == performer
          ? _value._performer
          : performer // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      conductor: freezed == conductor
          ? _value._conductor
          : conductor // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      work: freezed == work
          ? _value._work
          : work // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      ensemble: freezed == ensemble
          ? _value._ensemble
          : ensemble // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      movement: freezed == movement
          ? _value._movement
          : movement // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      movementNumber: freezed == movementNumber
          ? _value._movementNumber
          : movementNumber // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      location: freezed == location
          ? _value._location
          : location // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      grouping: freezed == grouping
          ? _value._grouping
          : grouping // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      comment: freezed == comment
          ? _value._comment
          : comment // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      disc: freezed == disc
          ? _value._disc
          : disc // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      label: freezed == label
          ? _value._label
          : label // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      musicbrainzArtistid: freezed == musicbrainzArtistid
          ? _value._musicbrainzArtistid
          : musicbrainzArtistid // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      musicbrainzAlbumid: freezed == musicbrainzAlbumid
          ? _value._musicbrainzAlbumid
          : musicbrainzAlbumid // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      musicbrainzAlbumartistid: freezed == musicbrainzAlbumartistid
          ? _value._musicbrainzAlbumartistid
          : musicbrainzAlbumartistid // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      musicbrainzTrackid: freezed == musicbrainzTrackid
          ? _value._musicbrainzTrackid
          : musicbrainzTrackid // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      musicbrainzReleasetrackid: freezed == musicbrainzReleasetrackid
          ? _value._musicbrainzReleasetrackid
          : musicbrainzReleasetrackid // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      musicbrainzWorkid: freezed == musicbrainzWorkid
          ? _value._musicbrainzWorkid
          : musicbrainzWorkid // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MpdSong implements _MpdSong {
  const _$_MpdSong(
      {@JsonKey(fromJson: parseStringSafe)
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
      @JsonKey(name: 'Artist')
          final List<String>? artist,
      @JsonKey(name: 'ArtistSort')
          final List<String>? artistSort,
      @JsonKey(name: 'Album')
          final List<String>? album,
      @JsonKey(name: 'AlbumSort')
          final List<String>? albumSort,
      @JsonKey(name: 'AlbumArtist')
          final List<String>? albumArtist,
      @JsonKey(name: 'AlbumArtistSort')
          final List<String>? albumArtistSort,
      @JsonKey(name: 'Title')
          final List<String>? title,
      @JsonKey(name: 'TitleSort')
          final List<String>? titleSort,
      @JsonKey(name: 'Name')
          final List<String>? name,
      @JsonKey(name: 'Genre')
          final List<String>? genre,
      @JsonKey(name: 'Mood')
          final List<String>? mood,
      @JsonKey(name: 'Date')
          final List<String>? date,
      @JsonKey(name: 'OriginalDate')
          final List<String>? originalDate,
      @JsonKey(name: 'Composer')
          final List<String>? composer,
      @JsonKey(name: 'ComposerSort')
          final List<String>? composerSort,
      @JsonKey(name: 'Performer')
          final List<String>? performer,
      @JsonKey(name: 'Conductor')
          final List<String>? conductor,
      @JsonKey(name: 'Work')
          final List<String>? work,
      @JsonKey(name: 'Ensemble')
          final List<String>? ensemble,
      @JsonKey(name: 'Movement')
          final List<String>? movement,
      @JsonKey(name: 'MovementNumber')
          final List<String>? movementNumber,
      @JsonKey(name: 'Location')
          final List<String>? location,
      @JsonKey(name: 'Grouping')
          final List<String>? grouping,
      @JsonKey(name: 'Comment')
          final List<String>? comment,
      @JsonKey(name: 'Disc')
          final List<String>? disc,
      @JsonKey(name: 'Label')
          final List<String>? label,
      @JsonKey(name: 'MUSICBRAINZ_ARTISTID')
          final List<String>? musicbrainzArtistid,
      @JsonKey(name: 'MUSICBRAINZ_ALBUMID')
          final List<String>? musicbrainzAlbumid,
      @JsonKey(name: 'MUSICBRAINZ_ALBUMARTISTID')
          final List<String>? musicbrainzAlbumartistid,
      @JsonKey(name: 'MUSICBRAINZ_TRACKID')
          final List<String>? musicbrainzTrackid,
      @JsonKey(name: 'MUSICBRAINZ_RELEASETRACKID')
          final List<String>? musicbrainzReleasetrackid,
      @JsonKey(name: 'MUSICBRAINZ_WORKID')
          final List<String>? musicbrainzWorkid})
      : _artist = artist,
        _artistSort = artistSort,
        _album = album,
        _albumSort = albumSort,
        _albumArtist = albumArtist,
        _albumArtistSort = albumArtistSort,
        _title = title,
        _titleSort = titleSort,
        _name = name,
        _genre = genre,
        _mood = mood,
        _date = date,
        _originalDate = originalDate,
        _composer = composer,
        _composerSort = composerSort,
        _performer = performer,
        _conductor = conductor,
        _work = work,
        _ensemble = ensemble,
        _movement = movement,
        _movementNumber = movementNumber,
        _location = location,
        _grouping = grouping,
        _comment = comment,
        _disc = disc,
        _label = label,
        _musicbrainzArtistid = musicbrainzArtistid,
        _musicbrainzAlbumid = musicbrainzAlbumid,
        _musicbrainzAlbumartistid = musicbrainzAlbumartistid,
        _musicbrainzTrackid = musicbrainzTrackid,
        _musicbrainzReleasetrackid = musicbrainzReleasetrackid,
        _musicbrainzWorkid = musicbrainzWorkid;

  factory _$_MpdSong.fromJson(Map<String, dynamic> json) =>
      _$$_MpdSongFromJson(json);

  @override
  @JsonKey(fromJson: parseStringSafe)
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

  /// Tags as defined in:
  /// https://mpd.readthedocs.io/en/stable/protocol.html#tags.
  /// Named as they are returned by mpd:
  /// https://github.com/MusicPlayerDaemon/MPD/blob/45f81cde6ddf8dd8e80d9396566900d6e6e5e4d9/src/tag/Names.cxx.
  final List<String>? _artist;

  /// Tags as defined in:
  /// https://mpd.readthedocs.io/en/stable/protocol.html#tags.
  /// Named as they are returned by mpd:
  /// https://github.com/MusicPlayerDaemon/MPD/blob/45f81cde6ddf8dd8e80d9396566900d6e6e5e4d9/src/tag/Names.cxx.
  @override
  @JsonKey(name: 'Artist')
  List<String>? get artist {
    final value = _artist;
    if (value == null) return null;
    if (_artist is EqualUnmodifiableListView) return _artist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _artistSort;
  @override
  @JsonKey(name: 'ArtistSort')
  List<String>? get artistSort {
    final value = _artistSort;
    if (value == null) return null;
    if (_artistSort is EqualUnmodifiableListView) return _artistSort;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _album;
  @override
  @JsonKey(name: 'Album')
  List<String>? get album {
    final value = _album;
    if (value == null) return null;
    if (_album is EqualUnmodifiableListView) return _album;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _albumSort;
  @override
  @JsonKey(name: 'AlbumSort')
  List<String>? get albumSort {
    final value = _albumSort;
    if (value == null) return null;
    if (_albumSort is EqualUnmodifiableListView) return _albumSort;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _albumArtist;
  @override
  @JsonKey(name: 'AlbumArtist')
  List<String>? get albumArtist {
    final value = _albumArtist;
    if (value == null) return null;
    if (_albumArtist is EqualUnmodifiableListView) return _albumArtist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _albumArtistSort;
  @override
  @JsonKey(name: 'AlbumArtistSort')
  List<String>? get albumArtistSort {
    final value = _albumArtistSort;
    if (value == null) return null;
    if (_albumArtistSort is EqualUnmodifiableListView) return _albumArtistSort;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _title;
  @override
  @JsonKey(name: 'Title')
  List<String>? get title {
    final value = _title;
    if (value == null) return null;
    if (_title is EqualUnmodifiableListView) return _title;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _titleSort;
  @override
  @JsonKey(name: 'TitleSort')
  List<String>? get titleSort {
    final value = _titleSort;
    if (value == null) return null;
    if (_titleSort is EqualUnmodifiableListView) return _titleSort;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _name;
  @override
  @JsonKey(name: 'Name')
  List<String>? get name {
    final value = _name;
    if (value == null) return null;
    if (_name is EqualUnmodifiableListView) return _name;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _genre;
  @override
  @JsonKey(name: 'Genre')
  List<String>? get genre {
    final value = _genre;
    if (value == null) return null;
    if (_genre is EqualUnmodifiableListView) return _genre;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _mood;
  @override
  @JsonKey(name: 'Mood')
  List<String>? get mood {
    final value = _mood;
    if (value == null) return null;
    if (_mood is EqualUnmodifiableListView) return _mood;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _date;
  @override
  @JsonKey(name: 'Date')
  List<String>? get date {
    final value = _date;
    if (value == null) return null;
    if (_date is EqualUnmodifiableListView) return _date;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _originalDate;
  @override
  @JsonKey(name: 'OriginalDate')
  List<String>? get originalDate {
    final value = _originalDate;
    if (value == null) return null;
    if (_originalDate is EqualUnmodifiableListView) return _originalDate;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _composer;
  @override
  @JsonKey(name: 'Composer')
  List<String>? get composer {
    final value = _composer;
    if (value == null) return null;
    if (_composer is EqualUnmodifiableListView) return _composer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _composerSort;
  @override
  @JsonKey(name: 'ComposerSort')
  List<String>? get composerSort {
    final value = _composerSort;
    if (value == null) return null;
    if (_composerSort is EqualUnmodifiableListView) return _composerSort;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _performer;
  @override
  @JsonKey(name: 'Performer')
  List<String>? get performer {
    final value = _performer;
    if (value == null) return null;
    if (_performer is EqualUnmodifiableListView) return _performer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _conductor;
  @override
  @JsonKey(name: 'Conductor')
  List<String>? get conductor {
    final value = _conductor;
    if (value == null) return null;
    if (_conductor is EqualUnmodifiableListView) return _conductor;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _work;
  @override
  @JsonKey(name: 'Work')
  List<String>? get work {
    final value = _work;
    if (value == null) return null;
    if (_work is EqualUnmodifiableListView) return _work;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _ensemble;
  @override
  @JsonKey(name: 'Ensemble')
  List<String>? get ensemble {
    final value = _ensemble;
    if (value == null) return null;
    if (_ensemble is EqualUnmodifiableListView) return _ensemble;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _movement;
  @override
  @JsonKey(name: 'Movement')
  List<String>? get movement {
    final value = _movement;
    if (value == null) return null;
    if (_movement is EqualUnmodifiableListView) return _movement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _movementNumber;
  @override
  @JsonKey(name: 'MovementNumber')
  List<String>? get movementNumber {
    final value = _movementNumber;
    if (value == null) return null;
    if (_movementNumber is EqualUnmodifiableListView) return _movementNumber;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _location;
  @override
  @JsonKey(name: 'Location')
  List<String>? get location {
    final value = _location;
    if (value == null) return null;
    if (_location is EqualUnmodifiableListView) return _location;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _grouping;
  @override
  @JsonKey(name: 'Grouping')
  List<String>? get grouping {
    final value = _grouping;
    if (value == null) return null;
    if (_grouping is EqualUnmodifiableListView) return _grouping;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _comment;
  @override
  @JsonKey(name: 'Comment')
  List<String>? get comment {
    final value = _comment;
    if (value == null) return null;
    if (_comment is EqualUnmodifiableListView) return _comment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _disc;
  @override
  @JsonKey(name: 'Disc')
  List<String>? get disc {
    final value = _disc;
    if (value == null) return null;
    if (_disc is EqualUnmodifiableListView) return _disc;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _label;
  @override
  @JsonKey(name: 'Label')
  List<String>? get label {
    final value = _label;
    if (value == null) return null;
    if (_label is EqualUnmodifiableListView) return _label;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _musicbrainzArtistid;
  @override
  @JsonKey(name: 'MUSICBRAINZ_ARTISTID')
  List<String>? get musicbrainzArtistid {
    final value = _musicbrainzArtistid;
    if (value == null) return null;
    if (_musicbrainzArtistid is EqualUnmodifiableListView)
      return _musicbrainzArtistid;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _musicbrainzAlbumid;
  @override
  @JsonKey(name: 'MUSICBRAINZ_ALBUMID')
  List<String>? get musicbrainzAlbumid {
    final value = _musicbrainzAlbumid;
    if (value == null) return null;
    if (_musicbrainzAlbumid is EqualUnmodifiableListView)
      return _musicbrainzAlbumid;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _musicbrainzAlbumartistid;
  @override
  @JsonKey(name: 'MUSICBRAINZ_ALBUMARTISTID')
  List<String>? get musicbrainzAlbumartistid {
    final value = _musicbrainzAlbumartistid;
    if (value == null) return null;
    if (_musicbrainzAlbumartistid is EqualUnmodifiableListView)
      return _musicbrainzAlbumartistid;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _musicbrainzTrackid;
  @override
  @JsonKey(name: 'MUSICBRAINZ_TRACKID')
  List<String>? get musicbrainzTrackid {
    final value = _musicbrainzTrackid;
    if (value == null) return null;
    if (_musicbrainzTrackid is EqualUnmodifiableListView)
      return _musicbrainzTrackid;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _musicbrainzReleasetrackid;
  @override
  @JsonKey(name: 'MUSICBRAINZ_RELEASETRACKID')
  List<String>? get musicbrainzReleasetrackid {
    final value = _musicbrainzReleasetrackid;
    if (value == null) return null;
    if (_musicbrainzReleasetrackid is EqualUnmodifiableListView)
      return _musicbrainzReleasetrackid;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _musicbrainzWorkid;
  @override
  @JsonKey(name: 'MUSICBRAINZ_WORKID')
  List<String>? get musicbrainzWorkid {
    final value = _musicbrainzWorkid;
    if (value == null) return null;
    if (_musicbrainzWorkid is EqualUnmodifiableListView)
      return _musicbrainzWorkid;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MpdSong(file: $file, lastModified: $lastModified, format: $format, time: $time, duration: $duration, pos: $pos, id: $id, artist: $artist, artistSort: $artistSort, album: $album, albumSort: $albumSort, albumArtist: $albumArtist, albumArtistSort: $albumArtistSort, title: $title, titleSort: $titleSort, name: $name, genre: $genre, mood: $mood, date: $date, originalDate: $originalDate, composer: $composer, composerSort: $composerSort, performer: $performer, conductor: $conductor, work: $work, ensemble: $ensemble, movement: $movement, movementNumber: $movementNumber, location: $location, grouping: $grouping, comment: $comment, disc: $disc, label: $label, musicbrainzArtistid: $musicbrainzArtistid, musicbrainzAlbumid: $musicbrainzAlbumid, musicbrainzAlbumartistid: $musicbrainzAlbumartistid, musicbrainzTrackid: $musicbrainzTrackid, musicbrainzReleasetrackid: $musicbrainzReleasetrackid, musicbrainzWorkid: $musicbrainzWorkid)';
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
            const DeepCollectionEquality().equals(other._artist, _artist) &&
            const DeepCollectionEquality()
                .equals(other._artistSort, _artistSort) &&
            const DeepCollectionEquality().equals(other._album, _album) &&
            const DeepCollectionEquality()
                .equals(other._albumSort, _albumSort) &&
            const DeepCollectionEquality()
                .equals(other._albumArtist, _albumArtist) &&
            const DeepCollectionEquality()
                .equals(other._albumArtistSort, _albumArtistSort) &&
            const DeepCollectionEquality().equals(other._title, _title) &&
            const DeepCollectionEquality()
                .equals(other._titleSort, _titleSort) &&
            const DeepCollectionEquality().equals(other._name, _name) &&
            const DeepCollectionEquality().equals(other._genre, _genre) &&
            const DeepCollectionEquality().equals(other._mood, _mood) &&
            const DeepCollectionEquality().equals(other._date, _date) &&
            const DeepCollectionEquality()
                .equals(other._originalDate, _originalDate) &&
            const DeepCollectionEquality().equals(other._composer, _composer) &&
            const DeepCollectionEquality()
                .equals(other._composerSort, _composerSort) &&
            const DeepCollectionEquality()
                .equals(other._performer, _performer) &&
            const DeepCollectionEquality()
                .equals(other._conductor, _conductor) &&
            const DeepCollectionEquality().equals(other._work, _work) &&
            const DeepCollectionEquality().equals(other._ensemble, _ensemble) &&
            const DeepCollectionEquality().equals(other._movement, _movement) &&
            const DeepCollectionEquality()
                .equals(other._movementNumber, _movementNumber) &&
            const DeepCollectionEquality().equals(other._location, _location) &&
            const DeepCollectionEquality().equals(other._grouping, _grouping) &&
            const DeepCollectionEquality().equals(other._comment, _comment) &&
            const DeepCollectionEquality().equals(other._disc, _disc) &&
            const DeepCollectionEquality().equals(other._label, _label) &&
            const DeepCollectionEquality()
                .equals(other._musicbrainzArtistid, _musicbrainzArtistid) &&
            const DeepCollectionEquality()
                .equals(other._musicbrainzAlbumid, _musicbrainzAlbumid) &&
            const DeepCollectionEquality().equals(
                other._musicbrainzAlbumartistid, _musicbrainzAlbumartistid) &&
            const DeepCollectionEquality()
                .equals(other._musicbrainzTrackid, _musicbrainzTrackid) &&
            const DeepCollectionEquality().equals(
                other._musicbrainzReleasetrackid, _musicbrainzReleasetrackid) &&
            const DeepCollectionEquality()
                .equals(other._musicbrainzWorkid, _musicbrainzWorkid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        file,
        lastModified,
        format,
        time,
        duration,
        pos,
        id,
        const DeepCollectionEquality().hash(_artist),
        const DeepCollectionEquality().hash(_artistSort),
        const DeepCollectionEquality().hash(_album),
        const DeepCollectionEquality().hash(_albumSort),
        const DeepCollectionEquality().hash(_albumArtist),
        const DeepCollectionEquality().hash(_albumArtistSort),
        const DeepCollectionEquality().hash(_title),
        const DeepCollectionEquality().hash(_titleSort),
        const DeepCollectionEquality().hash(_name),
        const DeepCollectionEquality().hash(_genre),
        const DeepCollectionEquality().hash(_mood),
        const DeepCollectionEquality().hash(_date),
        const DeepCollectionEquality().hash(_originalDate),
        const DeepCollectionEquality().hash(_composer),
        const DeepCollectionEquality().hash(_composerSort),
        const DeepCollectionEquality().hash(_performer),
        const DeepCollectionEquality().hash(_conductor),
        const DeepCollectionEquality().hash(_work),
        const DeepCollectionEquality().hash(_ensemble),
        const DeepCollectionEquality().hash(_movement),
        const DeepCollectionEquality().hash(_movementNumber),
        const DeepCollectionEquality().hash(_location),
        const DeepCollectionEquality().hash(_grouping),
        const DeepCollectionEquality().hash(_comment),
        const DeepCollectionEquality().hash(_disc),
        const DeepCollectionEquality().hash(_label),
        const DeepCollectionEquality().hash(_musicbrainzArtistid),
        const DeepCollectionEquality().hash(_musicbrainzAlbumid),
        const DeepCollectionEquality().hash(_musicbrainzAlbumartistid),
        const DeepCollectionEquality().hash(_musicbrainzTrackid),
        const DeepCollectionEquality().hash(_musicbrainzReleasetrackid),
        const DeepCollectionEquality().hash(_musicbrainzWorkid)
      ]);

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
      {@JsonKey(fromJson: parseStringSafe)
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
      @JsonKey(name: 'Artist')
          final List<String>? artist,
      @JsonKey(name: 'ArtistSort')
          final List<String>? artistSort,
      @JsonKey(name: 'Album')
          final List<String>? album,
      @JsonKey(name: 'AlbumSort')
          final List<String>? albumSort,
      @JsonKey(name: 'AlbumArtist')
          final List<String>? albumArtist,
      @JsonKey(name: 'AlbumArtistSort')
          final List<String>? albumArtistSort,
      @JsonKey(name: 'Title')
          final List<String>? title,
      @JsonKey(name: 'TitleSort')
          final List<String>? titleSort,
      @JsonKey(name: 'Name')
          final List<String>? name,
      @JsonKey(name: 'Genre')
          final List<String>? genre,
      @JsonKey(name: 'Mood')
          final List<String>? mood,
      @JsonKey(name: 'Date')
          final List<String>? date,
      @JsonKey(name: 'OriginalDate')
          final List<String>? originalDate,
      @JsonKey(name: 'Composer')
          final List<String>? composer,
      @JsonKey(name: 'ComposerSort')
          final List<String>? composerSort,
      @JsonKey(name: 'Performer')
          final List<String>? performer,
      @JsonKey(name: 'Conductor')
          final List<String>? conductor,
      @JsonKey(name: 'Work')
          final List<String>? work,
      @JsonKey(name: 'Ensemble')
          final List<String>? ensemble,
      @JsonKey(name: 'Movement')
          final List<String>? movement,
      @JsonKey(name: 'MovementNumber')
          final List<String>? movementNumber,
      @JsonKey(name: 'Location')
          final List<String>? location,
      @JsonKey(name: 'Grouping')
          final List<String>? grouping,
      @JsonKey(name: 'Comment')
          final List<String>? comment,
      @JsonKey(name: 'Disc')
          final List<String>? disc,
      @JsonKey(name: 'Label')
          final List<String>? label,
      @JsonKey(name: 'MUSICBRAINZ_ARTISTID')
          final List<String>? musicbrainzArtistid,
      @JsonKey(name: 'MUSICBRAINZ_ALBUMID')
          final List<String>? musicbrainzAlbumid,
      @JsonKey(name: 'MUSICBRAINZ_ALBUMARTISTID')
          final List<String>? musicbrainzAlbumartistid,
      @JsonKey(name: 'MUSICBRAINZ_TRACKID')
          final List<String>? musicbrainzTrackid,
      @JsonKey(name: 'MUSICBRAINZ_RELEASETRACKID')
          final List<String>? musicbrainzReleasetrackid,
      @JsonKey(name: 'MUSICBRAINZ_WORKID')
          final List<String>? musicbrainzWorkid}) = _$_MpdSong;

  factory _MpdSong.fromJson(Map<String, dynamic> json) = _$_MpdSong.fromJson;

  @override
  @JsonKey(fromJson: parseStringSafe)
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

  /// Tags as defined in:
  /// https://mpd.readthedocs.io/en/stable/protocol.html#tags.
  /// Named as they are returned by mpd:
  /// https://github.com/MusicPlayerDaemon/MPD/blob/45f81cde6ddf8dd8e80d9396566900d6e6e5e4d9/src/tag/Names.cxx.
  @JsonKey(name: 'Artist')
  List<String>? get artist;
  @override
  @JsonKey(name: 'ArtistSort')
  List<String>? get artistSort;
  @override
  @JsonKey(name: 'Album')
  List<String>? get album;
  @override
  @JsonKey(name: 'AlbumSort')
  List<String>? get albumSort;
  @override
  @JsonKey(name: 'AlbumArtist')
  List<String>? get albumArtist;
  @override
  @JsonKey(name: 'AlbumArtistSort')
  List<String>? get albumArtistSort;
  @override
  @JsonKey(name: 'Title')
  List<String>? get title;
  @override
  @JsonKey(name: 'TitleSort')
  List<String>? get titleSort;
  @override
  @JsonKey(name: 'Name')
  List<String>? get name;
  @override
  @JsonKey(name: 'Genre')
  List<String>? get genre;
  @override
  @JsonKey(name: 'Mood')
  List<String>? get mood;
  @override
  @JsonKey(name: 'Date')
  List<String>? get date;
  @override
  @JsonKey(name: 'OriginalDate')
  List<String>? get originalDate;
  @override
  @JsonKey(name: 'Composer')
  List<String>? get composer;
  @override
  @JsonKey(name: 'ComposerSort')
  List<String>? get composerSort;
  @override
  @JsonKey(name: 'Performer')
  List<String>? get performer;
  @override
  @JsonKey(name: 'Conductor')
  List<String>? get conductor;
  @override
  @JsonKey(name: 'Work')
  List<String>? get work;
  @override
  @JsonKey(name: 'Ensemble')
  List<String>? get ensemble;
  @override
  @JsonKey(name: 'Movement')
  List<String>? get movement;
  @override
  @JsonKey(name: 'MovementNumber')
  List<String>? get movementNumber;
  @override
  @JsonKey(name: 'Location')
  List<String>? get location;
  @override
  @JsonKey(name: 'Grouping')
  List<String>? get grouping;
  @override
  @JsonKey(name: 'Comment')
  List<String>? get comment;
  @override
  @JsonKey(name: 'Disc')
  List<String>? get disc;
  @override
  @JsonKey(name: 'Label')
  List<String>? get label;
  @override
  @JsonKey(name: 'MUSICBRAINZ_ARTISTID')
  List<String>? get musicbrainzArtistid;
  @override
  @JsonKey(name: 'MUSICBRAINZ_ALBUMID')
  List<String>? get musicbrainzAlbumid;
  @override
  @JsonKey(name: 'MUSICBRAINZ_ALBUMARTISTID')
  List<String>? get musicbrainzAlbumartistid;
  @override
  @JsonKey(name: 'MUSICBRAINZ_TRACKID')
  List<String>? get musicbrainzTrackid;
  @override
  @JsonKey(name: 'MUSICBRAINZ_RELEASETRACKID')
  List<String>? get musicbrainzReleasetrackid;
  @override
  @JsonKey(name: 'MUSICBRAINZ_WORKID')
  List<String>? get musicbrainzWorkid;
  @override
  @JsonKey(ignore: true)
  _$$_MpdSongCopyWith<_$_MpdSong> get copyWith =>
      throw _privateConstructorUsedError;
}
