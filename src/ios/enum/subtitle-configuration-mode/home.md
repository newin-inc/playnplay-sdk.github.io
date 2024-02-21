# SubtitleConfiguration.Mode

```swift
public struct SubtitleConfiguration {

    public enum Mode : String {

        case autoSelect

        case showing

        case hidden
    }
}
```

|이름|설명|
|:--:|--|
|autoSelect|화면에 자막을 하나만 출력할 때<br>[autoSelect](#autoselect) 참고|
|showing|화면에 자막을 여러개 출력할 때<br>[showing](#showing) 참고|
|hidden|화면에서 자막을 제외할 때<br>[hidden](#hidden) 참고|

현재 자막의 상태를 나타냅니다.

## autoSelect
```swift
case autoSelect
```
자막들이 모두 .hidden이거나(.showing이 없을 경우), .autoSelect로 설정된 자막 중에서 목록에서 가장 앞에 있는 자막이 선택됩니다.
만약 다른 아이템 중 하나라도 .showing으로 설정되어 있으면, .autoSelect로 설정되어 있더라도 선택되지 않습니다.

## showing
```swift
case showing
```
해당 설정 값을 가진 자막들을 선택됩니다. 두 개 이상의 자막도 선택하여 출력가능합니다.

## hidden
```swift
case hidden
```
해당 설정 값을 가진 자막들을 제외합니다. 즉, 화면에 출력하지 않습니다.


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