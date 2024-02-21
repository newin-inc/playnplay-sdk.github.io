# 메서드

## build()
```swift
func build() -> MediaItem
```

Builder를 이용하여 설정한 정보에 기반하여 미디어 아이템을 만듭니다.

## drmConfiguration(_)
```swift
func drmConfiguration(_ drmConfiguration: DrmConfiguration?) -> MediaItem.Builder
```

|파라미터|타입|설명|필수|
|:--:|:--:|--|:--:|
|drmConfiguration|[DrmConfiguration](../../struct/drm-configuration/home.md)?|앱 ID와 사용자 ID로 만든 설정|O|

DRM 설정을 넘겨줍니다.

## metadataConfiguration(_)
```swift
func metadataConfiguration(_ metadataConfiguration: MetadataConfiguration?) -> MediaItem.Builder
```
|파라미터|타입|설명|필수|
|:--:|:--:|--|:--:|
|metadataConfiguration|[MetadataConfiguration](../../struct/metadata-configuration/home.md)?|메타데이터 설정|O|

메타데이터 설정을 넘겨줍니다.

## subtitleConfigurations(_)
```swift
func subtitleConfigurations(_ subtitleConfigurations: [SubtitleConfiguration]) -> MediaItem.Builder
```
|파라미터|타입|설명|필수|
|:--:|:--:|--|:--:|
|subtitleConfigurations|\[[SubtitleConfiguration](../../struct/subtitle-configuration/home.md)\]|자막 설정|O|

자막 설정을 넘겨줍니다.

## url(_)
```swift
func url(_ url: URL) -> MediaItem.Builder
```

URL을 넘겨줍니다.