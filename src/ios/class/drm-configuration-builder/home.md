# DrmConfiguration.Builder

```swift
extension DrmConfiguration {

    public class Builder {

        public init(appId: String, userId: String)

        public func userData(_ userData: [String : Any]) -> DrmConfiguration.Builder

        public func build() -> DrmConfiguration
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

## 메서드

### userData(_)

```swift
public func userData(_ userData: [String : Any]) -> DrmConfiguration.Builder
```
유저 데이터를 추가합니다.

### build()

```swift
public func build() -> DrmConfiguration
```
추가로 입력 받은 정보로부터 DRM을 최종 구성합니다.

## 사용 예제
```swift
let drmConfiguration = DrmConfiguration
    .Builder(appId: "App 아이디", userId: "사용자 아이디")
    .userData(userData)
    .build()

let mediaItem = MediaItem
    .Builder(url: URL(string: "미디어주소.mp3")!)
    .drmConfiguration(drmConfiguration)
    .build()
```

<div align="right">
참고: <a href="../media-item-builder/home.md">MediaItem.Builder</a>
</div>