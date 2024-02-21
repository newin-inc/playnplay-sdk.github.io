# MetadataConfiguration

```swift
public struct MetadataConfiguration {

    public let title: String?

    public let artworkUrl: URL?

    public func buildUpon() -> MetadataConfiguration.Builder

    public class Builder {

        public init()

        public func title(_ title: String?) -> MetadataConfiguration.Builder

        public func artworkUrl(_ artworkUrl: URL?) -> MetadataConfiguration.Builder

        public func build() -> MetadataConfiguration
    }

}
```

<div align="right">
참고: <a href="../../class/metadata-configuration-builder/home.md">MetadataConfiguration.Builder</a>
</div>

# 사용 예제
```swift
let metadataConfiguration = MetadataConfiguration
    .Builder()
    .title("제목")
    .artworkUrl(URL(string:"이미지주소.jpg")!)
    .build()

let mediaItem = MediaItem
    .Builder(url: URL(string: "미디어주소.mp3")!)
    .metadataConfiguration(metadataConfiguration)
    .build()
```

<div align="right">
참고: <a href="../../class/media-item-builder/home.md">MediaItem.Builder</a>
</div>
