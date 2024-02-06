# Builder
미디어 아이템에 정보를 추가하고 싶을 때는 MediaItem.Builder()를 사용하면 됩니다. 정보 추가 후에는 .build()를 호출하여야 미디어 아이템으로 사용할 수 있습니다.

```swift
extension MediaItem {
    class Builder
}
```

## 생성자 파라미터

|이름|타입|설명|필수|
|:--:|:--:|--|:--:|
|url|URL|[URL](https://developer.apple.com/documentation/foundation/url) 참고|O|

## 메서드

### build()
Builder를 이용하여 설정한 정보에 기반하여 미디어 아이템을 만듭니다.

```swift
func build() -> MediaItem
```

### drmConfiguration(_)
DRM 설정을 넘겨줍니다.

```swift
func drmConfiguration(_ drmConfiguration: DrmConfiguration?) -> Builder
```

|파라미터|타입|설명|필수|
|:--:|:--:|--|:--:|
|drmConfiguration|DrmConfiguration?|앱 ID와 사용자 ID로 만든 설정|O|

### metadataConfiguration(_)
DRM 설정을 넘겨줍니다.

```swift
func metadataConfiguration(_ metadataConfiguration: MetadataConfiguration?) -> Builder 
```

|파라미터|타입|설명|필수|
|:--:|:--:|--|:--:|
|metadataConfiguration|MetadataConfiguration?|메타데이터 설정|O|

