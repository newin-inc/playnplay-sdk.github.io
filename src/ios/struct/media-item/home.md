# MediaItem

```swift
struct MediaItem {

    public let drmConfiguration: DrmConfiguration?

    public let mediaMetadata: MediaMetadata?

    public let subtitleConfigurations: [SubtitleConfiguration]

    public var title: String { get }

    public let url: URL

    public func buildUpon() -> MediaItem.Builder

    public static func from(url: URL) -> MediaItem

    public class Builder { }
}
```

MediaItem은 미디어의 url, 자막 정보, 메타 데이터, DRM 설정 등을 가지고 있는 구조체입니다. 

<details open>
<summary>
    <a href="./details.md#속성">속성</a>
</summary>

* [let drmConfiguration: DrmConfiguration?](./details.md#drmconfiguration)

* [let mediaMetadata: MediaMetadata?](./details.md#mediametadata)

* [let subtitleConfigurations: [SubtitleConfiguration]](./details.md#subtitleconfigurations)

* [var title: String](./details.md#title)

* [let url: URL](./details.md#url)

</details>
<br>

<details open>
<summary>
    <a href="./details.md#메서드">메서드</a>
</summary>

* [func buildUpon() -> MediaItem.Builder](./details.md#buildupon)

* [static func from(url: URL) -> MediaItem](./details.md#fromurl)

</details>
<br>

<details open>
<summary>
    <a href="./details.md#클래스">클래스</a>
</summary>

* [Builder](./details.md#builder)

</details>
<br>

