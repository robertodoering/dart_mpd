import 'package:dart_mpd/dart_mpd.dart';

String? parseString(MpdValue? value) {
  if (value == null) return null;

  return value.asSingle();
}

String parseStringOrEmpty(MpdValue? value) {
  return parseString(value) ?? '';
}

int? parseInt(MpdValue? value) {
  if (value == null) return null;

  return int.tryParse(value.asSingle());
}

double? parseDouble(MpdValue? value) {
  if (value == null) return null;

  return double.tryParse(value.asSingle());
}

bool? parseBool(MpdValue? value) {
  if (value == null) return null;

  return value.asSingle() == '1';
}

Duration? parseSeconds(MpdValue? value) {
  final intValue = parseInt(value);
  if (intValue == null) return null;

  return Duration(seconds: intValue);
}

DateTime? parseDateTime(MpdValue? value) {
  if (value == null) return null;

  return DateTime.tryParse(value.asSingle());
}

DateTime? parseTimestamp(MpdValue? value) {
  final intValue = parseInt(value);
  if (intValue == null) return null;

  return DateTime.fromMillisecondsSinceEpoch(intValue * 1000);
}

Duration? parseDuration(MpdValue? value) {
  final doubleValue = parseDouble(value);
  if (doubleValue == null) return null;

  final seconds = doubleValue.truncate();
  final milliseconds = (doubleValue - seconds) * 1000;

  return Duration(seconds: seconds, milliseconds: milliseconds.toInt());
}

MapEntry<String, String>? parseSticker(MpdValue? value) {
  if (value == null) return null;

  final pair = value.asSingle().split('=');
  if (pair.length != 2) return null;

  return MapEntry(pair[0], pair[1]);
}

MpdSingle? parseMpdSingle(MpdValue? value) {
  if (value == null) return null;

  return MpdSingle.parse(value.asSingle());
}

MpdState? parseMpdState(MpdValue? value) {
  if (value == null) return null;

  return MpdState.values.byName(value.asSingle());
}
