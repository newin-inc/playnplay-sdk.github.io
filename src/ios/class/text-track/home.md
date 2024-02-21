# TextTrack

```swift
public class TextTrack : MediaTrack {}

extension TextTrack {

    public class Cue : Equatable {

        final public let id: String?

        final public let startTime: Duration

        final public let endTime: Duration

        final public let text: String?
    }
}
```
<div align="right">
부모 클래스: <a href="../media-track/home.md">MediaTrack</a>
</div>

자막에 사용되는 클래스입니다.

## 사용 예제
```swift
if !mediaPlayer.textTracks.isEmpty,
    let language = mediaPlayer.textTracks[index].language {
        showLanguage(language) // en
}
```
