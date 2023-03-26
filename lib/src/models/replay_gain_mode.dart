enum ReplayGainMode {
  off,
  track,
  album,
  auto;

  static ReplayGainMode? parse(String? value) {
    if (value == null) return null;

    try {
      return ReplayGainMode.values.byName(value);
    } on ArgumentError {
      return null;
    }
  }
}
