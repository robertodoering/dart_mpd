enum MpdSubsystem {
  /// The song database has been modified after update.
  database,

  /// A database update has started or finished.
  ///
  /// If the database was modified during the update, the database event is also
  /// emitted.
  update,

  /// A stored playlist has been modified, renamed, created or deleted.
  storedPlaylist,

  /// The queue (i.e. the current playlist) has been modified.
  playlist,

  /// The player has been started, stopped or seeked or tags of the currently
  /// playing song have changed (e.g. received from stream).
  player,

  /// The volume has been changed.
  mixer,

  /// An audio output has been added, removed or modified (e.g. renamed, enabled
  /// or disabled).
  output,

  /// Options like repeat, random, crossfade, replay gain.
  options,

  /// A partition was added, removed or changed.
  partition,

  /// The sticker database has been modified.
  sticker,

  /// A client has subscribed or unsubscribed to a channel.
  subscription,

  /// A message was received on a channel this client is subscribed to; this
  /// event is only emitted when the queue is empty.
  message,

  /// A neighbor was found or lost.
  neighbor,

  /// The mount list has changed.
  mount;

  String toValue() {
    return switch (this) {
      MpdSubsystem.storedPlaylist => 'stored_playlist',
      _ => name,
    };
  }

  static MpdSubsystem? parse(String? value) {
    if (value == null) return null;

    switch (value) {
      case 'stored_playlist':
        return MpdSubsystem.storedPlaylist;
      default:
        try {
          return MpdSubsystem.values.byName(value);
        } on ArgumentError {
          return null;
        }
    }
  }
}
