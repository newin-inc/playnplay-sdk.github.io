# 메서드

## build()
```swift
func build() -> MediaItem
```

Builder를 이용하여 설정한 정보에 기반하여 미디어 아이템을 만듭니다.

<br><br>
## drmConfiguration(_)
```swift
func drmConfiguration(_ drmConfiguration: DrmConfiguration?) -> MediaItem.Builder
```

|파라미터|타입|설명|필수|
|:--:|:--:|--|:--:|
|drmConfiguration|[DrmConfiguration](../../struct/drm-configuration/home.md)?|앱 ID와 사용자 ID로 만든 설정|O|

DRM 설정을 넘겨줍니다.

<br><br>
## mediaMetadata(_)
```swift
func mediaMetadata(_ mediaMetadata: MediaMetadata?) -> MediaItem.Builder
```
|파라미터|타입|설명|필수|
|:--:|:--:|--|:--:|
|mediaMetadata|[MediaMetadata](../../struct/media-metadata/home.md)?|메타데이터 설정|O|

메타데이터 설정을 넘겨줍니다.

<br><br>
## returnUrl(_)
```swift
func returnUrl(_ returnUrl: URL?) -> MediaItem.Builder
```
|파라미터|타입|설명|필수|
|:--:|:--:|--|:--:|
|returnUrl|URL?|리턴 Url|O|

리턴 Url을 설정합니다.

<br><br>
## seekable(_)
```swift
func seekable(_ seekable: Bool) -> MediaItem.Builder
```
|파라미터|타입|설명|필수|
|:--:|:--:|--|:--:|
|seekable|[Bool|Seek 기능을 허용할 지에 대한 여부|O|

<div align="right">
참고: <a href="../../how-to-use/home.md#seek-기능-제한">Seek 기능 제한</a>
</div>

Seek 기능 허용 여부를 설정합니다. seekable(false)일 경우, Seek 기능이 제한됩니다.

<br><br>
## subtitleConfigurations(_)
```swift
func subtitleConfigurations(_ subtitleConfigurations: [SubtitleConfiguration]) -> MediaItem.Builder
```
|파라미터|타입|설명|필수|
|:--:|:--:|--|:--:|
|subtitleConfigurations|\[[SubtitleConfiguration](../../struct/subtitle-configuration/home.md)\]|자막 설정|O|

자막 설정을 넘겨줍니다.

<br><br>
## url(_)
```swift
func url(_ url: URL) -> MediaItem.Builder
```

URL을 넘겨줍니다.