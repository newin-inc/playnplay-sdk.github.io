# DrmConfiguration

```swift
public struct DrmConfiguration {

    public let appId: String

    public let userId: String

    public var userData: [String : Any]

    public let env: String

    public func buildUpon() -> DrmConfiguration.Builder

    public class Builder {

        public init(appId: String, userId: String)

        public func userData(_ userData: [String : Any]) -> DrmConfiguration.Builder

        public func build() -> DrmConfiguration
    }
}
```

<div align="right">
참고: <a href="../../class/drm-configuration-builder/home.md">DrmConfiguration.Builder</a>
</div>

## 사용 예제
```swift
let drmConfiguration = DrmConfiguration
    .Builder(appId: "App 아이디", userId: "사용자 아이디")
    .userData(userData)
    .build()

let mediaItem = MediaItem
    .Builder(url: URL(string: "https://example.com/media.mp4")!)
    .drmConfiguration(drmConfiguration)
    .build()
```

<div align="right">
참고: <a href="../../class/media-item-builder/home.md">MediaItem.Builder</a>
</div>
