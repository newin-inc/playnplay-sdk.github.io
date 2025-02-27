# MediaItem.Builder

```swift
class Builder
```

미디어 아이템에 정보를 추가하고 싶을 때는 MediaItem.Builder()를 사용하면 됩니다. 정보 추가 후에는 [.build()](#build)를 호출하여야 미디어 아이템으로 사용할 수 있습니다.

<br>

# 생성자

```swift
init(url: URL)
```

|이름|타입|설명|필수|
|:--:|:--:|:--:|:--:|
|url|[URL](https://developer.apple.com/documentation/foundation/url)|미디어 주소|O|

미디어 주소를 통해 미디어 아이템을 만들 수 있습니다.

<div align="right">
참고: <a href="https://developer.apple.com/documentation/foundation/url)">URL</a>
</div>

<br>

# 메서드

## bookmarks(_)

```swift
func bookmarks(_ bookmarks: [BookmarkItem])
```
|파라미터|타입|설명|필수|
|:--:|:--:|:--:|:--:|
|bookmarks|[BookmarkItem](../../struct/bookmark-item/home.md)?|북마크 설정|O|

## build()

```swift
func build() -> MediaItem
```

Builder를 이용하여 설정한 정보에 기반하여 미디어 아이템을 만듭니다.

<div align="right">
참고: <a href="../../struct/media-item/home.md">MediaItem</a>
</div>

## clippingConfiguration(_)

```swift
func clippingConfiguration(_ clippingConfiguration: ClippingConfiguration?) -> MediaItem.Builder
```

|파라미터|타입|설명|필수|
|:--:|:--:|:--:|:--:|
|clippingConfiguration|[ClippingConfiguration](../../struct/clipping-configuration/home.md)?|클리핑 설정|O|

클리핑 설정을 넘겨줍니다.

<div align="right">
참고: <a href="../../struct/clipping-configuration/home.md">ClippingConfiguration</a>
</div>

## drmConfiguration(_)

```swift
func drmConfiguration(_ drmConfiguration: DrmConfiguration?) -> MediaItem.Builder
```

|파라미터|타입|설명|필수|
|:--:|:--:|:--:|:--:|
|drmConfiguration|[DrmConfiguration](../../struct/drm-configuration/home.md)?|App 아이디와 사용자 아이디로 만든 DRM 설정|O|

DRM 설정을 넘겨줍니다.

<div align="right">
참고: <a href="../../struct/drm-configuration/home.md">DrmConfiguration</a>
</div>

## mediaMetadata(_)

```swift
func mediaMetadata(_ mediaMetadata: MediaMetadata?) -> MediaItem.Builder
```

|파라미터|타입|설명|필수|
|:--:|:--:|:--:|:--:|
|mediaMetadata|[MediaMetadata](../../struct/media-metadata/home.md)?|메타데이터 설정|O|

메타데이터 설정을 넘겨줍니다.

<div align="right">
참고: <a href="../../struct/media-metadata/home.md">MediaMetadata</a>
</div>

## returnUrl(_)

```swift
func returnUrl(_ returnUrl: URL?) -> MediaItem.Builder
```

|파라미터|타입|설명|필수|
|:--:|:--:|:--:|:--:|
|returnUrl|[URL](https://developer.apple.com/documentation/foundation/url)?|리턴 Url|O|

리턴 Url을 설정합니다.

<div align="right">
참고: <a href="https://developer.apple.com/documentation/foundation/url">URL</a>
</div>

## seekable(_)

```swift
func seekable(_ seekable: Bool) -> MediaItem.Builder
```

|파라미터|타입|설명|필수|
|:--:|:--:|:--:|:--:|
|seekable|Bool|Seek 기능을 허용할 지에 대한 여부|O|

Seek 기능 허용 여부를 설정합니다. seekable(false)일 경우, Seek 기능이 제한됩니다.

<div align="right">
참고: <a href="../../how-to-use/home.md#seek-기능-제한">Seek 기능 제한</a>
</div>

## subtitleConfigurations(_)

```swift
func subtitleConfigurations(_ subtitleConfigurations: [SubtitleConfiguration]) -> MediaItem.Builder
```

|파라미터|타입|설명|필수|
|:--:|:--:|:--:|:--:|
|subtitleConfigurations|\[[SubtitleConfiguration](../../struct/subtitle-configuration/home.md)\]|자막 설정|O|

자막 설정을 넘겨줍니다.

<div align="right">
참고: <a href="../../struct/subtitle-configuration/home.md">SubtitleConfiguration</a>
</div>

## url(_)

```swift
func url(_ url: URL) -> MediaItem.Builder
```

미디어 주소를 변경합니다.
<div align="right">
참고: <a href="https://developer.apple.com/documentation/foundation/url">URL</a>
</div>