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
EventListener는 이벤트 처리를 위한 인터페이스로, 위와 같은 함수를 제공합니다. 각각 함수에 대한 자세한 설명은 [이벤트 핸들러](../../class/event-handlers/home.md)를, 사용 방법은 [addEventListener](../media-player/details.md#addeventlistener)를 참고하시면 됩니다. 단, Player에 이미 존재하는 이벤트 리스너일 경우에는, 안드로이드 SDK는 이벤트 핸들러만 제공합니다.

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
