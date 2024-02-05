# EventHandler
EventHandler는 [이벤트 핸들러](../event_handlers/home.md)에서 사용하기 위한 목록입니다. 항목 별로 자세한 설명은 [이벤트 핸들러](../event_handlers/home.md)의 설명을 참고하시기 바랍니다.


```swift
enum EventHandler {
    case durationChange((_ duration: Duration) -> Void)
    case emptied(() -> Void)
    case ended(() -> Void)
    case error((_ error: Error) -> Void)
    case loadedData(() -> Void)
    case loadStart(() -> Void)
    case mediaItemTransition((_ mediaItem: MediaItem?) -> Void)
    case pause(() -> Void)
    case pictureInPictureActiveChange((_ active: Bool) -> Void)
    case pictureInPicturePossibleChange((_ possible: Bool) -> Void)
    case pictureInPictureDidStart(() -> Void)
    case pictureInPictureDidStop(() -> Void)
    case pictureInPictureWillStart(() -> Void)
    case pictureInPictureWillStop(() -> Void)
    case play(() -> Void)
    case playbackStateChange((_ state: MediaPlayer.PlaybackState) -> Void)
    case playing(() -> Void)
    case positionDiscontinuity((_ oldPostion: Duration, _ newPosition: Duration) -> Void)
    case progress(() -> Void)
    case rateChange((_ playbackRate: Float) -> Void)
    case repeatModeChange((_ repeatMode: MediaPlayer.RepeatMode) -> Void)
    case scalingModeChange((_ scalingMode: MediaPlayer.ScalingMode) -> Void)
    case seeked(() -> Void)
    case seeking(() -> Void)
    case timeUpdate((_ position: Duration) -> Void)
    case videoSizeChange((_ videoSize: CGSize) -> Void)
    case volumeChange((_ volume: Float, _ muted: Bool) -> Void)
    case waiting(() -> Void)
}
```

<br><br><br><br>

--------
# PlaybackState
MediaPlayer.PlaybackState는 현재 미디어 상태를 나타내는 목록입니다.

```swift
enum PlaybackState {
    case idle
    case ready
    case buffering
    case ended
}
```

|이름|설명|
|:--:|--|
|idle|미디어를 완전히 중지한 상태|
|ready|미디어가 준비된 상태 또는 로드가 완료된 상태|
|buffering|미디어를 읽어오는 상태|
|ended|미디어가 목록의 마지막이며, 마지막 재생 위치에 도달한 상태|

<br><br><br><br>

--------
# RepeatMode
MediaPlayer.RepeatMode는 현재 미디어의 반복 모드 상태를 나타내는 목록입니다.

```swift
enum RepeatMode {
    case none
    case one
    case all
}
```

|이름|설명|
|:--:|--|
|none|반복 모드 꺼진 상태|
|one|하나의 미디어만 반복하는 상태|
|all|전체 반복 모드 상태. 마지막 미디어가 종료되면 맨 처음 미디어로 이동합니다.|

<br><br><br><br>

--------
# ScalingMode
MediaPlayer.ScalingMode는 현재 미디어 화면의 스케일링 상태를 나타내는 목록입니다.

```swift
enum RepeatMode {
    case aspectFit
    case aspectFill
    case fill
}
```

|이름|설명|
|:--:|--|
|aspectFit|화면비를 유지하며 화면에 가려지는 것이 없이 미디어를 보여줄 수 있는 최대 크기 모드|
|aspectFill|화면비를 유지하며, 화면에 빈 틈이 없이 가득 채울 수 있는 모드|
|fill|화면비를 무시하고, 화면에 빈 틈이 없이 가득 채울 수 있는 모드|