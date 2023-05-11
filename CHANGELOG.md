## 0.2.0

- Upgraded to dart 3
- Updated parsing multiple values for one key is now returned as a `List<String>` instead of a concatenated `String`
- Removed pre-parsed tags in `MpdSong`
  - Use `MpdSong.tags` instead
- Fixed `currentsong` now returns `null` when no value is returned
- Fixed `move` and `moveid` parameters didn't support relative position
- Fixed when sending multiple requests in a quick succession the data was not framed into proper messages, causing the responses to get mixed up

## 0.1.2

- Fixed connection didn't lookup host when not using unix socket files
- Fixed playid command

## 0.1.1

- Updated pub description

## 0.1.0

- Initial version.
