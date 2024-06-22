import 'package:dart_mpd/dart_mpd.dart';

String buildClientCmd(String cmd, List<Object?> args) {
  if (args.isEmpty) return cmd;

  final formattedArgs = _formatArgs(args);
  if (formattedArgs.isEmpty) return cmd;

  return '$cmd $formattedArgs';
}

String _formatArgs(List<Object?> args) {
  final buffer = StringBuffer();

  final filtered = args.where((e) => e != null).toList();

  for (var i = 0; i < filtered.length; ++i) {
    var arg = filtered[i];

    if (arg is bool) {
      arg = arg ? '1' : '0';
    } else if (arg is MpdSingle) {
      arg = arg.toValue();
    } else if (arg is Enum) {
      arg = arg.name;
    }

    arg = _escapeArg('$arg');
    buffer.write('"$arg"');

    if (i != filtered.length - 1) buffer.write(' ');
  }

  return buffer.toString();
}

String _escapeArg(String arg) {
  final buffer = StringBuffer();

  for (final char in arg.split('')) {
    if (char == '"' || char == r'\') {
      buffer.write(r'\');
    }

    buffer.write(char);
  }

  return buffer.toString();
}
