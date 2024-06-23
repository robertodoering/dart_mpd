## 0.4.1
- Added `MpdSong.track` field

## 0.4.0
- Added automatically escaping & wrapping arguments in double quotation marks in client calls 
  - This is a breaking change and requires any manually wrapped arguments and escaped  characters to be updated (Remove wrapping quotes and escaping backslashes from client calls)

## 0.3.2
- Fixed `getvol` threw an exception when there was no mixer
  - Returns `null` now

## 0.3.1
- Fixed incoming mpd message sometimes got parsed incorrectly, causing responses to be associated with the wrong request
- Fixed values containing a `:` got parsed incorrectly

## 0.3.0
- Added fields for all possible tags in `MpdSong`
  - E.g. you can now use `MpdSong.artist` instead of `MpdSong.tags['Artist']`.
- Added `MpdClient.onSend` callback
  - Called with the event that is sent to MPD
- Fixed multiple values for a tag in a song didn't get parsed correctly
- Fixed `readpicture` threw an exception when the current song had no picture
  - Returns `null` now
- Removed `MpdValue` union type in favor of a `List<String>` to store the values of a key in `MpdResponse`

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
