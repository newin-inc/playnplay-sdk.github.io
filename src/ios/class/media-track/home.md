# MediaTrack

```swift
public class MediaTrack : CustomStringConvertible {

    public var isSelected: Bool

    public var codecName: String { get }

    public var label: String? { get }

    public var language: String? { get }
}
```

[AudioTrack](../audio-track/home.md), [TextTrack](../text-track/home.md), [VideoTrack](../video-track/home.md)의 부모 클래스입니다.
