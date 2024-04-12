# MediaItem.Builder

```swift
extension MediaItem {

    public class Builder {

        public init(url: URL)

        public func build() -> MediaItem

        public func drmConfiguration(_ drmConfiguration: DrmConfiguration?) -> MediaItem.Builder

        public func mediaMetadata(_ mediaMetadata: MediaMetadata?) -> MediaItem.Builder

        public func returnUrl(_ returnUrl: URL?) -> MediaItem.Builder

        public func seekable(_ seekable: Bool) -> MediaItem.Builder

        public func subtitleConfigurations(_ subtitleConfigurations: [SubtitleConfiguration]) -> MediaItem.Builder

        public func url(_ url: URL) -> MediaItem.Builder
    }
}
```

미디어 아이템에 정보를 추가하고 싶을 때는 MediaItem.Builder()를 사용하면 됩니다. 정보 추가 후에는 .build()를 호출하여야 미디어 아이템으로 사용할 수 있습니다.

## 생성자

```swift
init(url: URL)
```

|이름|타입|설명|필수|
|:--:|:--:|--|:--:|
|url|URL|[URL](https://developer.apple.com/documentation/foundation/url) 참고|O|

<details open>
<summary>
    <a href="./details.md#메서드">메서드</a>
</summary>

 - [build()](./details.md#build)

 - [drmConfiguration(_)](./details.md#drmconfiguration_)

 - [mediaMetadata(_)](./details.md#mediametadata_)

 - [returnUrl(_)](./details.md#returnurl_)

 - [seekable(_)](./details.md#seekable_)

 - [subtitleConfigurations(_)](./details.md#subtitleconfigurations_)

 - [url(_)](./details.md#url_)

</details>
<br>
