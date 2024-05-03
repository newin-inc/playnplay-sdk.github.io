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
public let title: String?
```
미디어 아이템의 제목을 나타내는 속성입니다.

<br><br>
## artworkUrl
```swift
public let artworkUrl: URL?
```
미디어 아이템의 아트워크 경로를 나타내는 속성입니다.
<div align="right">
참고: <a href="https://developer.apple.com/documentation/foundation/url">URL</a>
</div>

<br><br>
## downloadPath
```swift
public let downloadPath: String?
```
디바이스에 저장된 경로를 나타내는 속성입니다.

<br><br>
## duration
```swift
public var duration: Duration? 
```
미디어 아이템의 전체 길이를 나타내는 속성입니다.
<div align="right">
참고: <a href="../../struct/duration/home.md">Duration</a>
</div>


<text style="color:red;">Deprecated: </text><a href="../../protocol/playback-info/home.md">PlaybackInfo</a>의 
<a href="../../protocol/playback-info/home.md#duration">duration</a>을 사용하세요.

<br><br>
## expiresOn
```swift
public let expiresOn: Date?
```
미디어 아이템의 만료 일시를 나타내는 속성입니다.
<div align="right">
참고: <a href="https://developer.apple.com/documentation/foundation/date">Date</a>
</div>

<text style="color:red;">Deprecated: </text><a href="../../protocol/playback-info/home.md">PlaybackInfo</a>의 
<a href="../../protocol/playback-info/home.md#expireson">expiresOn</a>을 사용하세요.

<br><br>
## lastPlayedTime
```swift
public var lastPlayedTime: Duration?
```
미디어 아이템이 마지막으로 재생한 위치를 나타내는 속성입니다.
<div align="right">
참고: <a href="../../struct/duration/home.md">Duration</a>
</div>

<text style="color:red;">Deprecated: </text><a href="../../protocol/playback-info/home.md">PlaybackInfo</a>의 
<a href="../../protocol/playback-info/home.md#lastplayedtime">lastPlayedTime</a>을 사용하세요.

<br><br>
# 메서드

## buildUpon()
```swift
public func buildUpon() -> MediaMetadata.Builder
```
미디어 메타 데이터를 추가하거나 수정하고자 할 때 사용하는 메서드입니다. 변경 후, [.build()](../../class/media-metadata-builder/home.md#build)를 호출하여 구성을 완료합니다.

<div align="right">
참고: <a href="../../how-to-use/home.md#제목을-설정하는-예제">제목을 설정하는 예제</a>
</div>
