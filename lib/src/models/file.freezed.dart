// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MpdFile {
  DateTime? get lastModified => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String file, MpdSong? song, DateTime? lastModified, int? size)
        file,
    required TResult Function(
            String directory, DateTime? lastModified, int? size)
        directory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String file, MpdSong? song, DateTime? lastModified, int? size)?
        file,
    TResult? Function(String directory, DateTime? lastModified, int? size)?
        directory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String file, MpdSong? song, DateTime? lastModified, int? size)?
        file,
    TResult Function(String directory, DateTime? lastModified, int? size)?
        directory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MpdFileFile value) file,
    required TResult Function(MpdFileDirectory value) directory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MpdFileFile value)? file,
    TResult? Function(MpdFileDirectory value)? directory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MpdFileFile value)? file,
    TResult Function(MpdFileDirectory value)? directory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MpdFileCopyWith<MpdFile> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MpdFileCopyWith<$Res> {
  factory $MpdFileCopyWith(MpdFile value, $Res Function(MpdFile) then) =
      _$MpdFileCopyWithImpl<$Res, MpdFile>;
  @useResult
  $Res call({DateTime? lastModified, int? size});
}

/// @nodoc
class _$MpdFileCopyWithImpl<$Res, $Val extends MpdFile>
    implements $MpdFileCopyWith<$Res> {
  _$MpdFileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastModified = freezed,
    Object? size = freezed,
  }) {
    return _then(_value.copyWith(
      lastModified: freezed == lastModified
          ? _value.lastModified
          : lastModified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MpdFileFileCopyWith<$Res> implements $MpdFileCopyWith<$Res> {
  factory _$$MpdFileFileCopyWith(
          _$MpdFileFile value, $Res Function(_$MpdFileFile) then) =
      __$$MpdFileFileCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String file, MpdSong? song, DateTime? lastModified, int? size});

  $MpdSongCopyWith<$Res>? get song;
}

/// @nodoc
class __$$MpdFileFileCopyWithImpl<$Res>
    extends _$MpdFileCopyWithImpl<$Res, _$MpdFileFile>
    implements _$$MpdFileFileCopyWith<$Res> {
  __$$MpdFileFileCopyWithImpl(
      _$MpdFileFile _value, $Res Function(_$MpdFileFile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
    Object? song = freezed,
    Object? lastModified = freezed,
    Object? size = freezed,
  }) {
    return _then(_$MpdFileFile(
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String,
      song: freezed == song
          ? _value.song
          : song // ignore: cast_nullable_to_non_nullable
              as MpdSong?,
      lastModified: freezed == lastModified
          ? _value.lastModified
          : lastModified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MpdSongCopyWith<$Res>? get song {
    if (_value.song == null) {
      return null;
    }

    return $MpdSongCopyWith<$Res>(_value.song!, (value) {
      return _then(_value.copyWith(song: value));
    });
  }
}

/// @nodoc

class _$MpdFileFile implements MpdFileFile {
  const _$MpdFileFile(
      {required this.file, this.song, this.lastModified, this.size});

  @override
  final String file;
  @override
  final MpdSong? song;
  @override
  final DateTime? lastModified;
  @override
  final int? size;

  @override
  String toString() {
    return 'MpdFile.file(file: $file, song: $song, lastModified: $lastModified, size: $size)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MpdFileFile &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.song, song) || other.song == song) &&
            (identical(other.lastModified, lastModified) ||
                other.lastModified == lastModified) &&
            (identical(other.size, size) || other.size == size));
  }

  @override
  int get hashCode => Object.hash(runtimeType, file, song, lastModified, size);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MpdFileFileCopyWith<_$MpdFileFile> get copyWith =>
      __$$MpdFileFileCopyWithImpl<_$MpdFileFile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String file, MpdSong? song, DateTime? lastModified, int? size)
        file,
    required TResult Function(
            String directory, DateTime? lastModified, int? size)
        directory,
  }) {
    return file(this.file, song, lastModified, size);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String file, MpdSong? song, DateTime? lastModified, int? size)?
        file,
    TResult? Function(String directory, DateTime? lastModified, int? size)?
        directory,
  }) {
    return file?.call(this.file, song, lastModified, size);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String file, MpdSong? song, DateTime? lastModified, int? size)?
        file,
    TResult Function(String directory, DateTime? lastModified, int? size)?
        directory,
    required TResult orElse(),
  }) {
    if (file != null) {
      return file(this.file, song, lastModified, size);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MpdFileFile value) file,
    required TResult Function(MpdFileDirectory value) directory,
  }) {
    return file(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MpdFileFile value)? file,
    TResult? Function(MpdFileDirectory value)? directory,
  }) {
    return file?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MpdFileFile value)? file,
    TResult Function(MpdFileDirectory value)? directory,
    required TResult orElse(),
  }) {
    if (file != null) {
      return file(this);
    }
    return orElse();
  }
}

abstract class MpdFileFile implements MpdFile {
  const factory MpdFileFile(
      {required final String file,
      final MpdSong? song,
      final DateTime? lastModified,
      final int? size}) = _$MpdFileFile;

  String get file;
  MpdSong? get song;
  @override
  DateTime? get lastModified;
  @override
  int? get size;
  @override
  @JsonKey(ignore: true)
  _$$MpdFileFileCopyWith<_$MpdFileFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MpdFileDirectoryCopyWith<$Res>
    implements $MpdFileCopyWith<$Res> {
  factory _$$MpdFileDirectoryCopyWith(
          _$MpdFileDirectory value, $Res Function(_$MpdFileDirectory) then) =
      __$$MpdFileDirectoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String directory, DateTime? lastModified, int? size});
}

/// @nodoc
class __$$MpdFileDirectoryCopyWithImpl<$Res>
    extends _$MpdFileCopyWithImpl<$Res, _$MpdFileDirectory>
    implements _$$MpdFileDirectoryCopyWith<$Res> {
  __$$MpdFileDirectoryCopyWithImpl(
      _$MpdFileDirectory _value, $Res Function(_$MpdFileDirectory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? directory = null,
    Object? lastModified = freezed,
    Object? size = freezed,
  }) {
    return _then(_$MpdFileDirectory(
      directory: null == directory
          ? _value.directory
          : directory // ignore: cast_nullable_to_non_nullable
              as String,
      lastModified: freezed == lastModified
          ? _value.lastModified
          : lastModified // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$MpdFileDirectory implements MpdFileDirectory {
  const _$MpdFileDirectory(
      {required this.directory, this.lastModified, this.size});

  @override
  final String directory;
  @override
  final DateTime? lastModified;
  @override
  final int? size;

  @override
  String toString() {
    return 'MpdFile.directory(directory: $directory, lastModified: $lastModified, size: $size)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MpdFileDirectory &&
            (identical(other.directory, directory) ||
                other.directory == directory) &&
            (identical(other.lastModified, lastModified) ||
                other.lastModified == lastModified) &&
            (identical(other.size, size) || other.size == size));
  }

  @override
  int get hashCode => Object.hash(runtimeType, directory, lastModified, size);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MpdFileDirectoryCopyWith<_$MpdFileDirectory> get copyWith =>
      __$$MpdFileDirectoryCopyWithImpl<_$MpdFileDirectory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String file, MpdSong? song, DateTime? lastModified, int? size)
        file,
    required TResult Function(
            String directory, DateTime? lastModified, int? size)
        directory,
  }) {
    return directory(this.directory, lastModified, size);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String file, MpdSong? song, DateTime? lastModified, int? size)?
        file,
    TResult? Function(String directory, DateTime? lastModified, int? size)?
        directory,
  }) {
    return directory?.call(this.directory, lastModified, size);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String file, MpdSong? song, DateTime? lastModified, int? size)?
        file,
    TResult Function(String directory, DateTime? lastModified, int? size)?
        directory,
    required TResult orElse(),
  }) {
    if (directory != null) {
      return directory(this.directory, lastModified, size);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MpdFileFile value) file,
    required TResult Function(MpdFileDirectory value) directory,
  }) {
    return directory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MpdFileFile value)? file,
    TResult? Function(MpdFileDirectory value)? directory,
  }) {
    return directory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MpdFileFile value)? file,
    TResult Function(MpdFileDirectory value)? directory,
    required TResult orElse(),
  }) {
    if (directory != null) {
      return directory(this);
    }
    return orElse();
  }
}

abstract class MpdFileDirectory implements MpdFile {
  const factory MpdFileDirectory(
      {required final String directory,
      final DateTime? lastModified,
      final int? size}) = _$MpdFileDirectory;

  String get directory;
  @override
  DateTime? get lastModified;
  @override
  int? get size;
  @override
  @JsonKey(ignore: true)
  _$$MpdFileDirectoryCopyWith<_$MpdFileDirectory> get copyWith =>
      throw _privateConstructorUsedError;
}
