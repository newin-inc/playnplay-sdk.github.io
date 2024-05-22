# MediaMetadata

```swift
public struct MediaMetadata {

    public let title: String?

    public let artworkUrl: URL?

    public let downloadPath: String?

    public var duration: Duration? 

    public let expiresOn: Date?

    public var lastPlayedTime: Duration?

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

<br><br>
# 속성

## title
```swift
let title: String?
```
미디어 아이템의 제목을 나타내는 속성입니다.

<br><br>
## artworkUrl
```swift
let artworkUrl: URL?
```
미디어 아이템의 아트워크 경로를 나타내는 속성입니다.
<div align="right">
참고: <a href="https://developer.apple.com/documentation/foundation/url">URL</a>
</div>

<br><br>
## expiresOn
```swift
let expiresOn: Date?
```
미디어 아이템의 만료 일시를 나타내는 속성입니다.
<div align="right">
참고: <a href="https://developer.apple.com/documentation/foundation/date">Date</a>
</div>

<br><br>
# 메서드

## buildUpon()
```swift
func buildUpon() -> MediaMetadata.Builder
```
미디어 메타 데이터를 추가하거나 수정하고자 할 때 사용하는 메서드입니다. 변경 후, [.build()](../../class/media-metadata-builder/home.md#build)를 호출하여 구성을 완료합니다.

<div align="right">
참고: <a href="../../how-to-use/home.md#제목을-설정하는-예제">제목을 설정하는 예제</a>
</div>
