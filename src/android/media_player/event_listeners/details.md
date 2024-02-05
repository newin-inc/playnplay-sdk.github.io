# onDurationChange()

onDurationChange()
<div align="right">
이벤트 핸들러: <a href="../event_handlers/details.md#durationchange">DurationChange</a>
</div>

```kotlin
fun onDurationChange(duration: Duration)
```

<br><br><br><br>

--------
# onEmptied()

<div align="right">
이벤트 핸들러: <a href="../event_handlers/details.md#emptied">Emptied</a>
</div>

```kotlin
fun onEmptied()
```

<br><br><br><br>

--------
# onEnded()

<div align="right">
이벤트 핸들러: <a href="../event_handlers/details.md#ended">Ended</a>
</div>

```kotlin
fun onEnded()
```

<br><br><br><br>

--------
# onError()

<div align="right">
이벤트 핸들러: <a href="../event_handlers/details.md#error">Error</a>
</div>

```kotlin
fun onError(error: PlaybackException)
```

<br><br><br><br>

--------
# onLoadedData()

<div align="right">
이벤트 핸들러: <a href="../event_handlers/details.md#loadeddata">LoadedData</a>
</div>

```kotlin
fun onLoadedData()
```

<br><br><br><br>

--------
# onLoadedMetadata()

<div align="right">
이벤트 핸들러: <a href="../event_handlers/details.md#loadedmetadata">LoadedMetadata</a>
</div>

```kotlin
fun onLoadedMetadata()
```

<br><br><br><br>

--------
# onLoadStart()

<div align="right">
이벤트 핸들러: <a href="../event_handlers/details.md#loadstart">LoadStart</a>
</div>

```kotlin
fun onLoadStart()
```

<br><br><br><br>

--------
# onPause()

<div align="right">
이벤트 핸들러: <a href="../event_handlers/details.md#pause">Pause</a>
</div>

```kotlin
fun onPause()
```

<br><br><br><br>

--------
# onPlay()

<div align="right">
이벤트 핸들러: <a href="../event_handlers/details.md#play">Play</a>
</div>

```kotlin
fun onPlay()
```

<br><br><br><br>

--------
# onPlaying()

<div align="right">
이벤트 핸들러: <a href="../event_handlers/details.md#playing">Playing</a>
</div>

```kotlin
fun onPlaying()
```

<br><br><br><br>

--------
# onPositionDiscontinuity()

주의: Player.Listener의 [onPositionDiscontinuity()](https://developer.android.com/reference/androidx/media3/common/Player.Listener#onPositionDiscontinuity(androidx.media3.common.Player.PositionInfo,androidx.media3.common.Player.PositionInfo,int))는 이름만 같고, 사용 방법이 다릅니다.

<div align="right">
이벤트 핸들러: <a href="../event_handlers/details.md#positiondiscontinuity">PositionDiscontinuity</a>
</div>

```kotlin
fun onPositionDiscontinuity(
    player: MediaPlayer,
    oldPosition: Duration,
    newPosition: Duration
)
```

<br><br><br><br>

--------
# onProgress()

<div align="right">
이벤트 핸들러: <a href="../event_handlers/details.md#progress">Progress</a>
</div>

```kotlin
fun onProgress()
```

<br><br><br><br>

--------
# onRateChange()

<div align="right">
이벤트 핸들러: <a href="../event_handlers/details.md#ratechange">RateChange</a>
</div>

```kotlin
fun onRateChange(playbackRate: Float)
```

<br><br><br><br>

--------
# onRepeatRangeChange()

<div align="right">
이벤트 핸들러: <a href="../event_handlers/details.md#repeatrangechange">RepeatRangeChange</a>
</div>

```kotlin
fun onRepeatRangeChange(repeatRange: MediaPlayer.RepeatRange?)
```

<br><br><br><br>

--------
# onResizeModeChange()

<div align="right">
이벤트 핸들러: <a href="../event_handlers/details.md#resizemodechange">ResizeModeChange</a>
</div>

```kotlin
fun onResizeModeChange(mode: Int)
```

<br><br><br><br>

--------
# onSeeked()

<div align="right">
이벤트 핸들러: <a href="../event_handlers/details.md#seeked">Seeked</a>
</div>

```kotlin
fun onSeeked()
```

<br><br><br><br>

--------
# onSeeking()

<div align="right">
이벤트 핸들러: <a href="../event_handlers/details.md#seeking">Seeking</a>
</div>

```kotlin
fun onSeeking()
```

<br><br><br><br>

--------
# onSuspend()

<div align="right">
이벤트 핸들러: <a href="../event_handlers/details.md#suspend">Suspend</a>
</div>

```kotlin
fun onSuspend()
```

<br><br><br><br>

--------
# onTimeUpdate()

<div align="right">
이벤트 핸들러: <a href="../event_handlers/details.md#timeupdate">TimeUpdate</a>
</div>

```kotlin
fun onTimeUpdate(position: Duration)
```

<br><br><br><br>

--------
# onVolumeChange()

<div align="right">
이벤트 핸들러: <a href="../event_handlers/details.md#volumechange">VolumeChange</a>
</div>

```kotlin
fun dispatchVolumeChange(volume: Float, muted: Boolean)
```

<br><br><br><br>

--------
# onWaiting()

<div align="right">
이벤트 핸들러: <a href="../event_handlers/details.md#waiting">Waiting</a>
</div>

```kotlin
fun onWaiting()
```
