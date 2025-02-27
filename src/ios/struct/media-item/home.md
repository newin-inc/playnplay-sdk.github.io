# MediaItem

```swift
struct MediaItem
```

MediaItem은 미디어의 url, 자막 정보, 메타 데이터, DRM 설정 등을 가지고 있는 구조체입니다. 해당 속성에 접근하면 [Agnet](../../../agent/home.md)에서 설정한 값을 가져올 수 있습니다.

<br>

# 속성

## bookmarks

```swift
var bookmarks: [BookmarkItem]
```

|타입|설명|
|:--:|--|
|[BookmarkItem](../bookmark-item/home.md)?| 북마크 정보 |

## clippingConfiguration

```swift
let clippingConfiguration: ClippingConfiguration?
```

|타입|설명|
|:--:|--|
|[ClippingConfiguration](../clipping-configuration/home.md)?| 클리핑 설정 정보 |

<div align="right">
참고: <a href="../clipping-configuration/home.md">ClippingConfiguration</a>
</div>

## drmConfiguration

```swift
let drmConfiguration: DrmConfiguration?
```

|타입|설명|
|:--:|--|
|[DrmConfiguration](../drm-configuration/home.md)?| drm 설정 정보 |

<div align="right">
참고: <a href="../drm-configuration/home.md">DrmConfiguration</a>
</div>

## mediaMetadata

```swift
let mediaMetadata: MediaMetadata?
```

|타입|설명|
|:--:|--|
|[MediaMetadata](../media-metadata/home.md)?|메타데이터 설정 정보|

<div align="right">
참고: <a href="../media-metadata/home.md">MediaMetadata</a>
</div>

## returnUrl

```swift
let returnUrl: URL?
```

|타입|설명|
|:--:|--|
|[URL](https://developer.apple.com/documentation/foundation/url)?|[Agent](../../../agent/home.md)에서 설정한 미디어 아이템의 리턴 Url|

<div align="right">
참고: <a href="../../../agent/home.md#mediaitem">MediaItem</a>내의 returnUrl<br>
<a href="https://developer.apple.com/documentation/foundation/url">URL</a>
</div>

## seekable

```swift
let seekable: Bool
```

|타입|설명|
|:--:|--|
|Bool|미디어 Seek 기능 허용 여부|

## subtitleConfigurations

```swift
let subtitleConfigurations: [SubtitleConfiguration]
```

|타입|설명|
|:--:|--|
|\[[SubtitleConfiguration](../subtitle-configuration/home.md)\]| 미디어 자막 정보|

<div align="right">
참고: <a href="../subtitle-configuration/home.md">SubtitleConfiguration</a>
</div>

## title

```swift
var title: String { get }
```

|타입|설명|
|:--:|--|
|String|미디어 제목|

## url

```swift
let url: URL
```

|타입|설명|
|:--:|--|
|[URL](https://developer.apple.com/documentation/foundation/url)|미디어 주소|

<div align="right">
참고: <a href="https://developer.apple.com/documentation/foundation/url">URL</a>
</div>

<br>

# 메서드

## buildUpon()

```swift
func buildUpon() -> MediaItem.Builder
```

Builder를 사용하여 미디어 아이템에 대한 초기 설정을 합니다. 미디어 아이템의 기존 메타데이터나 DRM 구성을 바꿀 때 사용시면 됩니다. 미디어 아이템으로 사용하기 위해서는 반드시 [.build()](../../class/media-item-builder/home.md#build)를 해야합니다.

<div align="right">
참고: <a href="#mediaitembuilder">MediaItem.Builder</a>
</div>

<br>

# 정적 메서드 

## from(url:)

```swift
static func from(url: URL) -> MediaItem
```

|타입|설명|
|:--:|:--:|
|URL|[URL](https://developer.apple.com/documentation/foundation/url) 참고|

미디어 주소를 파라미터로 입력하여 미디어 아이템을 구성하는 정적 함수입니다.

<br>

# 클래스

## MediaItem.Builder

```swift
class Builder
```

미디어 아이템을 구성하기 위한 클래스입니다. 자세한 내용은 [MediaItem.Builder](../../class/media-item-builder/home.md)를 참고하세요.

<div align="right">
참고: <a href="../../class/media-item-builder/home.md">MediaItem.Builder</a>
</div>
