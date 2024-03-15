# SubtitleConfiguration.Builder

```swift
extension SubtitleConfiguration {

    public class Builder {

        public init(url: URL)

        public func language(_ language: String?) -> SubtitleConfiguration.Builder

        public func label(_ language: String?) -> SubtitleConfiguration.Builder

        public func mode(_ mode: SubtitleConfiguration.Mode) -> SubtitleConfiguration.Builder

        public func build() -> SubtitleConfiguration
    }
}
```
자막을 추가할 때 사용합니다. URL을 파라미터로 넣어서 설정을 시작하고 필요한 요소를 추가합니다. .build()를 호출하여 구성을 완료합니다.

## 생성자

```swift
public init(url: URL)
```
|파라미터|타입|설명|
|:--:|:--:|:--|
|url|[URL](https://developer.apple.com/documentation/foundation/url)|자막 주소|

URL을 입력받아서 초기 설정을 합니다.

<br><br>
## 메서드

### language(_)
```swift
public func language(_ language: String?) -> SubtitleConfiguration.Builder
```
언어를 설정합니다.

<br><br>
### label(_)
```swift
public func label(_ language: String?) -> SubtitleConfiguration.Builder
```
라벨을 설정합니다.

<br><br>
### func mode(_)
```swift
public func mode(_ mode: SubtitleConfiguration.Mode) -> SubtitleConfiguration.Builder
```
모드를 설정합니다.
<div align="right">
참고: <a href="../../struct/subtitle-configuration/home.md">SubtitleConfiguration.Mode</a>
</div>

<br><br>
### build()
```swift
public func build() -> SubtitleConfiguration
```
입력된 구성 요소를 바탕으로 자막을 구성합니다.

<br><br>
## 사용 예제
```swift
let subtitleConfigurations = [
    SubtitleConfiguration
        .Builder(url: URL(string: "자막주소.vtt")!)
        .language("언어")
        .label("라벨")
        .mode(.autoSelect)
        .build(),
    ...
]

let mediaItem = MediaItem
    .Builder(url: URL(string: "미디어주소.mp3")!)
    .subtitleConfigurations(subtitleConfigurations)
    .build()
```

<div align="right">
참고: <a href="../../class/media-item-builder/home.md">MediaItem.Builder</a>
</div>