const messageEnd = 'OK';
const greetingPrefix = 'OK MPD ';
const errorPrefix = 'ACK ';

(String, String) parseKeyValuePair(String line) {
  // split on first colon
  final pair = line.split(RegExp('(?<!:.*):'));

  final key = pair[0];
  final value = pair[1].substring(1);

  return (key, value);
}
