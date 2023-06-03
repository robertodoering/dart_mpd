// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MpdOutput _$MpdOutputFromJson(Map<String, dynamic> json) {
  return _MpdOutput.fromJson(json);
}

/// @nodoc
mixin _$MpdOutput {
  @JsonKey(fromJson: parseInt)
  int? get outputId => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseString)
  String? get outputname => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseBool)
  bool? get outputenabled => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseString)
  String? get plugin => throw _privateConstructorUsedError;

  /// Any other arbitrary values that are not explicitly parsed.
  @JsonKey(includeFromJson: false)
  Map<String, List<String>> get values => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MpdOutputCopyWith<MpdOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MpdOutputCopyWith<$Res> {
  factory $MpdOutputCopyWith(MpdOutput value, $Res Function(MpdOutput) then) =
      _$MpdOutputCopyWithImpl<$Res, MpdOutput>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: parseInt) int? outputId,
      @JsonKey(fromJson: parseString) String? outputname,
      @JsonKey(fromJson: parseBool) bool? outputenabled,
      @JsonKey(fromJson: parseString) String? plugin,
      @JsonKey(includeFromJson: false) Map<String, List<String>> values});
}

/// @nodoc
class _$MpdOutputCopyWithImpl<$Res, $Val extends MpdOutput>
    implements $MpdOutputCopyWith<$Res> {
  _$MpdOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? outputId = freezed,
    Object? outputname = freezed,
    Object? outputenabled = freezed,
    Object? plugin = freezed,
    Object? values = null,
  }) {
    return _then(_value.copyWith(
      outputId: freezed == outputId
          ? _value.outputId
          : outputId // ignore: cast_nullable_to_non_nullable
              as int?,
      outputname: freezed == outputname
          ? _value.outputname
          : outputname // ignore: cast_nullable_to_non_nullable
              as String?,
      outputenabled: freezed == outputenabled
          ? _value.outputenabled
          : outputenabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      plugin: freezed == plugin
          ? _value.plugin
          : plugin // ignore: cast_nullable_to_non_nullable
              as String?,
      values: null == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MpdOutputCopyWith<$Res> implements $MpdOutputCopyWith<$Res> {
  factory _$$_MpdOutputCopyWith(
          _$_MpdOutput value, $Res Function(_$_MpdOutput) then) =
      __$$_MpdOutputCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: parseInt) int? outputId,
      @JsonKey(fromJson: parseString) String? outputname,
      @JsonKey(fromJson: parseBool) bool? outputenabled,
      @JsonKey(fromJson: parseString) String? plugin,
      @JsonKey(includeFromJson: false) Map<String, List<String>> values});
}

/// @nodoc
class __$$_MpdOutputCopyWithImpl<$Res>
    extends _$MpdOutputCopyWithImpl<$Res, _$_MpdOutput>
    implements _$$_MpdOutputCopyWith<$Res> {
  __$$_MpdOutputCopyWithImpl(
      _$_MpdOutput _value, $Res Function(_$_MpdOutput) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? outputId = freezed,
    Object? outputname = freezed,
    Object? outputenabled = freezed,
    Object? plugin = freezed,
    Object? values = null,
  }) {
    return _then(_$_MpdOutput(
      outputId: freezed == outputId
          ? _value.outputId
          : outputId // ignore: cast_nullable_to_non_nullable
              as int?,
      outputname: freezed == outputname
          ? _value.outputname
          : outputname // ignore: cast_nullable_to_non_nullable
              as String?,
      outputenabled: freezed == outputenabled
          ? _value.outputenabled
          : outputenabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      plugin: freezed == plugin
          ? _value.plugin
          : plugin // ignore: cast_nullable_to_non_nullable
              as String?,
      values: null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MpdOutput implements _MpdOutput {
  const _$_MpdOutput(
      {@JsonKey(fromJson: parseInt)
          this.outputId,
      @JsonKey(fromJson: parseString)
          this.outputname,
      @JsonKey(fromJson: parseBool)
          this.outputenabled,
      @JsonKey(fromJson: parseString)
          this.plugin,
      @JsonKey(includeFromJson: false)
          final Map<String, List<String>> values = const {}})
      : _values = values;

  factory _$_MpdOutput.fromJson(Map<String, dynamic> json) =>
      _$$_MpdOutputFromJson(json);

  @override
  @JsonKey(fromJson: parseInt)
  final int? outputId;
  @override
  @JsonKey(fromJson: parseString)
  final String? outputname;
  @override
  @JsonKey(fromJson: parseBool)
  final bool? outputenabled;
  @override
  @JsonKey(fromJson: parseString)
  final String? plugin;

  /// Any other arbitrary values that are not explicitly parsed.
  final Map<String, List<String>> _values;

  /// Any other arbitrary values that are not explicitly parsed.
  @override
  @JsonKey(includeFromJson: false)
  Map<String, List<String>> get values {
    if (_values is EqualUnmodifiableMapView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_values);
  }

  @override
  String toString() {
    return 'MpdOutput(outputId: $outputId, outputname: $outputname, outputenabled: $outputenabled, plugin: $plugin, values: $values)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MpdOutput &&
            (identical(other.outputId, outputId) ||
                other.outputId == outputId) &&
            (identical(other.outputname, outputname) ||
                other.outputname == outputname) &&
            (identical(other.outputenabled, outputenabled) ||
                other.outputenabled == outputenabled) &&
            (identical(other.plugin, plugin) || other.plugin == plugin) &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, outputId, outputname,
      outputenabled, plugin, const DeepCollectionEquality().hash(_values));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MpdOutputCopyWith<_$_MpdOutput> get copyWith =>
      __$$_MpdOutputCopyWithImpl<_$_MpdOutput>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MpdOutputToJson(
      this,
    );
  }
}

abstract class _MpdOutput implements MpdOutput {
  const factory _MpdOutput(
      {@JsonKey(fromJson: parseInt)
          final int? outputId,
      @JsonKey(fromJson: parseString)
          final String? outputname,
      @JsonKey(fromJson: parseBool)
          final bool? outputenabled,
      @JsonKey(fromJson: parseString)
          final String? plugin,
      @JsonKey(includeFromJson: false)
          final Map<String, List<String>> values}) = _$_MpdOutput;

  factory _MpdOutput.fromJson(Map<String, dynamic> json) =
      _$_MpdOutput.fromJson;

  @override
  @JsonKey(fromJson: parseInt)
  int? get outputId;
  @override
  @JsonKey(fromJson: parseString)
  String? get outputname;
  @override
  @JsonKey(fromJson: parseBool)
  bool? get outputenabled;
  @override
  @JsonKey(fromJson: parseString)
  String? get plugin;
  @override

  /// Any other arbitrary values that are not explicitly parsed.
  @JsonKey(includeFromJson: false)
  Map<String, List<String>> get values;
  @override
  @JsonKey(ignore: true)
  _$$_MpdOutputCopyWith<_$_MpdOutput> get copyWith =>
      throw _privateConstructorUsedError;
}
