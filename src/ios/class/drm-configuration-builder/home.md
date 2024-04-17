# DrmConfiguration.Builder

```swift
extension DrmConfiguration {

    public class Builder {

        public init(appId: String, userId: String)

        public func build() -> DrmConfiguration

        public func offlineAccessPeriod(_ offlineAccessPeriod: Duration?) -> DrmConfiguration.Builder

        public func userData(_ userData: [String : Any]) -> DrmConfiguration.Builder
    }
}
```
DRM 구성을 위해 초기 설정을 합니다. 제공받은 앱 ID와 사용자 아이디(User ID)를 입력하면 됩니다. .build()를 호출하여 구성을 완료합니다.

## 생성자

```swift
public init(appId: String, userId: String)
```
|파라미터|타입|설명|필수|
|:--:|:--:|--|:--:|
|appId|String|앱 ID|O|
|userId|String|사용자 ID|O|

<br><br>
## 메서드

### build()

```swift
public func build() -> DrmConfiguration
```
추가로 입력 받은 정보로부터 DRM을 최종 구성합니다.

<br><br>
### offlineAccessPeriod(_)

```swift
public func offlineAccessPeriod(_ offlineAccessPeriod: Duration?) -> DrmConfiguration.Builder
```
<div align="right">
참고: <a href="../../struct/duration/home.md">Duration</a>, 
<a href="../../../agent/home.md#drm">DRM 내 offlineAccessPeriod</a>
</div>
오프라인 재생 기한을 설정합니다.

<br><br>
### userData(_)

```swift
public func userData(_ userData: [String : Any]) -> DrmConfiguration.Builder
```
사용자 데이터(Callback URL에 전달할 데이터)를 추가합니다.

<br><br>
## 사용 예제
```swift
let drmConfiguration = DrmConfiguration
    .Builder(appId: "App 아이디", userId: "사용자 아이디")
    .userData(userData)
    .offlineAccessPeriod(.seconds(86400))
    .build()

let mediaItem = MediaItem
    .Builder(url: URL(string: "https://example.com/media.mp4")!)
    .drmConfiguration(drmConfiguration)
    .build()
```

<div align="right">
참고: <a href="../media-item-builder/home.md">MediaItem.Builder</a>
</div>