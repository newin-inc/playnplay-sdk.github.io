# 이벤트 핸들러

```kotlin
import com.newin.nplayer.sdk.EventHandler
```

```kotlin
sealed class EventHandler {

    data class DurationChange(val listener: (Duration) -> Unit) : EventHandler()

    data class Emptied(val listener: () -> Unit) : EventHandler()

    data class Ended(val listener: () -> Unit) : EventHandler()

    data class Error(val listener: (PlaybackException) -> Unit) : EventHandler()

    data class LoadedData(val listener: () -> Unit) : EventHandler()

    data class LoadedMetadata(val listener: () -> Unit) : EventHandler()

    data class LoadStart(val listener: () -> Unit) : EventHandler()

    data class MediaItemTransition(val listener: (MediaItem?, Int) -> Unit) : EventHandler()

    data class Pause(val listener: () -> Unit) : EventHandler()

    data class Play(val listener: () -> Unit) : EventHandler()

    data class PlaybackFinish(val listener: (MediaItem, Duration, Duration?) -> Unit) : EventHandler()

    data class PlaybackStateChange(val listener: (@Player.State Int) -> Unit) : EventHandler()

    data class Playing(val listener: () -> Unit) : EventHandler()

    data class PositionDiscontinuity(val listener: (MediaPlayer, Duration, Duration) -> Unit) : EventHandler()

    data class Progress(val listener: () -> Unit) : EventHandler()

    data class RateChange(val listener: (Float) -> Unit) : EventHandler()

    data class RepeatModeChange(val listener: (@Player.RepeatMode Int) -> Unit) : EventHandler()

    data class RepeatRangeChange(val listener: (MediaPlayer.RepeatRange?) -> Unit) : EventHandler()

    data class ResizeModeChange(val listener: (@ResizeMode Int) -> Unit) : EventHandler()

    data class Seeked(val listener: () -> Unit) : EventHandler()

    data class Seeking(val listener: () -> Unit) : EventHandler()

    data class Suspend(val listener: () -> Unit) : EventHandler()

    data class TimeUpdate(val listener: (Duration) -> Unit) : EventHandler()

    data class VideoSizeChange(val listener: (VideoSize) -> Unit) : EventHandler()

    data class VolumeChange(val listener: (Float, Boolean) -> Unit) : EventHandler()

    data class Waiting(val listener: () -> Unit) : EventHandler()

}

```

이벤트 핸들러의 종류와 사용 방법에 대한 설명입니다.
사용 방법은 [addEventHandler](../../interface/media-player/details.md#addeventhandler)를 참고하시면 됩니다.
이벤트 핸들러 대신 사용 방법에 따라서 [이벤트 리스너](../../interface/event-listeners/home.md)를 사용하여 이벤트 처리를 할 수 있습니다. 이벤트 리스너에서 사용되는 파라미터는 이벤트 핸들러의 파라미터와 동일합니다. 이벤트 리스너의 사용 방법은 [addEventListener](../../interface/media-player/details.md#addeventlistener)를 참고하시면 됩니다.

<details>
<summary>
    <a href="./details.md#클래스">클래스</a>
</summary>

- [data class DurationChange(val listener: (Duration) -> Unit) : EventHandler()](./details.md#durationchange)

- [data class Emptied(val listener: () -> Unit) : EventHandler()](./details.md#emptied)

- [data class Ended(val listener: () -> Unit) : EventHandler()](./details.md#ended)

- [data class Error(val listener: (PlaybackException) -> Unit) : EventHandler()](./details.md#error)

- [data class LoadedData(val listener: () -> Unit) : EventHandler()](./details.md#loadeddata)

- [data class LoadedMetadata(val listener: () -> Unit) : EventHandler()](./details.md#loadedmetadata)

- [data class LoadStart(val listener: () -> Unit) : EventHandler()](./details.md#loadstart)

- [data class MediaItemTransition(val listener: (MediaItem?, @Player.MediaItemTransitionReason Int) -> Unit) : EventHandler()](./details.md#mediaitemtransition)

- [data class Pause(val listener: () -> Unit) : EventHandler()](./details.md#pause)

- [data class Play(val listener: () -> Unit) : EventHandler()](./details.md#play)

- [data class PlaybackFinish(val listener: (MediaItem, Duration, Duration?) -> Unit) : EventHandler()](./details.md#playbackfinish)

- [data class PlaybackStateChange(val listener: (@Player.State Int) -> Unit) : EventHandler()](./details.md#playbackstatechange)

- [data class Playing(val listener: () -> Unit) : EventHandler()](./details.md#playing)

- [data class PositionDiscontinuity(val listener: (MediaPlayer, Duration, Duration) -> Unit) : EventHandler()](./details.md#positiondiscontinuity)

- [data class Progress(val listener: () -> Unit) : EventHandler()](./details.md#progress)

- [data class RateChange(val listener: (Float) -> Unit) : EventHandler()](./details.md#ratechange)

- [data class RepeatModeChange(val listener: (@Player.RepeatMode Int) -> Unit) : EventHandler()](./details.md#repeatmodechange)

- [data class RepeatRangeChange(val listener: (MediaPlayer.RepeatRange?) -> Unit) : EventHandler()](./details.md#repeatrangechange)

- [data class ResizeModeChange(val listener: (@ResizeMode Int) -> Unit) : EventHandler()](./details.md#resizemodechange)

- [data class Seeked(val listener: () -> Unit) : EventHandler()](./details.md#seeked)

- [data class Seeking(val listener: () -> Unit) : EventHandler()](./details.md#seeking)

- [data class Suspend(val listener: () -> Unit) : EventHandler()](./details.md#suspend)

- [data class TimeUpdate(val listener: (Duration) -> Unit) : EventHandler()](./details.md#timeupdate)

- [data class VideoSizeChange(val listener: (VideoSize) -> Unit) : EventHandler()](./details.md#videosizechange)

- [data class VolumeChange(val listener: (Float, Boolean) -> Unit) : EventHandler()](./details.md#volumechange)

- [data class Waiting(val listener: () -> Unit) : EventHandler()](./details.md#waiting)

</details>
<br>
