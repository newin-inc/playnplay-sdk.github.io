# 메서드

## onDurationChange

```kotlin
fun onDurationChange(duration: Duration)
```
미디어의 길이(duration)가 변경될 때 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/details.md#durationchange">DurationChange</a><br>
참고: <a href="https://developer.android.com/reference/java/time/Duration">java.time.Duration</a>
</div>

\
사용 예제
```kotlin
class ComponentListener: EventListener {
    override fun onDurationChange(duration: Duration) {
        updateTimeBar(duration)
    }
}

val componentListener = ComponentListener()

mediaPlayer.addEventListener(componentListener)
```

<br><br>
## onEmptied

```kotlin
fun onEmptied()
```
미디어가 제거된 시점, 즉, 미디어 주소가 변경되기 직전, 기존에 존재하던 미디어를 비울 때 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/details.md#emptied">Emptied</a>
</div>

\
사용 예제
```kotlin
class ComponentListener: EventListener {
    override fun onEmptied() {
        hideMedia()
    }
}

val componentListener = ComponentListener()

mediaPlayer.addEventListener(componentListener)
```

<br><br>
## onEnded

```kotlin
fun onEnded()
```
재생 목록의 마지막 미디어의 재생이 완료 된 시점에 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/details.md#ended">Ended</a>
</div>

\
사용 예제
```kotlin
class ComponentListener: EventListener {
    override fun onEnded() {
        finish()
    }
}

val componentListener = ComponentListener()

mediaPlayer.addEventListener(componentListener)
```

<br><br>
## onError

```kotlin
fun onError(error: PlaybackException)
```
에러가 발생하여 리소스를 로드할 수 없을 때 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/details.md#error">Error</a><br>
참고: <a href="https://developer.android.com/reference/kotlin/androidx/media3/common/PlaybackException">PlaybackException</a>
</div>

\
사용 예제
```kotlin
class ComponentListener: EventListener {
    override fun onError(error: PlaybackException) {
        handleError(it.errorCode)
    }
}

val componentListener = ComponentListener()

mediaPlayer.addEventListener(componentListener)
```

<br><br>
## onLoadedData

```kotlin
fun onLoadedData()
```
미디어 트랙이 로딩되었을 때 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/details.md#loadeddata">LoadedData</a>
</div>

\
사용 예제
```kotlin
class ComponentListener: EventListener {
    override fun onLoadedData() {
        val audioTracks = mediaPlayer.audioTracks	// 오디오 트랙들
    }
}

val componentListener = ComponentListener()

mediaPlayer.addEventListener(componentListener)
```

<br><br>
## onLoadedMetadata

```kotlin
fun onLoadedMetadata()
```
메타데이터가 로딩되었을 때 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/details.md#loadedmetadata">LoadedMetadata</a>
</div>

\
사용 예제
```kotlin
class ComponentListener: EventListener {
    override fun onLoadedMetadata() {
        val title = mediaPlayer.mediaMetadata.title // 미디어 타이틀
    }
}

val componentListener = ComponentListener()

mediaPlayer.addEventListener(componentListener)
```

<br><br>
## onLoadStart

```kotlin
fun onLoadStart()
```
미디어 리소스를 로드하기 시작할 때 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/details.md#loadstart">LoadStart</a>
</div>

\
사용 예제
```kotlin
class ComponentListener: EventListener {
    override fun onLoadStart() {
        displayScreen()
    }
}

val componentListener = ComponentListener()

mediaPlayer.addEventListener(componentListener)
```

<br><br>
## onPause

```kotlin
fun onPause()
```
미디어 일시 정지를 요청한 후, 일시 정지 상태로 진입하는 시점에 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/details.md#pause">Pause</a>
</div>

\
사용 예제
```kotlin
class ComponentListener: EventListener {
    override fun onPause() {
        displayPlayIcon()
    }
}

val componentListener = ComponentListener()

mediaPlayer.addEventListener(componentListener)
```

<br><br>
## onPlay

```kotlin
fun onPlay()
```
미디어가 일시 정지 상태에서 재생 상태로 변경되는 시점에 실행합니다. 단, 재생 위치가 변경될 때는 포함하지 않습니다. 자세한 설명은 [EventHandler.Play](../../class/event-handlers/details.md#play)를 참고하세요.

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/details.md#play">Play</a>
</div>

\
사용 예제
```kotlin
class ComponentListener: EventListener {
    override fun onPlay() {
        displayPauseIcon()
    }
}

val componentListener = ComponentListener()

mediaPlayer.addEventListener(componentListener)
```

<br><br>
## onPlaybackFinish

```kotlin
fun onPlaybackFinish(mediaItem: MediaItem, position: Duration, duration: Duration?)
```
미디어가 종료되는 시점에 실행합니다. 마지막 재생 위치(position) 및 미디어의 길이(duration) 값을 사용할 수 있습니다. 자세한 설명은 [EventHandler.PlaybackFinish](../../class/event-handlers/details.md#playbackfinish)를 참고하세요.

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/details.md#playbackfinish">PlayabackFinish</a>
</div>

<br><br>
## onPlaying

```kotlin
fun onPlaying()
```
재생 위치가 변경되어 재생 되는 것을 포함하여, 미디어가 일시 정지 상태에서 재생 상태로 변경되는 시점에 실행합니다. 자세한 설명은 [EventHandler.Playing](../../class/event-handlers/details.md#playing)를 참고하세요.

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/details.md#playing">Playing</a>
</div>

\
사용 예제
```kotlin
class ComponentListener: EventListener {
    override fun onPlaying() {
        removeBufferingText()	// 버퍼링 텍스트 제거
    }
    override fun onPlay() {
        displayPauseIcon()		// 아이콘 변경
    }
}

val componentListener = ComponentListener()

mediaPlayer.addEventListener(componentListener)

mediaPlayer.play()  // 아이콘을 변경 한 후, 버퍼링 텍스트를 제거합니다.
```

<br><br>
## onPositionDiscontinuity

```kotlin
fun onPositionDiscontinuity(
    player: MediaPlayer,
    oldPosition: Duration,
    newPosition: Duration
)
```
재생 위치가 변경되는 시점에 실행합니다.

주의: Player.Listener의 [onPositionDiscontinuity()](https://developer.android.com/reference/androidx/media3/common/Player.Listener#onPositionDiscontinuity(androidx.media3.common.Player.PositionInfo,androidx.media3.common.Player.PositionInfo,int))는 이름만 같고, 사용 방법이 다릅니다.

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/details.md#positiondiscontinuity">PositionDiscontinuity</a><br>
참고: <a href="../../interface/media-player/home.md">MediaPlayer</a><br>
참고: <a href="https://developer.android.com/reference/java/time/Duration">java.time.Duration</a>
</div>

\
사용 예제
```kotlin
class ComponentListener: EventListener {
    override fun onPositionDiscontinuity(
        player: MediaPlayer,
        oldPosition: Duration,
        newPosition: Duration
    ) {
        mediaPlayer.updateStatusText("${oldPosition.seconds} -> ${newPosition.seconds}")   // 26s -> 250s	
    }
}

val componentListener = ComponentListener()

mediaPlayer.addEventListener(componentListener)
```

<br><br>
## onProgress

```kotlin
fun onProgress()
```
플레이어가 소스를 읽어오기 시작할 때에 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/details.md#progress">Progress</a>
</div>

\
사용 예제
```kotlin
class ComponentListener: EventListener {
    override fun onProgress() {
        removeWaitText()
    }
}

val componentListener = ComponentListener()

mediaPlayer.addEventListener(componentListener)
```

<br><br>
## onRateChange

```kotlin
fun onRateChange(playbackRate: Float)
```
재생 속도가 변경되는 시점에 실행합니다.
주의: 재생 속도는 그대로이지만, preservesPitch의 값이 변경될 때도 실행 됨

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/details.md#ratechange">RateChange</a><br>
참고: <a href="../../interface/media-player/details.md#playbackrate">playbackRate</a>
</div>

\
사용 예제
```kotlin
class ComponentListener: EventListener {
    override fun onRateChange(playbackRate: Float) {
        val currentPlaybackRate = it	// 예: 2.0f
    }
}

val componentListener = ComponentListener()

mediaPlayer.addEventListener(componentListener)
```

<br><br>
## onRepeatRangeChange

```kotlin
fun onRepeatRangeChange(repeatRange: MediaPlayer.RepeatRange?)
```
구간 반복 모드가 시작되거나 종료되었을 때, 그리고 구간 반복의 시작 위치 또는 종료 위치가 바뀌었을 때 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/details.md#repeatrangechange">RepeatRangeChange</a><br>
참고: <a href="../../class/media-player-repeat-range/home.md">MediaPlayer.RepeatRange</a>
</div>

\
사용 예제
```kotlin
class ComponentListener: EventListener {
    override fun onRepeatRangeChange(repeatRange: MediaPlayer.RepeatRange?) {
        val repeatA = repeatRange?.start
        val repeatB = repeatRange?.end
    }
}

val componentListener = ComponentListener()

mediaPlayer.addEventListener(componentListener)
```

<br><br>
## onResizeModeChange

```kotlin
fun onResizeModeChange(mode: Int)
```
화면 크기 조절을 하는 시점에 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/details.md#resizemodechange">ResizeModeChange</a><br>
참고: <a href="https://developer.android.com/reference/androidx/media3/ui/AspectRatioFrameLayout.ResizeMode">AspectRatioFrameLayout.ResizeMode</a>
</div>

\
사용 예제
```kotlin
class ComponentListener: EventListener {
    override fun onResizeModeChange(mode: Int) {
        val currentResizeMode = it
    }
}

val componentListener = ComponentListener()

mediaPlayer.addEventListener(componentListener)
```

<br><br>
## onSeeked

```kotlin
fun onSeeked()
```
seek 작업이 완료된 시점, 또는 재생 위치가 변경되는 시점, 또는 seeking 값이 false로 변경되는 시점에 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/details.md#seeked">Seeked</a>
</div>

\
사용 예제
```kotlin
class ComponentListener: EventListener {
    override fun onSeeked() {
        assert(mediaPlayer.seeking, false)
    }
}

val componentListener = ComponentListener()

mediaPlayer.addEventListener(componentListener)
```

<br><br>
## onSeeking

```kotlin
fun onSeeking()
```
seek 작업이 시작되는 시점, 또는 seeking 값이 false에서 true로 변경되는 시점에 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/details.md#seeking">Seeking</a>
</div>

\
사용 예제
```kotlin
class ComponentListener: EventListener {
    override fun onSeeking() {
        assert(mediaPlayer.seeking, true)
    }
}

val componentListener = ComponentListener()

mediaPlayer.addEventListener(componentListener)
```

<br><br>
## onSuspend

```kotlin
fun onSuspend()
```
미디어 로드가 중지된 시점에 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/details.md#suspend">Suspend</a>
</div>

\
사용 예제
```kotlin
class ComponentListener: EventListener {
    override fun onSuspend() {
        displayWaitText()
    }
}

val componentListener = ComponentListener()

mediaPlayer.addEventListener(componentListener)
```

<br><br>
## onTimeUpdate

```kotlin
fun onTimeUpdate(position: Duration)
```
[currentTime](../../interface/media-player/details.md#currenttime)이 변경되는 시점에 실행합니다. 즉, 미디어가 재생이 되는 동안 수행하려는 작업을 이곳에 구현하시면 됩니다.

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/details.md#timeupdate">TimeUpdate</a><br>
참고: <a href="https://developer.android.com/reference/java/time/Duration">java.time.Duration</a>
</div>

\
사용 예제
```kotlin
class ComponentListener: EventListener {
    override fun onTimeUpdate(position: Duration) {
        updateTimeBar(position)
        updateTimeLeft(position)
    }
}

val componentListener = ComponentListener()

mediaPlayer.addEventListener(componentListener)
```

<br><br>
## onVolumeChange

```kotlin
fun onVolumeChange(volume: Float, muted: Boolean)
```
볼륨이 변경되는 시점에 실행합니다. 

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/details.md#volumechange">VolumeChange</a><br>
참고: <a href="../../interface/media-player/details.md#devicevolume">deviceVolume</a>
</div>

\
사용 예제
```kotlin
class ComponentListener: EventListener {
    override fun onVolumeChange(volume: Float, muted: Boolean) {
        updateVolumeView(volume, muted)
    }
}

val componentListener = ComponentListener()

mediaPlayer.addEventListener(componentListener)
```

<br><br>
## onWaiting

```kotlin
fun onWaiting()
```
일시적인 버퍼 부족, 즉 데이터가 충분히 로딩되지 못하거나 데이터가 없어서 재생이 정지된 시점에 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/details.md#waiting">Waiting</a>
</div>

\
사용 예제
```kotlin
class ComponentListener: EventListener {
    override fun onWaiting() {
        displayAlert("Try it again, later!")
    }
}

val componentListener = ComponentListener()

mediaPlayer.addEventListener(componentListener)
```
