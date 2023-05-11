enum MpdSingle {
  enabled,
  disabled,
  oneshot;

  String toValue() {
    return switch (this) {
      MpdSingle.enabled => '1',
      MpdSingle.disabled => '0',
      MpdSingle.oneshot => 'oneshot'
    };
  }

  static MpdSingle? parse(String? value) {
    return switch (value) {
      '0' => MpdSingle.disabled,
      '1' => MpdSingle.enabled,
      'oneshot' => MpdSingle.oneshot,
      _ => null,
    };
  }
}
