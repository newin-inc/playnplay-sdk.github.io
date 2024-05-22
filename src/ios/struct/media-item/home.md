# MediaItem

```swift
struct MediaItem {

    public let drmConfiguration: DrmConfiguration?

    public let mediaMetadata: MediaMetadata?

    public let subtitleConfigurations: [SubtitleConfiguration]

    public let returnUrl: URL?

    public let seekable: Bool

    public var title: String { get }

    public let url: URL

    public func buildUpon() -> MediaItem.Builder

    public static func from(url: URL) -> MediaItem

    public class Builder { }
}
```

MediaItem은 미디어의 url, 자막 정보, 메타 데이터, DRM 설정 등을 가지고 있는 구조체입니다. 해당 속성에 접근하면 [Agnet](../../../agent/home.md)에서 설정한 값을 가져올 수 있습니다.

# 속성

## drmConfiguration

```swift
let drmConfiguration: DrmConfiguration?
```
drm 설정 정보입니다. [DrmConfiguration](../drm-configuration/home.md)를 참고하세요.

<br><br>
## mediaMetadata

```swift
let mediaMetadata: MediaMetadata?
```
메타데이터 설정 정보입니다. [MediaMetadata](../media-metadata/home.md)를 참고하세요.

<br><br>
## subtitleConfigurations

```swift
public let subtitleConfigurations: [SubtitleConfiguration]
```
미디어의 자막 정보입니다. [SubtitleConfiguration](../subtitle-configuration/home.md)를 참고하세요.

<br><br>
## returnUrl

```swift
let returnUrl: URL?
```
[Agent](../../../agent/home.md)에서 설정한 미디어 아이템의 리턴 Url입니다.
<div align="right">
참고: <a href="../../../agent/home.md#mediaitem">MediaItem</a>내의 returnUrl, 
<a href="https://developer.apple.com/documentation/foundation/url">URL</a>
</div>

<br><br>
## seekable

```swift
let seekable: Bool
```
미디어의 Seek 기능 허용 여부를 나타내는 속성입니다.

<br><br>
## title

```swift
var title: String { get }
```
미디어의 제목입니다.

<br><br>
## url

```swift
let url: URL
```
미디어 주소입니다.
<div align="right">
참고: <a href="https://developer.apple.com/documentation/foundation/url">URL</a>
</div>

<br><br>
# 메서드

## buildUpon()

```swift
func buildUpon() -> MediaItem.Builder
```
Builder를 사용하여 미디어 아이템에 대한 초기 설정을 합니다. 미디어 아이템의 기존 메타데이터나 DRM 구성을 바꿀 때 사용시면 됩니다. 미디어 아이템으로 사용하기 위해서는 반드시 [.build()](../../class/media-item-builder/home.md#build)를 해야합니다.
<div align="right">
참고: <a href="#builder">MediaItem.Builder</a>
</div>

<br><br>
# 정적 메서드 

## from(url:)

```swift
static func from(url: URL) -> MediaItem
```
미디어 주소를 파라미터로 입력하여 미디어 아이템을 구성하는 정적 함수입니다.

|타입|설명|
|:--:|:--:|
|URL|[URL](https://developer.apple.com/documentation/foundation/url) 참고|


<br><br>
# 클래스

## Builder

```swift
extension MediaItem {

    public class Builder {

        public init(url: URL)

        public func url(_ url: URL) -> MediaItem.Builder

        public func subtitleConfigurations(_ subtitleConfigurations: [SubtitleConfiguration]) -> MediaItem.Builder

        public func mediaMetadata(_ mediaMetadata: MediaMetadata?) -> MediaItem.Builder

        public func drmConfiguration(_ drmConfiguration: DrmConfiguration?) -> MediaItem.Builder

        public func returnUrl(_ returnUrl: URL?) -> MediaItem.Builder

        public func seekable(_ seekable: Bool) -> MediaItem.Builder

        public func build() -> MediaItem
    }

}
```

[MediaItem.Builder](../../class/media-item-builder/home.md)에 자세한 설명이 있습니다.
