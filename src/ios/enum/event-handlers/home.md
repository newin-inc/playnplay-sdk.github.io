# EventHandler

```swift
public enum EventHandler {

    case durationChange((_ duration: Duration) -> Void)
    case emptied(() -> Void)
    case ended(() -> Void)
    case error((_ error: Error) -> Void)
    case loadedData(() -> Void)
    case loadStart(() -> Void)
    case mediaItemTransition((_ item: MediaItem?) -> Void)
    case pause(() -> Void)
    case pictureInPictureActiveChange((_ active: Bool) -> Void)
    case pictureInPicturePossibleChange((_ possible: Bool) -> Void)
    case pictureInPictureDidStart(() -> Void)
    case pictureInPictureDidStop(() -> Void)
    case pictureInPictureWillStart(() -> Void)
    case pictureInPictureWillStop(() -> Void)
    case play(() -> Void)
    case playbackFinish((_ mediaItem: MediaItem, _ position: Duration, _ duration: Duration?) -> Void)
    case playbackStateChange((_ state: MediaPlayer.PlaybackState) -> Void)
    case playing(() -> Void)
    case positionDiscontinuity((_ oldPosition: Duration, _ newPosition: Duration) -> Void)
    case progress(() -> Void)
    case rateChange((_ rate: Float) -> Void)
    case repeatModeChange((_ mode: MediaPlayer.RepeatMode) -> Void)
    case repeatRangeChange((_ range: MediaPlayer.RepeatRange?) -> Void)
    case scalingModeChange((_ mode: MediaPlayer.ScalingMode) -> Void)
    case seeked(() -> Void)
    case seeking(() -> Void)
    case textCueChange((_ textCues: [TextTrack.Cue]) -> Void)
    case timeUpdate((_ position: Duration) -> Void)
    case videoSizeChange((_ size: CGSize) -> Void)
    case volumeChange((_ volume: Float, _ muted: Bool) -> Void)
    case waiting(() -> Void)
}
```

이벤트 핸들러의 종류와 사용 방법에 대한 설명입니다. 각각 케이스에 대한 설명은 [케이스](./details.md)를, 사용 방법은 [addEventHandler(_)](../../class/media-player/details.md#addeventhandler_)를 참고하시면 됩니다. 이벤트 핸들러를 추가한 후, 해당 이벤트 핸들러가 더 이상 필요 없을 때는 반드시 [removeEventHandler(_)](../../class/media-player/details.md#removeeventhandler_) 메서드를 사용해서 제거하세요.<br>
이벤트 핸들러를 대신하여 사용 방법에 따라서 [이벤트 리스너](../../protocol/event-listeners/home.md)를 사용하여 이벤트 처리를 할 수 있습니다. 이벤트 리스너에서 사용되는 파라미터는 이벤트 핸들러의 파라미터와 동일합니다. 이벤트 리스너의 사용 방법은 [addEventListener(_)](../../class/media-player/details.md#addeventlistener_)와 [메서드](../../protocol/event-listeners/details.md)를 참고하시면 됩니다.

<details>
<summary>
    <a href="./details.md#케이스">케이스</a>
</summary>

- [durationChange](./details.md#durationchange)

- [emptied](./details.md#emptied)

- [ended](./details.md#ended)

- [error](./details.md#error)

- [loadedData](./details.md#loadeddata)

- [loadStart](./details.md#loadstart)

- [mediaItemTransition](./details.md#mediaitemtransition)

- [pause](./details.md#pause)

- [pictureInPictureActiveChange](./details.md#pictureinpictureactivechange)

- [pictureInPicturePossibleChange](./details.md#pictureinpicturepossiblechange)

- [pictureInPictureDidStart](./details.md#pictureinpicturedidstart)

- [pictureInPictureDidStop](./details.md#pictureinpicturedidstop)

- [pictureInPictureWillStart](./details.md#pictureinpicturewillstart)

- [pictureInPictureWillStop](./details.md#pictureinpicturewillstop)

- [play](./details.md#play)

- [playbackFinish](./details.md#playbackfinish)

- [playbackStateChange](./details.md#playbackstatechange)

- [playing](./details.md#playing)

- [positionDiscontinuity](./details.md#positiondiscontinuity)

- [progress](./details.md#progress)

- [rateChange](./details.md#ratechange)

- [repeatModeChange](./details.md#repeatmodechange)

- [repeatRangeChange](./details.md#repeatrangechange)

- [scalingModeChange](./details.md#scalingmodechange)

- [seeked](./details.md#seeked)

- [seeking](./details.md#seeking)

- [textCueChange](./details.md#textcuechange)

- [timeUpdate](./details.md#timeupdate)

- [videoSizeChange](./details.md#videosizechange)

- [volumeChange](./details.md#volumechange)

- [waiting](./details.md#waiting)

</details>
<br>
