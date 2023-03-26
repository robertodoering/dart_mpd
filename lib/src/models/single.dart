enum MpdSingle {
  enabled,
  disabled,
  oneshot;

  String toValue() {
    switch (this) {
      case MpdSingle.enabled:
        return '1';
      case MpdSingle.disabled:
        return '0';
      case MpdSingle.oneshot:
        return 'oneshot';
    }
  }

  static MpdSingle? parse(String? value) {
    switch (value) {
      case '0':
        return MpdSingle.disabled;
      case '1':
        return MpdSingle.enabled;
      case 'oneshot':
        return MpdSingle.oneshot;
      default:
        return null;
    }
  }
}
