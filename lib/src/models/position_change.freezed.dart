// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'position_change.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MpdPositionChange _$MpdPositionChangeFromJson(Map<String, dynamic> json) {
  return _MpdPositionChange.fromJson(json);
}

/// @nodoc
mixin _$MpdPositionChange {
  @JsonKey(name: 'Id', fromJson: parseInt)
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseInt)
  int? get cpos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MpdPositionChangeCopyWith<MpdPositionChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MpdPositionChangeCopyWith<$Res> {
  factory $MpdPositionChangeCopyWith(
          MpdPositionChange value, $Res Function(MpdPositionChange) then) =
      _$MpdPositionChangeCopyWithImpl<$Res, MpdPositionChange>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Id', fromJson: parseInt) int? id,
      @JsonKey(fromJson: parseInt) int? cpos});
}

/// @nodoc
class _$MpdPositionChangeCopyWithImpl<$Res, $Val extends MpdPositionChange>
    implements $MpdPositionChangeCopyWith<$Res> {
  _$MpdPositionChangeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? cpos = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      cpos: freezed == cpos
          ? _value.cpos
          : cpos // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MpdPositionChangeCopyWith<$Res>
    implements $MpdPositionChangeCopyWith<$Res> {
  factory _$$_MpdPositionChangeCopyWith(_$_MpdPositionChange value,
          $Res Function(_$_MpdPositionChange) then) =
      __$$_MpdPositionChangeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Id', fromJson: parseInt) int? id,
      @JsonKey(fromJson: parseInt) int? cpos});
}

/// @nodoc
class __$$_MpdPositionChangeCopyWithImpl<$Res>
    extends _$MpdPositionChangeCopyWithImpl<$Res, _$_MpdPositionChange>
    implements _$$_MpdPositionChangeCopyWith<$Res> {
  __$$_MpdPositionChangeCopyWithImpl(
      _$_MpdPositionChange _value, $Res Function(_$_MpdPositionChange) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? cpos = freezed,
  }) {
    return _then(_$_MpdPositionChange(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      cpos: freezed == cpos
          ? _value.cpos
          : cpos // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MpdPositionChange implements _MpdPositionChange {
  const _$_MpdPositionChange(
      {@JsonKey(name: 'Id', fromJson: parseInt) this.id,
      @JsonKey(fromJson: parseInt) this.cpos});

  factory _$_MpdPositionChange.fromJson(Map<String, dynamic> json) =>
      _$$_MpdPositionChangeFromJson(json);

  @override
  @JsonKey(name: 'Id', fromJson: parseInt)
  final int? id;
  @override
  @JsonKey(fromJson: parseInt)
  final int? cpos;

  @override
  String toString() {
    return 'MpdPositionChange(id: $id, cpos: $cpos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MpdPositionChange &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.cpos, cpos) || other.cpos == cpos));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, cpos);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MpdPositionChangeCopyWith<_$_MpdPositionChange> get copyWith =>
      __$$_MpdPositionChangeCopyWithImpl<_$_MpdPositionChange>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MpdPositionChangeToJson(
      this,
    );
  }
}

abstract class _MpdPositionChange implements MpdPositionChange {
  const factory _MpdPositionChange(
      {@JsonKey(name: 'Id', fromJson: parseInt) final int? id,
      @JsonKey(fromJson: parseInt) final int? cpos}) = _$_MpdPositionChange;

  factory _MpdPositionChange.fromJson(Map<String, dynamic> json) =
      _$_MpdPositionChange.fromJson;

  @override
  @JsonKey(name: 'Id', fromJson: parseInt)
  int? get id;
  @override
  @JsonKey(fromJson: parseInt)
  int? get cpos;
  @override
  @JsonKey(ignore: true)
  _$$_MpdPositionChangeCopyWith<_$_MpdPositionChange> get copyWith =>
      throw _privateConstructorUsedError;
}
