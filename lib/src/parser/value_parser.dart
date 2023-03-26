int? parseInt(String? value) {
  if (value == null) return null;

  return int.tryParse(value);
}

double? parseDouble(String? value) {
  if (value == null) return null;

  return double.tryParse(value);
}

bool? parseBool(String? value) {
  if (value == null) return null;

  return value == '1';
}

Duration? parseSeconds(String? value) {
  final intValue = parseInt(value);
  if (intValue == null) return null;

  return Duration(seconds: intValue);
}

DateTime? parseDateTime(String? value) {
  if (value == null) return null;

  return DateTime.tryParse(value);
}

DateTime? parseTimestamp(String? value) {
  final intValue = parseInt(value);
  if (intValue == null) return null;

  return DateTime.fromMillisecondsSinceEpoch(intValue * 1000);
}

Duration? parseDuration(String? value) {
  final doubleValue = parseDouble(value);
  if (doubleValue == null) return null;

  final seconds = doubleValue.truncate();
  final milliseconds = (doubleValue - seconds) * 1000;

  return Duration(seconds: seconds, milliseconds: milliseconds.toInt());
}

MapEntry<String, String>? parseSticker(Map<String, String> value) {
  final sticker = value['sticker'];
  if (sticker == null) return null;

  final pair = sticker.split('=');
  if (pair.length != 2) return null;

  return MapEntry(pair[0], pair[1]);
}
