# RepeatMode

```swift
extension MediaPlayer {

    public enum RepeatMode {

        case none

        case one

        case all
    }
}
```

|이름|설명|
|:--:|--|
|none|반복 모드 꺼진 상태|
|one|하나의 미디어만 반복하는 상태|
|all|전체 반복 모드 상태. 마지막 미디어가 종료되면 맨 처음 미디어로 이동합니다.|

현재 미디어의 반복 모드 상태를 나타냅니다.
<div align="right">
참고: <a href="../../class/media-player/details.md#repeatmode">repeatMode</a>
</div>

## 사용 예제
```swift
class ComponentListener: EventListener {
    func onRepeatModeChange(mode: MediaPlayer.RepeatMode) {
        switch mode {
        case .none: showNoRepeatIcon()
        case .one: showRepeatOneIcon()
        case .all: showRepeatAllIcon()
        }
    }
}

let componentListener = ComponentListener()

mediaPlayer.addEventListener(componentListener)
```