abstract interface class MpdPositionOrRange {
  const factory MpdPositionOrRange.position(int position) = MpdPosition;

  const factory MpdPositionOrRange.range(int start, [int? end]) = MpdRange;
}

abstract interface class MpdPositionOrRelativePosition {
  const factory MpdPositionOrRelativePosition.position(int position) =
      MpdPosition;

  const factory MpdPositionOrRelativePosition.relativePosition(
    int position, [
    Relativity relativity,
  ]) = MpdRelativePosition;
}

class MpdPosition implements MpdPositionOrRange, MpdPositionOrRelativePosition {
  const MpdPosition(this.position);

  final int position;

  @override
  String toString() => '$position';
}

class MpdRange implements MpdPositionOrRange {
  const MpdRange(this.start, [this.end]);

  final int start;
  final int? end;

  @override
  String toString() {
    if (end != null) return '$start:$end';
    return '$start:';
  }
}

enum Relativity { after, before }

class MpdRelativePosition implements MpdPositionOrRelativePosition {
  const MpdRelativePosition(
    this.position, [
    this.relativity = Relativity.after,
  ]);

  final int position;
  final Relativity relativity;

  @override
  String toString() {
    return switch (relativity) {
      Relativity.after => '+$position',
      Relativity.before => '-$position',
    };
  }
}
