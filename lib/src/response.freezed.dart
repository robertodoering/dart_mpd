// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MpdResponse {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Map<String, List<String>>> values, List<int> binary)
        ok,
    required TResult Function(String message) error,
    required TResult Function(String protocolVersion) greeting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Map<String, List<String>>> values, List<int> binary)?
        ok,
    TResult? Function(String message)? error,
    TResult? Function(String protocolVersion)? greeting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Map<String, List<String>>> values, List<int> binary)?
        ok,
    TResult Function(String message)? error,
    TResult Function(String protocolVersion)? greeting,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MpdResponseOk value) ok,
    required TResult Function(MpdResponseError value) error,
    required TResult Function(MpdResponseGreeting value) greeting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MpdResponseOk value)? ok,
    TResult? Function(MpdResponseError value)? error,
    TResult? Function(MpdResponseGreeting value)? greeting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MpdResponseOk value)? ok,
    TResult Function(MpdResponseError value)? error,
    TResult Function(MpdResponseGreeting value)? greeting,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MpdResponseCopyWith<$Res> {
  factory $MpdResponseCopyWith(
          MpdResponse value, $Res Function(MpdResponse) then) =
      _$MpdResponseCopyWithImpl<$Res, MpdResponse>;
}

/// @nodoc
class _$MpdResponseCopyWithImpl<$Res, $Val extends MpdResponse>
    implements $MpdResponseCopyWith<$Res> {
  _$MpdResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MpdResponseOkCopyWith<$Res> {
  factory _$$MpdResponseOkCopyWith(
          _$MpdResponseOk value, $Res Function(_$MpdResponseOk) then) =
      __$$MpdResponseOkCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Map<String, List<String>>> values, List<int> binary});
}

/// @nodoc
class __$$MpdResponseOkCopyWithImpl<$Res>
    extends _$MpdResponseCopyWithImpl<$Res, _$MpdResponseOk>
    implements _$$MpdResponseOkCopyWith<$Res> {
  __$$MpdResponseOkCopyWithImpl(
      _$MpdResponseOk _value, $Res Function(_$MpdResponseOk) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? values = null,
    Object? binary = null,
  }) {
    return _then(_$MpdResponseOk(
      values: null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<Map<String, List<String>>>,
      binary: null == binary
          ? _value._binary
          : binary // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$MpdResponseOk implements MpdResponseOk {
  const _$MpdResponseOk(
      {required final List<Map<String, List<String>>> values,
      required final List<int> binary})
      : _values = values,
        _binary = binary;

  final List<Map<String, List<String>>> _values;
  @override
  List<Map<String, List<String>>> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  final List<int> _binary;
  @override
  List<int> get binary {
    if (_binary is EqualUnmodifiableListView) return _binary;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_binary);
  }

  @override
  String toString() {
    return 'MpdResponse.ok(values: $values, binary: $binary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MpdResponseOk &&
            const DeepCollectionEquality().equals(other._values, _values) &&
            const DeepCollectionEquality().equals(other._binary, _binary));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_values),
      const DeepCollectionEquality().hash(_binary));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MpdResponseOkCopyWith<_$MpdResponseOk> get copyWith =>
      __$$MpdResponseOkCopyWithImpl<_$MpdResponseOk>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Map<String, List<String>>> values, List<int> binary)
        ok,
    required TResult Function(String message) error,
    required TResult Function(String protocolVersion) greeting,
  }) {
    return ok(values, binary);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Map<String, List<String>>> values, List<int> binary)?
        ok,
    TResult? Function(String message)? error,
    TResult? Function(String protocolVersion)? greeting,
  }) {
    return ok?.call(values, binary);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Map<String, List<String>>> values, List<int> binary)?
        ok,
    TResult Function(String message)? error,
    TResult Function(String protocolVersion)? greeting,
    required TResult orElse(),
  }) {
    if (ok != null) {
      return ok(values, binary);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MpdResponseOk value) ok,
    required TResult Function(MpdResponseError value) error,
    required TResult Function(MpdResponseGreeting value) greeting,
  }) {
    return ok(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MpdResponseOk value)? ok,
    TResult? Function(MpdResponseError value)? error,
    TResult? Function(MpdResponseGreeting value)? greeting,
  }) {
    return ok?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MpdResponseOk value)? ok,
    TResult Function(MpdResponseError value)? error,
    TResult Function(MpdResponseGreeting value)? greeting,
    required TResult orElse(),
  }) {
    if (ok != null) {
      return ok(this);
    }
    return orElse();
  }
}

abstract class MpdResponseOk implements MpdResponse {
  const factory MpdResponseOk(
      {required final List<Map<String, List<String>>> values,
      required final List<int> binary}) = _$MpdResponseOk;

  List<Map<String, List<String>>> get values;
  List<int> get binary;
  @JsonKey(ignore: true)
  _$$MpdResponseOkCopyWith<_$MpdResponseOk> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MpdResponseErrorCopyWith<$Res> {
  factory _$$MpdResponseErrorCopyWith(
          _$MpdResponseError value, $Res Function(_$MpdResponseError) then) =
      __$$MpdResponseErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$MpdResponseErrorCopyWithImpl<$Res>
    extends _$MpdResponseCopyWithImpl<$Res, _$MpdResponseError>
    implements _$$MpdResponseErrorCopyWith<$Res> {
  __$$MpdResponseErrorCopyWithImpl(
      _$MpdResponseError _value, $Res Function(_$MpdResponseError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$MpdResponseError(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MpdResponseError implements MpdResponseError {
  const _$MpdResponseError({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'MpdResponse.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MpdResponseError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MpdResponseErrorCopyWith<_$MpdResponseError> get copyWith =>
      __$$MpdResponseErrorCopyWithImpl<_$MpdResponseError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Map<String, List<String>>> values, List<int> binary)
        ok,
    required TResult Function(String message) error,
    required TResult Function(String protocolVersion) greeting,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Map<String, List<String>>> values, List<int> binary)?
        ok,
    TResult? Function(String message)? error,
    TResult? Function(String protocolVersion)? greeting,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Map<String, List<String>>> values, List<int> binary)?
        ok,
    TResult Function(String message)? error,
    TResult Function(String protocolVersion)? greeting,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MpdResponseOk value) ok,
    required TResult Function(MpdResponseError value) error,
    required TResult Function(MpdResponseGreeting value) greeting,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MpdResponseOk value)? ok,
    TResult? Function(MpdResponseError value)? error,
    TResult? Function(MpdResponseGreeting value)? greeting,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MpdResponseOk value)? ok,
    TResult Function(MpdResponseError value)? error,
    TResult Function(MpdResponseGreeting value)? greeting,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class MpdResponseError implements MpdResponse {
  const factory MpdResponseError({required final String message}) =
      _$MpdResponseError;

  String get message;
  @JsonKey(ignore: true)
  _$$MpdResponseErrorCopyWith<_$MpdResponseError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MpdResponseGreetingCopyWith<$Res> {
  factory _$$MpdResponseGreetingCopyWith(_$MpdResponseGreeting value,
          $Res Function(_$MpdResponseGreeting) then) =
      __$$MpdResponseGreetingCopyWithImpl<$Res>;
  @useResult
  $Res call({String protocolVersion});
}

/// @nodoc
class __$$MpdResponseGreetingCopyWithImpl<$Res>
    extends _$MpdResponseCopyWithImpl<$Res, _$MpdResponseGreeting>
    implements _$$MpdResponseGreetingCopyWith<$Res> {
  __$$MpdResponseGreetingCopyWithImpl(
      _$MpdResponseGreeting _value, $Res Function(_$MpdResponseGreeting) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? protocolVersion = null,
  }) {
    return _then(_$MpdResponseGreeting(
      protocolVersion: null == protocolVersion
          ? _value.protocolVersion
          : protocolVersion // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MpdResponseGreeting implements MpdResponseGreeting {
  const _$MpdResponseGreeting({required this.protocolVersion});

  @override
  final String protocolVersion;

  @override
  String toString() {
    return 'MpdResponse.greeting(protocolVersion: $protocolVersion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MpdResponseGreeting &&
            (identical(other.protocolVersion, protocolVersion) ||
                other.protocolVersion == protocolVersion));
  }

  @override
  int get hashCode => Object.hash(runtimeType, protocolVersion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MpdResponseGreetingCopyWith<_$MpdResponseGreeting> get copyWith =>
      __$$MpdResponseGreetingCopyWithImpl<_$MpdResponseGreeting>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Map<String, List<String>>> values, List<int> binary)
        ok,
    required TResult Function(String message) error,
    required TResult Function(String protocolVersion) greeting,
  }) {
    return greeting(protocolVersion);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Map<String, List<String>>> values, List<int> binary)?
        ok,
    TResult? Function(String message)? error,
    TResult? Function(String protocolVersion)? greeting,
  }) {
    return greeting?.call(protocolVersion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Map<String, List<String>>> values, List<int> binary)?
        ok,
    TResult Function(String message)? error,
    TResult Function(String protocolVersion)? greeting,
    required TResult orElse(),
  }) {
    if (greeting != null) {
      return greeting(protocolVersion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MpdResponseOk value) ok,
    required TResult Function(MpdResponseError value) error,
    required TResult Function(MpdResponseGreeting value) greeting,
  }) {
    return greeting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MpdResponseOk value)? ok,
    TResult? Function(MpdResponseError value)? error,
    TResult? Function(MpdResponseGreeting value)? greeting,
  }) {
    return greeting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MpdResponseOk value)? ok,
    TResult Function(MpdResponseError value)? error,
    TResult Function(MpdResponseGreeting value)? greeting,
    required TResult orElse(),
  }) {
    if (greeting != null) {
      return greeting(this);
    }
    return orElse();
  }
}

abstract class MpdResponseGreeting implements MpdResponse {
  const factory MpdResponseGreeting({required final String protocolVersion}) =
      _$MpdResponseGreeting;

  String get protocolVersion;
  @JsonKey(ignore: true)
  _$$MpdResponseGreetingCopyWith<_$MpdResponseGreeting> get copyWith =>
      throw _privateConstructorUsedError;
}
