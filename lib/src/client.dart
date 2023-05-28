import 'dart:typed_data';

import 'package:dart_mpd/dart_mpd.dart';
import 'package:dart_mpd/src/parser/value_parser.dart';

class MpdClient {
  MpdClient({
    required MpdConnectionDetails connectionDetails,
    void Function()? onConnect,
    void Function(Uint8List)? onData,
    void Function(MpdResponse)? onResponse,
    void Function()? onDone,
    void Function(Object, StackTrace)? onError,
  }) : _connection = MpdConnection(
          connectionDetails: connectionDetails,
          onConnect: onConnect,
          onData: onData,
          onResponse: onResponse,
          onDone: onDone,
          onError: onError,
        );

  final MpdConnection _connection;
  MpdConnection get connection => _connection;

  // querying mpd's status
  // https://mpd.readthedocs.io/en/stable/protocol.html#the-queue

  /// Clears the current error message in status (this is also accomplished by
  /// any command that starts playback).
  Future<void> clearerror() {
    return _sendEmpty('clearerror');
  }

  /// Returns the song info of the current song (same song that is identified
  /// in status).
  ///
  /// Returns `null` if no song is playing.
  Future<MpdSong?> currentsong() {
    return _send(
      'currentsong',
      (response) => response.values.isNotEmpty
          ? MpdSong.fromJson(response.values.single)
          : null,
    );
  }

  /// Waits until there is a noteworthy change in one or more of MPD's
  /// subsystems.
  ///
  /// As soon as there is one, it returns all changed systems, where
  /// [MpdSubsystem] is one of the following:
  ///
  /// - [MpdSubsystem.database] the song database has been modified after
  ///   update.
  /// - [MpdSubsystem.update] a database update has started or finished. If the
  ///   database was modified during the update, the database event is also
  ///   emitted.
  /// - [MpdSubsystem.storedPlaylist] a stored playlist has been modified,
  ///   renamed, created or deleted.
  /// - [MpdSubsystem.playlist] the queue (i.e. the current playlist) has been
  ///   modified.
  /// - [MpdSubsystem.player] the player has been started, stopped or seeked or
  ///   tags of the currently playing song have changed (e.g. received from
  ///   stream).
  /// - [MpdSubsystem.mixer] the volume has been changed.
  /// - [MpdSubsystem.output] an audio output has been added, removed or
  ///   modified (e.g. renamed, enabled or disabled).
  /// - [MpdSubsystem.options] options like repeat, random, crossfade, replay
  ///   gain.
  /// - [MpdSubsystem.partition] a partition was added, removed or changed.
  /// - [MpdSubsystem.sticker] the sticker database has been modified.
  /// - [MpdSubsystem.subscription] a client has subscribed or unsubscribed to
  ///   a channel.
  /// - [MpdSubsystem.message] a message was received on a channel this client
  ///   is subscribed to; this event is only emitted when the queue is empty.
  /// - [MpdSubsystem.neighbor] a neighbor was found or lost.
  /// - [MpdSubsystem.mount] the mount list has changed.
  ///
  /// Change events accumulate, even while the connection is not in "idle" mode;
  /// no events get lost while the client is doing something else with the
  /// connection. If an event had already occurred since the last call, the new
  /// idle command will return immediately.
  ///
  /// While a client is waiting for idle results, the server disables timeouts,
  /// allowing a client to wait for events as long as mpd runs. The idle command
  /// can be canceled by sending the command [noidle] (no other commands are
  /// allowed). MPD will then leave idle mode and return results immediately;
  /// might be empty at this time. If the optional [subsystems] argument is
  /// used, MPD will only send notifications when something changed in one of
  /// the specified subsytems.
  Future<Set<MpdSubsystem>> idle([Set<MpdSubsystem>? subsystems]) {
    return _send(
      'idle',
      (response) => response.values
          .map((value) => MpdSubsystem.parse(value['changed']?.single))
          .whereType<MpdSubsystem>()
          .toSet(),
      args: [...?subsystems?.map((e) => e.toValue())],
    );
  }

  /// Cancels the [idle] command.
  Future<void> noidle() {
    return _sendEmpty('noidle');
  }

  /// Returns the current status of the player and the volume level.
  Future<MpdStatus> status() {
    return _send(
      'status',
      (response) => MpdStatus.fromJson(response.values.single),
    );
  }

  /// Returns statistics.
  Future<MpdStats> stats() {
    return _send(
      'stats',
      (response) => MpdStats.fromJson(response.values.single),
    );
  }

  // playback options
  // https://mpd.readthedocs.io/en/stable/protocol.html#the-queue

  /// Sets consume state to [state].
  ///
  /// When consume is activated, each song played is removed from playlist.
  Future<void> consume(bool state) {
    return _sendEmpty('consume', args: [state]);
  }

  /// Sets crossfading between songs.
  ///
  /// See https://mpd.readthedocs.io/en/stable/user.html#crossfading.
  Future<void> crossfade(int seconds) {
    return _sendEmpty('crossfade', args: [seconds]);
  }

  /// Sets the threshold at which songs will be overlapped.
  ///
  /// See https://mpd.readthedocs.io/en/stable/user.html#mixramp.
  Future<void> mixrampdb(double deciBels) {
    return _sendEmpty('mixrampdb', args: [deciBels]);
  }

  /// Additional time subtracted from the overlap calculated by [mixrampdb].
  ///
  /// A value of `null` disables MixRamp overlapping and falls back to
  /// crossfading.
  Future<void> mixrampdelay(int? seconds) {
    return _sendEmpty(
      'mixrampdelay',
      args: [seconds ?? 'nan'],
    );
  }

  /// Sets random state to [state].
  Future<void> random(bool state) {
    return _sendEmpty('random', args: [state]);
  }

  /// Sets repeat state to [state].
  ///
  /// If enabled, MPD keeps repeating the whole queue ([single] mode disabled)
  /// or the current song ([single] mode enabled).
  ///
  /// If [random] mode is also enabled, the playback order will be shuffled each
  /// time the queue gets repeated.
  Future<void> repeat(bool state) {
    return _sendEmpty('repeat', args: [state]);
  }

  /// Sets volume to [vol], the range of volume is 0-100.
  Future<void> setvol(int vol) {
    return _sendEmpty('setvol', args: [vol]);
  }

  /// Returns the volume (0 - 100).
  ///
  /// Returns `null` if there is no mixer.
  Future<int?> getvol() {
    return _send(
      'getvol',
      (response) => parseInt(response.values.single['volume']),
    );
  }

  /// Sets single state to [state].
  ///
  /// When single is activated, playback is stopped after current song, or song
  /// is repeated if the 'repeat' mode is enabled.
  Future<void> single(MpdSingle state) {
    return _sendEmpty('single', args: [state]);
  }

  /// Sets the replay gain mode.
  ///
  /// Changing the mode during playback may take several seconds, because the
  /// new settings do not affect the buffered data. This command triggers the
  /// [MpdSubsystem.options] idle event.
  Future<void> replayGainMode(ReplayGainMode mode) {
    return _sendEmpty('replay_gain_mode', args: [mode]);
  }

  /// Returns the replay gain mode.
  Future<ReplayGainMode?> replayGainStatus() {
    return _send(
      'replay_gain_status',
      (response) => ReplayGainMode.parse(
        response.values.single['replay_gain_mode']?.single,
      ),
    );
  }

  // controlling playback
  // https://mpd.readthedocs.io/en/stable/protocol.html#the-queue

  /// Plays next song in the playlist.
  Future<void> next() {
    return _sendEmpty('next');
  }

  /// Pause or resume playback.
  ///
  /// Without the parameter, the pause state is toggled.
  Future<void> pause([bool? state]) {
    return _sendEmpty('pause', args: [state]);
  }

  /// Begins playing the playlist at song number [songpos].
  Future<void> play(int songpos) {
    return _sendEmpty('play', args: [songpos]);
  }

  /// Begins playing the playlist at song [songid].
  Future<void> playid(int songid) {
    return _sendEmpty('playid', args: [songid]);
  }

  /// Plays previous song in the playlist.
  Future<void> previous() {
    return _sendEmpty('previous');
  }

  /// Seeks to the position [time] (in seconds; fractions allowed) of entry
  /// [songpos] in the playlist.
  Future<void> seek(int songpos, double time) {
    return _sendEmpty('seek', args: [songpos, time]);
  }

  /// Seeks to the position [time] (in seconds; fractions allowed) of song
  /// [songid].
  Future<void> seekId(int songid, double time) {
    return _sendEmpty('seekid', args: [songid, time]);
  }

  /// Seeks to the position [time] (in seconds; fractions allowed) within the
  /// current song.
  ///
  /// If prefixed by `+` or `-`, then the time is relative to the current
  /// playing position.
  Future<void> seekcur(String time) {
    return _sendEmpty('seekcur', args: [time]);
  }

  /// Stops playing.
  Future<void> stop() {
    return _sendEmpty('stop');
  }

  // the queue
  // https://mpd.readthedocs.io/en/stable/protocol.html#the-queue

  /// Adds the file [uri] to the playlist (directories add recursively).
  ///
  /// [uri] can also be a single file.
  ///
  /// If [position] is given, then the song is inserted at the specified
  /// position.
  ///
  /// Clients that are connected via local socket may add arbitrary local files
  /// (URI is an absolute path).
  /// Example:
  /// `add("/home/foo/Music/bar.ogg")`
  Future<void> add(String uri, [MpdPositionOrRelativePosition? position]) {
    return _sendEmpty('add', args: [uri, position]);
  }

  /// Adds a song to the playlist (non-recursive) and returns the song id.
  ///
  /// [uri] is always a single file or URL.
  ///
  /// If [position] is given, then the song is inserted at the specified
  /// position.
  Future<int?> addid(String uri, [MpdPositionOrRelativePosition? position]) {
    return _send(
      'addid',
      (response) => parseInt(response.values.single['Id']),
      args: [uri, position],
    );
  }

  /// Clears the queue.
  Future<void> clear() {
    return _sendEmpty('clear');
  }

  /// Deletes a song from the playlist.
  Future<void> delete(MpdPositionOrRange positionOrRange) {
    return _sendEmpty('delete', args: [positionOrRange]);
  }

  /// Deletes the song [songId] from the playlist.
  Future<void> deleteid(int songId) {
    return _sendEmpty('deleteid', args: [songId]);
  }

  /// Moves the song at [positionOrRange] to [to] in the playlist.
  Future<void> move(
    MpdPositionOrRange? positionOrRange,
    MpdPositionOrRelativePosition to,
  ) {
    return _sendEmpty('move', args: [positionOrRange, to]);
  }

  /// Moves the song with [from] (songid) to [to] (playlist index) in the
  /// playlist.
  Future<void> moveid(int from, MpdPositionOrRelativePosition to) {
    return _sendEmpty('moveid', args: [from, to]);
  }

  /// Search the queue for songs matching [filter].
  ///
  /// [sort] sorts the result by the specified tag. The sort is descending if
  /// the tag is prefixed with a `-`. Only the first tag value will be used, if
  /// multiple of the same type exist. To sort by "Title", "Artist", "Album",
  /// "AlbumArtist" or "Composer", you should specify "TitleSort", "ArtistSort",
  /// "AlbumSort", "AlbumArtistSort" or "ComposerSort" instead. These will
  /// automatically fall back to the former if "*Sort" doesn’t exist.
  /// "AlbumArtist" falls back to just "Artist". The type "Last-Modified" can
  /// sort by file modification time, and "prio" sorts by queue priority.
  ///
  /// [window] can be used to query only a portion of the real response. The
  /// parameter is two zero-based queue positions; a start index (including) and
  /// an end index (excluding). The end index can be omitted, which means the
  /// range is open-ended.
  ///
  /// For filters, see https://mpd.readthedocs.io/en/stable/protocol.html#filter-syntax.
  Future<List<MpdSong>> playlistfind(
    String filter, {
    String? sort,
    MpdRange? window,
  }) {
    return _send(
      'playlistfind',
      (response) =>
          response.values.map(MpdSong.fromJson).whereType<MpdSong>().toList(),
      args: [
        filter,
        if (sort != null) ...['sort', sort],
        if (window != null) ...['window', window],
      ],
    );
  }

  /// Displays a list of songs in the playlist.
  ///
  /// [songId] is optional and specifies a single song to display info for.
  Future<List<MpdSong>> playlistid([int? songId]) {
    return _send(
      'playlistid',
      (response) =>
          response.values.map(MpdSong.fromJson).whereType<MpdSong>().toList(),
      args: [songId],
    );
  }

  /// Displays a list of all songs in the playlist, or if the optional argument
  /// is given, displays information only for the songs at [positionOrRange].
  Future<List<MpdSong>> playlistinfo([MpdPositionOrRange? positionOrRange]) {
    return _send(
      'playlistinfo',
      (response) =>
          response.values.map(MpdSong.fromJson).whereType<MpdSong>().toList(),
      args: [positionOrRange],
    );
  }

  /// Search the queue for songs matching [filter].
  ///
  /// Parameters have the same meaning as for [playlistfind], except that search
  /// is not case sensitive.
  ///
  /// For filters, see https://mpd.readthedocs.io/en/stable/protocol.html#filter-syntax.
  Future<List<MpdSong>> playlistsearch(
    String filter, {
    String? sort,
    MpdRange? window,
  }) {
    return _send(
      'playlistsearch',
      (response) =>
          response.values.map(MpdSong.fromJson).whereType<MpdSong>().toList(),
      args: [
        filter,
        if (sort != null) ...['sort', sort],
        if (window != null) ...['window', window],
      ],
    );
  }

  /// Displays changed songs currently in the playlist since [version].
  ///
  /// [positionOrRange] may be given to limit the output to changes in the given
  /// range.
  Future<List<MpdSong>> plchanges(
    int version, [
    MpdPositionOrRange? positionOrRange,
  ]) {
    return _send(
      'plchanges',
      (response) =>
          response.values.map(MpdSong.fromJson).whereType<MpdSong>().toList(),
      args: [version, positionOrRange],
    );
  }

  /// Displays changed songs currently in the playlist since [version].
  ///
  /// This function only returns the position and the id of the changed song,
  /// not the complete metadata. This is more bandwidth efficient.
  ///
  /// To detect songs that were deleted at the end of the playlist, use
  /// [MpdStatus.playlistlength] returned by [status] command.
  Future<List<MpdPositionChange>> plchangesposid(
    int version, [
    MpdPositionOrRange? positionOrRange,
  ]) {
    return _send(
      'plchangesposid',
      (response) => response.values.map(MpdPositionChange.fromJson).toList(),
      args: [version, positionOrRange],
    );
  }

  /// Set the priority of the specified songs.
  ///
  /// A higher priority means that it will be played first when `random` mode is
  /// enabled.
  ///
  /// A priority is an integer between 0 and 255. The default priority of new
  /// songs is 0.
  Future<void> prio(int priority, List<MpdPositionOrRange> positionsOrRanges) {
    return _sendEmpty('prio', args: [priority, ...positionsOrRanges]);
  }

  /// Same as [prio], but address the songs with their id.
  Future<void> prioid(int priority, List<int> id) {
    return _sendEmpty('prioid', args: [priority, ...id]);
  }

  /// Specifies the portion of the song that shall be played.
  ///
  /// [start] and [end] are offsets in seconds (fractional seconds allowed);
  /// both are optional. Omitting both means "remove the range, play
  /// everything". A song that is currently playing cannot be manipulated this
  /// way.
  Future<void> rangeid(int id, {double? start, double? end}) {
    return _sendEmpty(
      'rangeid',
      args: [
        id,
        if (start != null && end != null)
          '$start:$end'
        else if (start != null)
          '$start:'
        else if (end != null)
          ':$end'
        else
          ':',
      ],
    );
  }

  /// Shuffles the queue.
  ///
  /// [range] is optional and specifies a range of songs.
  Future<void> shuffle([MpdRange? range]) {
    return _sendEmpty('shuffle', args: [range]);
  }

  /// Swaps the positions of [song1] and [song2].
  Future<void> swap(int song1, int song2) {
    return _sendEmpty('swap', args: [song1, song2]);
  }

  /// Swaps the positions of [song1] and [song2] (both song ids).
  Future<void> swapid(int song1, int song2) {
    return _sendEmpty('swapid', args: [song1, song2]);
  }

  /// Adds a tag to the specified song.
  ///
  /// Editing song tags is only possible for remote songs. This change is
  /// volatile: it may be overwritten by tags received from the server, and the
  /// data is gone when the song gets removed from the queue.
  Future<void> addtagid(int songid, String tag, String value) {
    return _sendEmpty('addtagid', args: [songid, tag, value]);
  }

  /// Removes tags from the specified song.
  ///
  /// If [tag] is not specified, then all tag values will be removed. Editing
  /// song tags is only possible for remote songs.
  Future<void> cleartagid(int songId, [String? tag]) {
    return _sendEmpty('cleartagid', args: [songId, tag]);
  }

  // stored playlists
  // https://mpd.readthedocs.io/en/stable/protocol.html#stored-playlists

  /// Lists the songs in the playlist.
  ///
  /// Playlist plugins are supported.
  Future<List<String>> listplaylist(String name) {
    return _send(
      'listplaylist',
      (response) => response.values
          .map((value) => value['file'])
          .whereType<String>()
          .toList(),
      args: [name],
    );
  }

  /// Lists the songs with metadata in the playlist.
  ///
  /// Playlist plugins are supported.
  Future<List<MpdSong>> listplaylistinfo(String name) {
    return _send(
      'listplaylistinfo',
      (response) =>
          response.values.map(MpdSong.fromJson).whereType<MpdSong>().toList(),
      args: [name],
    );
  }

  /// Returns a list of the playlist directory.
  ///
  /// After each playlist name the server sends its last modification time as
  /// attribute "Last-Modified" in ISO 8601 format. To avoid problems due to
  /// clock differences between clients and the server, clients should not
  /// compare this value with their local clock.
  Future<List<PlaylistModified>> listplaylists() {
    return _send(
      'listplaylists',
      (response) => response.values.map(PlaylistModified.fromJson).toList(),
    );
  }

  /// Loads the playlist into the current queue.
  ///
  /// Playlist plugins are supported. A [range] may be specified to load only a
  /// part of the playlist.
  ///
  /// The [position] parameter specifies where the songs will be inserted into
  /// the queue. (This requires specifying the range as well; the special value
  /// 0: can be used if the whole playlist shall be loaded at a certain queue
  /// position.)
  Future<void> load(
    String name, {
    MpdRange? range,
    MpdPositionOrRelativePosition? position,
  }) {
    return _sendEmpty(
      'load',
      args: [name, if (position != null && range == null) 0, range, position],
    );
  }

  /// Adds [uri] to the playlist [name].m3u.
  ///
  /// [name].m3u will be created if it does not exist.
  ///
  /// The [position] parameter specifies where the songs will be inserted into
  /// the playlist.
  Future<void> playlistadd(String name, String uri, [int? position]) {
    return _sendEmpty('playlistadd', args: [name, uri, position]);
  }

  /// Clears the playlist [name].m3u.
  Future<void> playlistclear(String name) {
    return _sendEmpty('playlistclear', args: [name]);
  }

  /// Deletes [songpos] from the playlist [name].m3u.
  Future<void> playlistdelete(String name, MpdPositionOrRange songpos) {
    return _sendEmpty('playlistdelete', args: [name, songpos]);
  }

  /// Moves the song at position [from] in the playlist [name].m3u to the
  /// position [to].
  Future<void> playlistmove(String name, MpdPositionOrRange from, int to) {
    return _sendEmpty('playlistmove', args: [name, from, to]);
  }

  /// Renames the playlist [name].m3u to [newName].m3u.
  Future<void> rename(String name, String newName) {
    return _sendEmpty('rename', args: [name, newName]);
  }

  /// Removes the playlist [name].m3u from the playlist directory.
  Future<void> rm(String name) {
    return _sendEmpty('rm', args: [name]);
  }

  /// Saves the queue to [name].m3u in the playlist directory.
  Future<void> save(String name) {
    return _sendEmpty('save', args: [name]);
  }

  // the music database
  // https://mpd.readthedocs.io/en/stable/protocol.html#the-music-database

  /// Locate album art for the given song and return a chunk of an album art
  /// image file at [offset].
  ///
  /// This is currently implemented by searching the directory the file resides
  /// in for a file called `cover.png`, `cover.jpg`, `cover.tiff` or
  /// `cover.bmp`.
  Future<MpdImage> albumart(String uri, int offset) {
    return _send('albumart', MpdImage.fromResponse, args: [uri, offset]);
  }

  /// Count the number of songs and their total playtime in the database
  /// matching [filter].
  ///
  /// The following returns the number of songs whose title matches "Echoes":
  /// `count(filter: 'title Echoes')`
  ///
  /// The group keyword may be used to group the results by a tag. The first
  /// following example returns per-artist counts while the next returns the
  /// number of songs whose title matches "Echoes" grouped by artist:
  /// `count(group: 'artist')`
  /// `count(filter: 'title Echoes', group: 'artist')`
  ///
  /// A group with an empty value contains counts of matching songs which don’t
  /// have this group tag. It exists only if at least one such song is found.
  ///
  /// For filters, see https://mpd.readthedocs.io/en/stable/protocol.html#filter-syntax.
  Future<List<MpdCount>> count({String? filter, String? group}) {
    return _send(
      'count',
      (response) => response.values.map(MpdCount.fromValue).toList(),
      args: [
        filter,
        if (group != null) ...['group', group],
      ],
    );
  }

  /// Calculate the song’s audio fingerprint.
  ///
  /// This command is only available if MPD was built with `libchromaprint`
  /// (`-Dchromaprint=enabled`).
  Future<String?> getfingerprint(String uri) {
    return _send(
      'getfingerprint',
      (response) => response.values.single['chromaprint']?.single,
      args: [uri],
    );
  }

  /// Search the database for songs matching [filter].
  ///
  /// Parameters have the same meaning as for [playlistfind].
  ///
  /// For filters, see https://mpd.readthedocs.io/en/stable/protocol.html#filter-syntax.
  Future<List<MpdSong>> find(String filter, {String? sort, MpdRange? window}) {
    return _send(
      'find',
      (response) => response.values.map(MpdSong.fromJson).toList(),
      args: [
        filter,
        if (sort != null) ...['sort', sort],
        if (window != null) ...['window', window],
      ],
    );
  }

  /// Search the database for songs matching [filter] and add them to the queue.
  ///
  /// Parameters have the same meaning as for [playlistfind].
  ///
  /// For filters, see https://mpd.readthedocs.io/en/stable/protocol.html#filter-syntax.
  Future<void> findadd(
    String filter, {
    String? sort,
    MpdRange? window,
    MpdPositionOrRelativePosition? position,
  }) {
    return _sendEmpty(
      'findadd',
      args: [
        filter,
        if (sort != null) ...['sort', sort],
        if (window != null) ...['window', window],
        if (position != null) ...['position', position],
      ],
    );
  }

  /// Lists unique tags values of the specified type. [type] can be any tag
  /// supported by MPD.
  ///
  /// Additional arguments may specify a [filter]. [groups] may be used to group
  /// the results by one or more tags.
  ///
  /// The following example lists all album names, grouped by their respective
  /// (album) artist:
  /// `list('album', groups: ['albumartist'])`
  ///
  /// For filters, see https://mpd.readthedocs.io/en/stable/protocol.html#filter-syntax.
  Future<List<Map<String, List<String>>>> list(
    String type, {
    String? filter,
    List<String> groups = const [],
  }) {
    return _send(
      'list',
      (response) => response.values,
      args: [
        type,
        filter,
        for (final group in groups) ...['group', group],
      ],
    );
  }

  /// Lists the contents of the directory [uri], including files are not
  /// recognized by MPD.
  ///
  /// [uri] can be a path relative to the music directory or an URI understood
  /// by one of the storage plugins.
  ///
  /// For example, `smb://SERVER` returns a list of all shares on the given
  /// SMB/CIFS server; `nfs://servername/path` obtains a directory listing from
  /// the NFS server.
  Future<List<MpdFile>> listfiles(String uri) {
    return _send(
      'listfiles',
      (response) =>
          response.values.map(MpdFile.fromValue).whereType<MpdFile>().toList(),
      args: [uri],
    );
  }

  /// Lists the contents of the directory [uri].
  ///
  /// When listing the root directory, this currently returns the list of stored
  /// playlists. This behavior is deprecated; use [listplaylists] instead.
  ///
  /// This command may be used to list metadata of remote files (e.g. URI
  /// beginning with `http://` or `smb://`).
  ///
  /// Clients that are connected via local socket may use this command to read
  /// the tags of an arbitrary local file (URI is an absolute path).
  Future<List<MpdFile>> lsinfo([String? uri]) {
    return _send(
      'lsinfo',
      (response) =>
          response.values.map(MpdFile.fromValue).whereType<MpdFile>().toList(),
      args: [uri],
    );
  }

  /// Read "comments" (i.e. key-value pairs) from the file specified by [uri].
  ///
  /// This [uri] can be a path relative to the music directory or an absolute
  /// path.
  ///
  /// This command may be used to list metadata of remote files (e.g. URI
  /// beginning with `http://` or `smb://`).
  ///
  /// The meaning of these depends on the codec, and not all decoder plugins
  /// support it. For example, on Ogg files, this lists the Vorbis comments.
  Future<Map<String, List<String>>> readcomments(String uri) {
    return _send(
      'readcomments',
      (response) => response.values.single,
      args: [uri],
    );
  }

  /// Locate a picture for the given song and return a chunk of the image file
  /// at offset [offset].
  ///
  /// This is usually implemented by reading embedded pictures from binary tags
  /// (e.g. ID3v2’s APIC tag).
  ///
  /// If the song file was recognized, but there is no picture, the response is
  /// successful, but is otherwise empty.
  ///
  /// Returns `null` if the song has no image.
  Future<MpdImage?> readpicture(String uri, int offset) {
    return _send(
      'readpicture',
      (response) =>
          response.values.isEmpty ? null : MpdImage.fromResponse(response),
      args: [uri, offset],
    );
  }

  /// Search the database for songs matching [filter].
  ///
  /// Parameters have the same meaning as for [playlistfind], except that search
  /// is not case sensitive.
  ///
  /// For filters, see https://mpd.readthedocs.io/en/stable/protocol.html#filter-syntax.
  Future<List<MpdSong>> search(
    String filter, {
    String? sort,
    MpdRange? window,
  }) {
    return _send(
      'search',
      (response) => response.values.map(MpdSong.fromJson).toList(),
      args: [
        filter,
        if (sort != null) ...['sort', sort],
        if (window != null) ...['window', window],
      ],
    );
  }

  /// Search the database for songs matching [filter].
  ///
  /// Parameters have the same meaning as for [playlistfind], except that search
  /// is not case sensitive.
  ///
  /// The [position] parameter specifies where the songs will be inserted. It
  /// can be relative to the current song as in [addid].
  ///
  /// For filters, see https://mpd.readthedocs.io/en/stable/protocol.html#filter-syntax.
  Future<void> searchadd(
    String filter, {
    String? sort,
    MpdRange? window,
    MpdPositionOrRelativePosition? position,
  }) {
    return _sendEmpty(
      'searchadd',
      args: [
        filter,
        if (sort != null) ...['sort', sort],
        if (window != null) ...['window', window],
        if (position != null) ...['position', position],
      ],
    );
  }

  /// Search the database for songs matching [filter] and add them to the
  /// playlist named [name].
  ///
  /// If a playlist by that name doesn’t exist it is created.
  ///
  /// Parameters have the same meaning as for [playlistfind], except that search
  /// is not case sensitive.
  ///
  /// The [position] parameter specifies where the songs will be inserted. It
  /// can be relative to the current song as in [addid].
  ///
  /// For filters, see https://mpd.readthedocs.io/en/stable/protocol.html#filter-syntax.
  Future<void> searchaddpl(
    String name,
    String filter, {
    String? sort,
    MpdRange? window,
    MpdPosition? position,
  }) {
    return _sendEmpty(
      'searchaddpl',
      args: [
        name,
        filter,
        if (sort != null) ...['sort', sort],
        if (window != null) ...['window', window],
        if (position != null) ...['position', position],
      ],
    );
  }

  /// Updates the music database: find new files, remove deleted files, update
  /// modified files.
  ///
  /// [uri] is a particular directory or song/file to update. If you do not
  /// specify it, everything is updated.
  ///
  /// Returns the `jobid`, where `jobid` is a positive number identifying the
  /// update job. You can read the current job id in the status response.
  Future<int?> update([String? uri]) {
    return _send(
      'update',
      (response) => parseInt(response.values.single['updating_db']),
      args: [uri],
    );
  }

  /// Same as update, but also rescans unmodified files.
  Future<int?> rescan([String? uri]) {
    return _send(
      'rescan',
      (response) => parseInt(response.values.single['updating_db']),
      args: [uri],
    );
  }

  // mounts and neighbors
  // https://mpd.readthedocs.io/en/stable/protocol.html#mounts-and-neighbors

  /// Mount the specified remote storage [uri] at the given path.
  Future<void> mount(String path, String uri) {
    return _sendEmpty('mount', args: [path, uri]);
  }

  /// Unmounts the specified path.
  Future<void> unmount(String path) {
    return _sendEmpty('unmount', args: [path]);
  }

  /// Queries a list of all mounts.
  ///
  /// By default, this contains just the configured `music_directory`.
  Future<List<MpdMount>> listmounts() {
    return _send(
      'listmounts',
      (response) => response.values.map(MpdMount.fromJson).toList(),
    );
  }

  /// Queries a list of "neighbors" (e.g. accessible file servers on the local
  /// net).
  ///
  /// Items on that list may be used with the [mount] command.
  Future<List<MpdNeighbor>> listneighbors() {
    return _send(
      'listneighbors',
      (response) => response.values.map(MpdNeighbor.fromJson).toList(),
    );
  }

  // stickers
  // https://mpd.readthedocs.io/en/stable/protocol.html#stickers

  /// Reads a sticker value for the specified object.
  Future<MapEntry<String, String>?> stickerget(
    MpdStickerType type,
    String uri,
    String name,
  ) {
    return _send(
      'sticker get',
      (response) => parseSticker(response.values.single['sticker']),
      args: [type, uri, name],
    );
  }

  /// Adds a sticker value to the specified object.
  ///
  /// If a sticker item with that name already exists, it is replaced.
  Future<void> stickerset(
    MpdStickerType type,
    String uri,
    String name,
    String value,
  ) {
    return _sendEmpty('sticker set', args: [type, uri, name, value]);
  }

  /// Deletes a sticker value from the specified object.
  ///
  /// If you do not specify a sticker name, all sticker values are deleted.
  Future<void> stickerdelete(
    MpdStickerType type,
    String uri, [
    String? name,
  ]) {
    return _sendEmpty('sticker delete', args: [type, uri, name]);
  }

  /// Lists the stickers for the specified object.
  Future<Map<String, String>> stickerlist(
    MpdStickerType type,
    String uri,
  ) {
    return _send(
      'sticker list',
      (response) => Map.fromEntries(
        response.values
            .map((value) => parseSticker(value['sticker']))
            .whereType<MapEntry<String, String>>(),
      ),
      args: [type, uri],
    );
  }

  /// Searches the sticker database for stickers with the specified name, below
  /// the specified directory ([uri]).
  ///
  /// For each matching song, it returns the URI and that one sticker's value.
  ///
  /// When [operator] and [value] are specified, stickers with the given value
  /// are returned.
  ///
  /// Valid [operator]s are `=`, `<` and  `>`.
  Future<List<MpdStickerFind>> stickerfind(
    MpdStickerType type,
    String uri,
    String name, [
    String? operator,
    String? value,
  ]) {
    return _send(
      'sticker find',
      (response) => response.values
          .map(MpdStickerFind.fromValue)
          .whereType<MpdStickerFind>()
          .toList(),
      args: [
        type,
        uri,
        name,
        if (operator != null && value != null) ...[operator, value],
      ],
    );
  }

  // connection settings
  // https://mpd.readthedocs.io/en/stable/protocol.html#connection-settings

  /// This is used for authentication with the server.
  ///
  /// [password] is simply the plaintext password.
  Future<void> password(String password) {
    return _sendEmpty('password', args: [password]);
  }

  /// Does nothing.
  Future<void> ping() {
    return _sendEmpty('ping');
  }

  /// Set the maximum binary response size for the current connection to the
  /// specified number of bytes.
  ///
  /// A bigger value means less overhead for transmitting large entities, but it
  /// also means that the connection is blocked for a longer time.
  ///
  /// For binary responses, see https://mpd.readthedocs.io/en/stable/protocol.html#binary.
  Future<void> binarylimit(int size) {
    return _sendEmpty('binarylimit', args: [size]);
  }

  /// Shows a list of available tag types.
  ///
  /// It is an intersection of the `metadata_to_use` setting and this client's
  /// tag mask.
  ///
  /// About the tag mask: each client can decide to disable any number of tag
  /// types, which will be omitted from responses to this client. That is a good
  /// idea, because it makes responses smaller.
  Future<List<String>> tagtypes() {
    return _send(
      'tagtypes',
      (response) => response.values
          .map((value) => value['tagtype'])
          .whereType<String>()
          .toList(),
    );
  }

  /// Remove one or more tags from the list of tag types the client is
  /// interested in.
  ///
  /// These will be omitted from responses to this client.
  Future<void> tagtypesdisable(List<String> names) {
    return _sendEmpty('tagtypes disable', args: [...names]);
  }

  /// Re-enable one or more tags from the list of tag types for this client.
  ///
  /// These will no longer be hidden from responses to this client.
  Future<void> tagtypesenable(List<String> names) {
    return _sendEmpty('tagtypes enable', args: [...names]);
  }

  /// Clear the list of tag types this client is interested in.
  ///
  /// This means that MPD will not send any tags to this client.
  Future<void> tagtypesclear() {
    return _sendEmpty('tagtypes clear');
  }

  /// Announce that this client is interested in all tag types.
  ///
  /// This is the default setting for new clients.
  Future<void> tagtypesall() {
    return _sendEmpty('tagtypes all');
  }

  // partition commands
  // https://mpd.readthedocs.io/en/stable/protocol.html#partition-commands

  /// Switch the client to a different partition.
  Future<void> partition(String name) {
    return _sendEmpty('partition', args: [name]);
  }

  /// Returns a list of partitions.
  ///
  /// Each partition starts with a partition keyword and the partition's name,
  /// followed by information about the partition.
  Future<List<String>> listpartitions() {
    return _send(
      'listpartitions',
      (response) => response.values
          .map((value) => value['partition'])
          .whereType<String>()
          .toList(),
    );
  }

  /// Create a new partition.
  Future<void> newpartition(String name) {
    return _sendEmpty('newpartition', args: [name]);
  }

  /// Delete a partition.
  ///
  /// The partition must be empty (no connected clients and no outputs).
  Future<void> delpartition(String name) {
    return _sendEmpty('delpartition', args: [name]);
  }

  /// Move an output to the current partition.
  Future<void> moveoutput(String outputname) {
    return _sendEmpty('moveoutput', args: [outputname]);
  }

  // audio output devices
  // https://mpd.readthedocs.io/en/stable/protocol.html#audio-output-devices

  /// Turns an output off.
  Future<void> disableoutput(int id) {
    return _sendEmpty('disableoutput', args: [id]);
  }

  /// Turns an output on.
  Future<void> enableoutput(int id) {
    return _sendEmpty('enableoutput', args: [id]);
  }

  /// Turns an output on or off, depending on the current state.
  Future<void> toggleoutput(int id) {
    return _sendEmpty('toggleoutput', args: [id]);
  }

  /// Shows information about all outputs.
  Future<List<MpdOutput>> outputs() {
    return _send(
      'outputs',
      (response) => response.values.map(MpdOutput.fromValue).toList(),
    );
  }

  /// Set a runtime attribute.
  ///
  /// These are specific to the output plugin, and supported values are usually
  /// returned in the [outputs] response.
  Future<void> outputset(int id, String name, String value) {
    return _sendEmpty('outputset', args: [id, name, value]);
  }

  // reflection
  // https://mpd.readthedocs.io/en/stable/protocol.html#reflection

  /// Returns configuration values that may be interesting for the client.
  ///
  /// This command is only permitted to "local" clients (connected via local
  /// socket).
  Future<MpdConfig?> config() {
    return _send(
      'config',
      (response) => MpdConfig.fromJson(response.values.single),
    );
  }

  /// Shows which commands the current user has access to.
  Future<List<String>> commands() {
    return _send(
      'commands',
      (response) => response.values
          .map((value) => value['command'])
          .whereType<String>()
          .toList(),
    );
  }

  /// Shows which commands the current user does not have access to.
  Future<List<String>> notcommands() {
    return _send(
      'notcommands',
      (response) => response.values
          .map((value) => value['command'])
          .whereType<String>()
          .toList(),
    );
  }

  /// Returns a list of available URL handlers.
  Future<List<String>> urlhandlers() {
    return _send(
      'urlhandlers',
      (response) => response.values
          .map((value) => value['handler'])
          .whereType<String>()
          .toList(),
    );
  }

  /// Returns a list of decoder plugins, followed by their supported suffixes
  /// and MIME types.
  Future<List<MpdDecoder>> decoders() {
    return _send(
      'decoders',
      (response) => response.values.map(MpdDecoder.fromValue).toList(),
    );
  }

  // client to client
  // https://mpd.readthedocs.io/en/stable/protocol.html#client-to-client

  /// Subscribe to a channel.
  ///
  /// The channel is created if it does not exist already. The name may consist
  /// of alphanumeric ASCII characters plus underscore, dash, dot and colon.
  Future<void> subscribe(String channel) {
    return _sendEmpty('subscribe', args: [channel]);
  }

  /// Unsubscribe from a channel.
  Future<void> unsubscribe(String channel) {
    return _sendEmpty('unsubscribe', args: [channel]);
  }

  /// Obtain a list of all channels.
  ///
  /// The response is a list of "channel:"" lines.
  Future<List<String>> channels() {
    return _send(
      'channels',
      (response) => response.values
          .map((value) => value['channel'])
          .whereType<String>()
          .toList(),
    );
  }

  /// Reads messages for this client.
  Future<List<MpdMessage>> readmessages() {
    return _send(
      'readmessages',
      (response) => response.values.map(MpdMessage.fromJson).toList(),
    );
  }

  /// Send a message to the specified channel.
  Future<void> sendmessage(String channel, String text) {
    return _sendEmpty('sendmessage', args: [channel, text]);
  }

  Future<void> _sendEmpty(
    String cmd, {
    List<Object?> args = const [],
  }) {
    return _send(cmd, (response) {}, args: args);
  }

  Future<T> _send<T>(
    String cmd,
    T Function(MpdResponseOk response) parse, {
    List<Object?> args = const [],
  }) async {
    final response = await _connection.send(_buildCmd(cmd, args));

    return response.map(
      ok: parse,
      error: (value) => Future.error(
        MpdClientException(value.message),
        StackTrace.current,
      ),
      greeting: (response) => Future.error(
        MpdClientException('unexpected event after request: $response'),
        StackTrace.current,
      ),
    );
  }
}

String _buildCmd(String cmd, List<Object?> args) {
  if (args.isEmpty) return cmd;

  return '$cmd ${_formatArgs(args)}';
}

String _formatArgs(List<Object?> args) {
  final buffer = StringBuffer();

  final filtered = args.where((e) => e != null).toList();

  for (var i = 0; i < filtered.length; ++i) {
    final arg = filtered[i];

    if (arg is bool) {
      buffer.write(arg ? 1 : 0);
    } else if (arg is MpdSingle) {
      buffer.write(arg.toValue());
    } else if (arg is Enum) {
      buffer.write(arg.name);
    } else {
      buffer.write(arg);
    }

    if (i != filtered.length - 1) buffer.write(' ');
  }

  return buffer.toString();
}
