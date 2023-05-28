import 'package:dart_mpd/dart_mpd.dart';

String? parseString(List<String>? value) {
  if (value == null) return null;

  return value.single;
}

String parseStringSafe(List<String>? value) {
  return parseString(value) ?? '';
}

int? parseInt(List<String>? value) {
  if (value == null) return null;

  return int.tryParse(value.single);
}

double? parseDouble(List<String>? value) {
  if (value == null) return null;

  return double.tryParse(value.single);
}

bool? parseBool(List<String>? value) {
  if (value == null) return null;

  return value.single == '1';
}

Duration? parseSeconds(List<String>? value) {
  final intValue = parseInt(value);
  if (intValue == null) return null;

  return Duration(seconds: intValue);
}

DateTime? parseDateTime(List<String>? value) {
  if (value == null) return null;

  return DateTime.tryParse(value.single);
}

DateTime? parseTimestamp(List<String>? value) {
  final intValue = parseInt(value);
  if (intValue == null) return null;

  return DateTime.fromMillisecondsSinceEpoch(intValue * 1000);
}

Duration? parseDuration(List<String>? value) {
  final doubleValue = parseDouble(value);
  if (doubleValue == null) return null;

  final seconds = doubleValue.truncate();
  final milliseconds = (doubleValue - seconds) * 1000;

  return Duration(seconds: seconds, milliseconds: milliseconds.toInt());
}

MapEntry<String, String>? parseSticker(List<String>? value) {
  if (value == null) return null;

  final pair = value.single.split('=');
  if (pair.length != 2) return null;

  return MapEntry(pair[0], pair[1]);
}

MpdSingle? parseMpdSingle(List<String>? value) {
  if (value == null) return null;

  return MpdSingle.parse(value.single);
}

MpdState? parseMpdState(List<String>? value) {
  if (value == null) return null;

  return MpdState.values.byName(value.single);
}
