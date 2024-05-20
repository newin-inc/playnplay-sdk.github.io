# EventListener

```swift
protocol EventListener : AnyObject {

    func onCueChange(textCues: [TextTrack.Cue])
    func onDurationChange(duration: Duration)
    func onEmptied()
    func onEnded()
    func onError(error: Error)
    func onLoadedData()
    func onLoadStart()
    func onMediaItemTransition(item: MediaItem?)
    func onPause()
    func onPictureInPictureActiveChange(active: Bool)
    func onPictureInPicturePossibleChange(possible: Bool)
    func onPictureInPictureDidStart()
    func onPictureInPictureDidStop()
    func onPictureInPictureWillStart()
    func onPictureInPictureWillStop()
    func onPlay()
    func onPlaybackFinish(mediaItem: MediaItem, position: Duration, duration: Duration?)
    func onPlaybackStateChange(state: MediaPlayer.PlaybackState)
    func onPlaying()
    func onPositionDiscontinuity(oldPosition: Duration, newPosition: Duration)
    func onProgress()
    func onRateChange(rate: Float)
    func onRepeatRangeChange(range: MediaPlayer.RepeatRange?)
    func onRepeatModeChange(mode: MediaPlayer.RepeatMode)
    func onScalingModeChange(mode: MediaPlayer.ScalingMode)
    func onSeeked()
    func onSeeking()
    func onTimeUpdate(position: Duration)
    func onVideoSizeChange(size: CGSize)
    func onVolumeChange(volume: Float, muted: Bool)
    func onWaiting()
}
```

EventListener는 이벤트 처리를 위한 프로토콜로, 위와 같은 메서드를 제공합니다. 각각 메서드에 대한 설명은 [메서드](./details.md)를, 사용 방법은 [addEventListener(_)](../../class/media-player/details.md#addeventlistener_)를 참고하시면 됩니다. 이밴트 리스너를 추가한 후, 해당 이벤트 리스너가 더 이상 필요 없을 때는 반드시 [removeEventListener(_)](../../class/media-player/details.md#removeeventlistener_) 메서드를 사용해서 제거하세요.<br>
이벤트 리스너를 대신하여 사용 방법에 따라서 [이벤트 핸들러](../../enum/event-handlers/home.md)를 사용하여 이벤트 처리를 할 수 있습니다. 이벤트 핸들러에서 사용되는 파라미터는 이벤트 리스너의 파라미터와 동일합니다. 이벤트 핸들러의 사용 방법은 [addEventHandler(_)](../../class/media-player/details.md#addeventhandler_)와 [케이스](../../enum/event-handlers/details.md)를 참고하시면 됩니다.

<details>
<summary>
    <a href="./details.md#메서드">메서드</a>
</summary>

- [onCueChange(textCues:)](./details.md#oncuechangetextcues)

- [onDurationChange(duration:)](./details.md#ondurationchangeduration)

- [onEmptied()](./details.md#onemptied)

- [onEnded()](./details.md#onended)

- [onError(error:)](./details.md#onerrorerror)

- [onLoadedData()](./details.md#onloadeddata)

- [onLoadStart](./details.md#onloadstart)

- [onMediaItemTransition(item:)](./details.md#onmediaitemtransitionitem)

- [onPause()](./details.md#onpause)

- [onPictureInPictureActiveChange(active:)](./details.md#onpictureinpictureactivechangeactive)

- [onPictureInPicturePossibleChange(possible:)](./details.md#onpictureinpicturepossiblechangepossible)

- [onPictureInPictureDidStart()](./details.md#onpictureinpicturedidstart)

- [onPictureInPictureDidStop()](./details.md#onpictureinpicturedidstop)

- [onPictureInPictureWillStart()](./details.md#onpictureinpicturewillstart)

- [onPictureInPictureWillStop()](./details.md#onpictureinpicturewillstop)

- [onPlay()](./details.md#onplay)

- [onPlaybackFinish(mediaItem:position:duration:)](./details.md#onplaybackfinishmediaitempositionduration)

- [onPlaybackStateChange(state:)](./details.md#onplaybackstatechangestate)

- [onPlaying()](./details.md#onplaying)

- [onPositionDiscontinuity(oldPosition:newPosition:)](./details.md#onpositiondiscontinuityoldpositionnewposition)

- [onProgress()](./details.md#onprogress)

- [onRateChange(rate:)](./details.md#onratechangerate)

- [onRepeatModeChange(mode:)](./details.md#onrepeatmodechangemode)

- [onRepeatRangeChange(range:)](./details.md#onrepeatrangechangerange)

- [onScalingModeChange(mode:)](./details.md#onscalingmodechangemode)

- [onSeeked()](./details.md#onseeked)

- [onSeeking()](./details.md#onseeking)

- [onTimeUpdate(position:)](./details.md#ontimeupdateposition)

- [onVideoSizeChange(size:)](./details.md#onvideosizechangesize)

- [onVolumeChange(volume:muted:)](./details.md#onvolumechangevolumemuted)

- [onWaiting()](./details.md#onwaiting)

</details>
<br>
