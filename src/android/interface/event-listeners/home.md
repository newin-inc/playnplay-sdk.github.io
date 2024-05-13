# interface EventListener

```kotlin
import com.newin.nplayer.sdk.EventListener
```

```kotlin
interface EventListener {

    fun onDurationChange(duration: Duration) {}

    fun onEmptied() {}

    fun onEnded() {}

    fun onError(error: PlaybackException) {}

    fun onLoadedData() {}

    fun onLoadedMetadata() {}

    fun onLoadStart() {}

    fun onPause() {}

    fun onPlay() {}

    fun onPlaybackFinish(mediaItem: MediaItem, position: Duration, duration: Duration?) {}

    fun onPlaying() {}

    fun onPositionDiscontinuity(player: MediaPlayer, oldPosition: Duration, newPosition: Duration) {}

    fun onProgress() {}

    fun onRateChange(playbackRate: Float) {}

    fun onRepeatRangeChange(repeatRange: MediaPlayer.RepeatRange?) {}

    fun onResizeModeChange(mode: @ResizeMode Int) {}

    fun onSeeked() {}

    fun onSeeking() {}

    fun onSuspend() {}

    fun onTimeUpdate(position: Duration) {}

    fun onVolumeChange(volume: Float, muted: Boolean) {}

    fun onWaiting() {}

}
```
EventListener는 이벤트 처리를 위한 인터페이스로, 위와 같은 메서드를 제공합니다. 각각 메서드에 대한 설명은 [메서드](./details.md)를, 사용 방법은 [addEventListener()](../media-player/details.md#addeventlistener)를 참고하시면 됩니다. 이벤트 리스너를 추가한 후, 해당 이벤트 리스너가 더 이상 필요 없을 때는 반드시 [removeEventListener()](../media-player/details.md#removeeventlistener) 메서드를 사용해서 제거하세요.<br>
Player에 이미 존재하는 이벤트 리스너일 경우에는, 안드로이드 SDK는 이벤트 핸들러만 제공합니다.<br>
이벤트 리스너를 대신하여 사용 방법에 따라서 [이벤트 핸들러](../../class/event-handlers/home.md)를 사용하여 이벤트 처리를 할 수 있습니다. 이벤트 핸들러에서 사용되는 파라미터는 이벤트 리스너의 파라미터와 동일합니다. 이벤트 핸들러의 사용 방법은 [addEventHandler()](../media-player/details.md#addeventhandler)와 [데이터 클래스](../../class/event-handlers/details.md)를 참고하시면 됩니다.

<details>
<summary>
    <a href="./details.md#메서드">메서드</a>
</summary>

- [fun onDurationChange(duration: Duration)](./details.md#ondurationchange)

- [fun onEmptied()](./details.md#onemptied)

- [fun onEnded()](./details.md#onended)

- [fun onError(error: PlaybackException)](./details.md#onerror)

- [fun onLoadedData()](./details.md#onloadeddata)

- [fun onLoadedMetadata()](./details.md#onloadedmetadata)

- [fun onLoadStart()](./details.md#onloadstart)

- [fun onPause()](./details.md#onpause)

- [fun onPlay()](./details.md#onplay)

- [fun onPlaybackFinish(mediaItem: MediaItem, position: Duration, duration: Duration?)](./details.md#onplaybackfinish)

- [fun onPlaying()](./details.md#onplaying)

- [fun onPositionDiscontinuity(player: MediaPlayer, oldPosition: Duration, newPosition: Duration)](./details.md#onpositiondiscontinuity)

- [fun onProgress()](./details.md#onprogress)

- [fun onRateChange(playbackRate: Float)](./details.md#onratechange)

- [fun onRepeatRangeChange(repeatRange: MediaPlayer.RepeatRange?)](./details.md#onrepeatrangechange)

- [fun onResizeModeChange(mode: Int)](./details.md#onresizemodechange)

- [fun onSeeked()](./details.md#onseeked)

- [fun onSeeking()](./details.md#onseeking)

- [fun onSuspend()](./details.md#onsuspend)

- [fun onTimeUpdate(position: Duration)](./details.md#ontimeupdate)

- [fun onVolumeChange(volume: Float, muted: Boolean)](./details.md#onvolumechange)

- [fun onWaiting()](./details.md#onwaiting)

</details>
<br>
