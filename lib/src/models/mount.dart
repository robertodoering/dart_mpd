import 'package:freezed_annotation/freezed_annotation.dart';

part 'mount.freezed.dart';
part 'mount.g.dart';

@freezed
class MpdMount with _$MpdMount {
  const factory MpdMount({
    String? mount,
    String? storage,
  }) = _MpdMount;

  factory MpdMount.fromJson(Map<String, dynamic> json) =>
      _$MpdMountFromJson(json);
}
