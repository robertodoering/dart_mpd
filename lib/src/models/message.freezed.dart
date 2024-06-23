// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MpdMessage _$MpdMessageFromJson(Map<String, dynamic> json) {
  return _MpdMessage.fromJson(json);
}

/// @nodoc
mixin _$MpdMessage {
  @JsonKey(fromJson: parseStringSafe)
  String get channel => throw _privateConstructorUsedError;
  @JsonKey(fromJson: parseStringSafe)
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MpdMessageCopyWith<MpdMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MpdMessageCopyWith<$Res> {
  factory $MpdMessageCopyWith(
          MpdMessage value, $Res Function(MpdMessage) then) =
      _$MpdMessageCopyWithImpl<$Res, MpdMessage>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: parseStringSafe) String channel,
      @JsonKey(fromJson: parseStringSafe) String message});
}

/// @nodoc
class _$MpdMessageCopyWithImpl<$Res, $Val extends MpdMessage>
    implements $MpdMessageCopyWith<$Res> {
  _$MpdMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channel = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      channel: null == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MpdMessageImplCopyWith<$Res>
    implements $MpdMessageCopyWith<$Res> {
  factory _$$MpdMessageImplCopyWith(
          _$MpdMessageImpl value, $Res Function(_$MpdMessageImpl) then) =
      __$$MpdMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: parseStringSafe) String channel,
      @JsonKey(fromJson: parseStringSafe) String message});
}

/// @nodoc
class __$$MpdMessageImplCopyWithImpl<$Res>
    extends _$MpdMessageCopyWithImpl<$Res, _$MpdMessageImpl>
    implements _$$MpdMessageImplCopyWith<$Res> {
  __$$MpdMessageImplCopyWithImpl(
      _$MpdMessageImpl _value, $Res Function(_$MpdMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channel = null,
    Object? message = null,
  }) {
    return _then(_$MpdMessageImpl(
      channel: null == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MpdMessageImpl implements _MpdMessage {
  const _$MpdMessageImpl(
      {@JsonKey(fromJson: parseStringSafe) required this.channel,
      @JsonKey(fromJson: parseStringSafe) required this.message});

  factory _$MpdMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$MpdMessageImplFromJson(json);

  @override
  @JsonKey(fromJson: parseStringSafe)
  final String channel;
  @override
  @JsonKey(fromJson: parseStringSafe)
  final String message;

  @override
  String toString() {
    return 'MpdMessage(channel: $channel, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MpdMessageImpl &&
            (identical(other.channel, channel) || other.channel == channel) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, channel, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MpdMessageImplCopyWith<_$MpdMessageImpl> get copyWith =>
      __$$MpdMessageImplCopyWithImpl<_$MpdMessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MpdMessageImplToJson(
      this,
    );
  }
}

abstract class _MpdMessage implements MpdMessage {
  const factory _MpdMessage(
          {@JsonKey(fromJson: parseStringSafe) required final String channel,
          @JsonKey(fromJson: parseStringSafe) required final String message}) =
      _$MpdMessageImpl;

  factory _MpdMessage.fromJson(Map<String, dynamic> json) =
      _$MpdMessageImpl.fromJson;

  @override
  @JsonKey(fromJson: parseStringSafe)
  String get channel;
  @override
  @JsonKey(fromJson: parseStringSafe)
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$MpdMessageImplCopyWith<_$MpdMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
