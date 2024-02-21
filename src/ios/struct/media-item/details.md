# 속성

## drmConfiguration

```swift
public let drmConfiguration: DrmConfiguration?
```
drm 설정 정보입니다. [여기](../drm-configuration/home.md)를 참고하세요.

## metadataConfiguration

```swift
public let metadataConfiguration: MetadataConfiguration?
```
메타데이터 설정 정보입니다. [여기](../metadata-configuration/home.md)를 참고하세요.

## subtitleConfigurations

```swift
public let subtitleConfigurations: [SubtitleConfiguration]
```
미디어의 자막 정보입니다. [여기](../subtitle-configuration/home.md)를 참고하세요.

## title

```swift
public var title: String { get }
```
미디어의 제목입니다.

## url

```swift
public let url: URL
```
미디어 주소입니다.

<br><br><br><br>

# 메서드

## buildUpon()

```swift
func buildUpon() -> MediaItem.Builder
```
Builder를 사용하여 미디어 아이템에 대한 초기 설정을 합니다. 미디어 아이템의 기존 메타데이터나 DRM 구성을 바꿀 때 사용시면 됩니다. 미디어 아이템으로 사용하기 위해서는 반드시 [.build()](../../class/media-item-builder/details.md#build)를 해야합니다.
<div align="right">
참고: <a href="#builder">Builder</a>
</div>

## from(url:)

```swift
static func from(url: URL) -> MediaItem
```
미디어 주소를 파라미터로 입력하여 미디어 아이템을 구성합니다.

|타입|설명|
|:--:|--|
|URL|[URL](https://developer.apple.com/documentation/foundation/url) 참고|

<br><br><br><br>

# 클래스

## Builder

```swift
extension MediaItem {

    public class Builder {

        public init(url: URL)

        public func url(_ url: URL) -> MediaItem.Builder

        public func subtitleConfigurations(_ subtitleConfigurations: [SubtitleConfiguration]) -> MediaItem.Builder

        public func metadataConfiguration(_ metadataConfiguration: MetadataConfiguration?) -> MediaItem.Builder

        public func drmConfiguration(_ drmConfiguration: DrmConfiguration?) -> MediaItem.Builder

        public func build() -> MediaItem
    }

}
```

[여기](../../class/media-item-builder/home.md)에 자세한 설명이 있습니다.
