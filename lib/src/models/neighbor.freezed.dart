// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'neighbor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MpdNeighbor _$MpdNeighborFromJson(Map<String, dynamic> json) {
  return _MpdNeighbor.fromJson(json);
}

/// @nodoc
mixin _$MpdNeighbor {
  @JsonKey(fromJson: parseString)
  String? get neighbor => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseString)
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MpdNeighborCopyWith<MpdNeighbor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MpdNeighborCopyWith<$Res> {
  factory $MpdNeighborCopyWith(
          MpdNeighbor value, $Res Function(MpdNeighbor) then) =
      _$MpdNeighborCopyWithImpl<$Res, MpdNeighbor>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: parseString) String? neighbor,
      @JsonKey(fromJson: parseString) String? name});
}

/// @nodoc
class _$MpdNeighborCopyWithImpl<$Res, $Val extends MpdNeighbor>
    implements $MpdNeighborCopyWith<$Res> {
  _$MpdNeighborCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? neighbor = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      neighbor: freezed == neighbor
          ? _value.neighbor
          : neighbor // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MpdNeighborCopyWith<$Res>
    implements $MpdNeighborCopyWith<$Res> {
  factory _$$_MpdNeighborCopyWith(
          _$_MpdNeighbor value, $Res Function(_$_MpdNeighbor) then) =
      __$$_MpdNeighborCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: parseString) String? neighbor,
      @JsonKey(fromJson: parseString) String? name});
}

/// @nodoc
class __$$_MpdNeighborCopyWithImpl<$Res>
    extends _$MpdNeighborCopyWithImpl<$Res, _$_MpdNeighbor>
    implements _$$_MpdNeighborCopyWith<$Res> {
  __$$_MpdNeighborCopyWithImpl(
      _$_MpdNeighbor _value, $Res Function(_$_MpdNeighbor) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? neighbor = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_MpdNeighbor(
      neighbor: freezed == neighbor
          ? _value.neighbor
          : neighbor // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MpdNeighbor implements _MpdNeighbor {
  const _$_MpdNeighbor(
      {@JsonKey(fromJson: parseString) this.neighbor,
      @JsonKey(fromJson: parseString) this.name});

  factory _$_MpdNeighbor.fromJson(Map<String, dynamic> json) =>
      _$$_MpdNeighborFromJson(json);

  @override
  @JsonKey(fromJson: parseString)
  final String? neighbor;
  @override
  @JsonKey(fromJson: parseString)
  final String? name;

  @override
  String toString() {
    return 'MpdNeighbor(neighbor: $neighbor, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MpdNeighbor &&
            (identical(other.neighbor, neighbor) ||
                other.neighbor == neighbor) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, neighbor, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MpdNeighborCopyWith<_$_MpdNeighbor> get copyWith =>
      __$$_MpdNeighborCopyWithImpl<_$_MpdNeighbor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MpdNeighborToJson(
      this,
    );
  }
}

abstract class _MpdNeighbor implements MpdNeighbor {
  const factory _MpdNeighbor(
      {@JsonKey(fromJson: parseString) final String? neighbor,
      @JsonKey(fromJson: parseString) final String? name}) = _$_MpdNeighbor;

  factory _MpdNeighbor.fromJson(Map<String, dynamic> json) =
      _$_MpdNeighbor.fromJson;

  @override
  @JsonKey(fromJson: parseString)
  String? get neighbor;
  @override
  @JsonKey(fromJson: parseString)
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_MpdNeighborCopyWith<_$_MpdNeighbor> get copyWith =>
      throw _privateConstructorUsedError;
}
