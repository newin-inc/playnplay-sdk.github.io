# MediaMetadata

```swift
public struct MediaMetadata {

    public let title: String?

    public let artworkUrl: URL?

    public let downloadPath: String?

    public let expiresOn: Date?

    public let lastPlayedTime: Duration?

    public func buildUpon() -> MediaMetadata.Builder

    public class Builder {

        public init()

        public func title(_ title: String?) -> MediaMetadata.Builder

        public func artworkUrl(_ artworkUrl: URL?) -> MediaMetadata.Builder

        public func downloadPath(_ downloadPath: String?) -> MediaMetadata.Builder
        
        public func build() -> MediaMetadata
    }

}
```

<div align="right">
참고: <a href="../../class/media-metadata-builder/home.md">MediaMetadata.Builder</a>
</div>

# 사용 예제
```swift
let mediaMetadata = MediaMetadata
    .Builder()
    .title("제목")
    .artworkUrl(URL(string:"이미지주소.jpg")!)
    .build()

let mediaItem = MediaItem
    .Builder(url: URL(string: "미디어주소.mp3")!)
    .mediaMetadata(mediaMetadata)
    .build()
```

<div align="right">
참고: <a href="../../class/media-item-builder/home.md">MediaItem.Builder</a>
</div>
