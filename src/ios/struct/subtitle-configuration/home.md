# SubtitleConfiguration

```swift
public struct SubtitleConfiguration {

    public enum Mode : String {

        case autoSelect

        case showing

        case hidden
    }

    public class Builder {

        public init(url: URL)

        public func language(_ language: String?) -> SubtitleConfiguration.Builder

        public func label(_ language: String?) -> SubtitleConfiguration.Builder

        public func mode(_ mode: SubtitleConfiguration.Mode) -> SubtitleConfiguration.Builder

        public func build() -> SubtitleConfiguration
    }

}
```

<div align="right">
참고: <a href="../../enum/subtitle-configuration-mode/home.md">SubtitleConfiguration.Mode</a>,<br>
<a href="../../class/subtitle-configuration-builder/home.md">SubtitleConfiguration.Builder</a>
</div>

## 사용 예제
```swift
let subtitleConfigurations = [
    SubtitleConfiguration
        .Builder(url: URL(string: "자막주소.vtt")!)
        .language("언어")
        .label("라벨")
        .mode(.autoSelect)
        .build(),
    ...
]

let mediaItem = MediaItem
    .Builder(url: URL(string: "미디어주소.mp3")!)
    .subtitleConfigurations(subtitleConfigurations)
    .build()
```

<div align="right">
참고: <a href="../../class/media-item-builder/home.md">MediaItem.Builder</a>
</div>