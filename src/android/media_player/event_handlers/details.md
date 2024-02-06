# DurationChange

EventHandler.DurationChange는 미디어의 길이(duration)가 변경되었을 때를 처리하기 위한 핸들러입니다.\

<div align="right">
이벤트 리스너: <a href="../event_listeners/details.md#ondurationchange">onDurationChange()</a><br>
참고: <a href="https://kotlinlang.org/api/latest/jvm/stdlib/kotlin.time/-duration/">kotlin.time.Duration</a>
</div>

```kotlin
// (Duration): 미디어의 길이
data class DurationChange(val listener: (Duration) -> Unit)
```

\
사용 예제
```kotlin
mediaPlayer.addEventHandler(EventHandler.DurationChange {
    updateTimeBar(it)
})
```

<br><br><br><br>

--------
# Emptied

EventHandler.Emptied는 미디어가 제거된 시점, 즉, 미디어 주소가 변경되기 직전, 기존에 존재하던 미디어를 비울 때를 처리하기 위한 핸들러입니다.

<div align="right">
이벤트 리스너: <a href="../event_listeners/details.md#onemptied">onEmptied()</a>
</div>

```kotlin
data class Emptied(val listener: () -> Unit)
```

\
사용 예제
```kotlin
mediaPlayer.addEventHandler(EventHandler.Emptied {
    hideMedia()
})
```

<br><br><br><br>

--------
# Ended

EventHandler.Ended는 재생 목록의 마지막 미디어의 재생이 완료 된 시점에 사용하기 위한 핸들러입니다.

<div align="right">
이벤트 리스너: <a href="../event_listeners/details.md#onended">onEnded()</a>
</div>

```kotlin
data class Ended(val listener: () -> Unit)
```

\
사용 예제
```kotlin
mediaPlayer.addEventHandler(EventHandler.Ended {
    finish()
})
```

<br><br><br><br>

--------
# Error

EventHandler.Error는 에러가 발생하여 리소스를 로드할 수 없을 때 사용하기 위한 핸들러입니다.

<div align="right">
이벤트 리스너: <a href="../event_listeners/details.md#onerror">onError()</a><br>
참고: <a href="https://developer.android.com/reference/kotlin/androidx/media3/common/PlaybackException">PlaybackException</a>
</div>

```kotlin
// (PlaybackException): 재생 오류가 발생했을 때 예외
data class Error(val listener: (PlaybackException) -> Unit)
```

\
사용 예제
```kotlin
mediaPlayer.addEventHandler(EventHandler.Error {
    handleError(it.errorCode)
})
```

<br><br><br><br>

--------
# LoadedData

EventHandler.LoadedData는 미디어 트랙이 로딩되었을 때 사용하기 위한 핸들러입니다.
(참고. 해당 이벤트 처리 이전에 LoadedMetadata 이벤트를 처리함)

<div align="right">
이벤트 리스너: <a href="../event_listeners/details.md#onloadeddata">onLoadedData()</a>
</div>

```kotlin
data class LoadedData(val listener: () -> Unit)
```

\
사용 예제
```kotlin
mediaPlayer.addEventHandler(EventHandler.LoadedData {
    val audioTracks = mediaPlayer.audioTracks	// 오디오 트랙들
})
```

<br><br><br><br>

--------
# LoadedMetadata

EventHandler.LoadedMetadata는 메타데이터가 로딩되었을 때 사용하기 위한 핸들러입니다.
(참고. 해당 이벤트 처리 이후 LoadedData 이벤트를 처리함)

<div align="right">
이벤트 리스너: <a href="../event_listeners/details.md#onloadedmetadata">onLoadedMetadata() </a>
</div>

```kotlin
data class LoadedMetadata(val listener: () -> Unit)
```

\
사용 예제
```kotlin
mediaPlayer.addEventHandler(EventHandler.LoadedMetadata {
    val title = mediaPlayer.mediaMetadata.title // 미디어 타이틀
})
```

<br><br><br><br>

--------
# LoadStart

EventHandler.LoadStart는 미디어 리소스를 로드하기 시작할 때 사용하기 위한 핸들러입니다.
<div align="right">
이벤트 리스너: <a href="../event_listeners/details.md#onloadstart">onLoadStart()</a>
</div>

```kotlin
data class LoadStart(val listener: () -> Unit)
```

\
사용 예제
```kotlin
mediaPlayer.addEventHandler(EventHandler.LoadStart {
    displayScreen()
})
```

<br><br><br><br>

--------
# MediaItemTransition

EventHandler.MediaItemTransition는 미디어 아이템이 교체 되는 시점에 사용하기 위한 핸들러입니다. 이벤트 리스너는 [Player.Listener](https://developer.android.com/reference/androidx/media3/common/Player.Listener#onMediaItemTransition(androidx.media3.common.MediaItem,int))에서 제공하는 것을 사용하시면 됩니다.

<div align="right">
참고: <a href="https://developer.android.com/media/media3/exoplayer/media-items">MediaItem</a><br>
참고: <a href="https://developer.android.com/reference/androidx/media3/common/Player.MediaItemTransitionReason">MediaItemTransitionReason</a>
</div>

```kotlin
// (MediaItem): 미디어 아이템
// (@Player.MediaItemTransitionReason Int): 미디어 아이템 교체 이유
data class MediaItemTransition(val listener: (MediaItem?, Int) -> Unit)
```

\
사용 예제
```kotlin
mediaPlayer.addEventHandler(EventHandler.MediaItemTransition {
    mediaItem, _ -> 
        displayItem(mediaItem)
})
```

<br><br><br><br>

--------
# Pause

EventHandler.Pause는 미디어 일시 정지를 요청한 후, 일시 정지 상태로 진입하는 시점에 사용하기 위한 핸들러입니다.
<div align="right">
이벤트 리스너: <a href="../event_listeners/details.md#onpause">onPause()</a><br>
비교: <a href="#play">Play</a>
</div>

```kotlin
data class Pause(val listener: () -> Unit)
```

\
사용 예제
```kotlin
mediaPlayer.addEventHandler(EventHandler.Pause {
    displayPlayIcon()
})
```

<br><br><br><br>

--------
# Play

EventHandler.Play는 미디어가 일시 정지 상태에서 재생 상태로 변경되는 시점에 사용하기 위한 핸들러입니다. 단, 재생 위치가 변경될 때는 포함하지 않습니다.

사용자가 재생 버튼을 클릭하거나 mediaPlayer.play()를 호출하는 등 플레이어에 재생 명령을 내렸을  때 처럼 직접 명령을 했을 때 상황에서 이벤트 처리를 여기서 할 수 있음 
EventHandler.Playing과 다른 점은 seekTo() 등을 통해 재생 위치가 변경될 때의 이벤트는 여기서 처리할 수 없다는 것입니다. 
중요한 점이 하나 더 있는데, Play와 관련된 이벤트 핸들러가 호출되면, Playing 이벤트는 Play 이벤트 이 후에 언제나 호출됩니다.

<div align="right">
이벤트 리스너: <a href="../event_listeners/details.md#onplay">onPlay()</a><br>
비교: <a href="#pause">Pause</a><br>
참고: <a href="#playing">Playing</a>
</div>

```kotlin
data class Play(val listener: () -> Unit)
```

\
사용 예제
```kotlin
mediaPlayer.addEventHandler(EventHandler.Play {
    displayPauseIcon()
})
```

<br><br><br><br>

--------
# PlaybackStateChange

EventHandler.PlaybackStateChange는 미디어 로딩 상태에 따른 처리, 즉, 버퍼링인지 준비가 된 상태인지, 끝이 났는지, 플레이어를 종료하였는지 등의 상황에 따라 처리하기 위한 핸들러입니다. 이벤트 리스너는 [Player.Listener](https://developer.android.com/reference/androidx/media3/common/Player.Listener#onPlaybackStateChanged(int))에서 제공하는 것을 사용하시면 됩니다.

<div align="right">
참고: <a href="https://developer.android.com/reference/androidx/media3/common/Player.State">Player.State</a>
</div>

```kotlin
// (@Player.State Int): 재생 상태
data class PlaybackStateChange(val listener: (Int) -> Unit)
```

\
사용 예제
```kotlin
mediaPlayer.addEventHandler(
    EventHandler.PlaybackStateChange { playbackState in
        when (playbackState) {
            Player.STATE_BUFFERING -> TODO()
            Player.STATE_READY -> TODO()
            Player.STATE_IDLE -> TODO()
            Player.STATE_ENDED -> TODO() 
        }
    }
)
```

<br><br><br><br>

--------
# Playing

EventHandler.Playing은 재생 위치가 변경되어 재생 되는 것을 포함하여, 미디어가 일시 정지 상태에서 재생 상태로 변경되는 시점에 사용하기 위한 핸들러입니다.

즉, seekBack(), seekForward(), seekTo() 등의 호출로 재생 위치가 변경되기 위해, 미디어가 잠시 멈추었다가 다시 재생되는 이벤트를 처리할 수 있다는 것이 EventHandler.Play와 다른 점입니다.
Playing과 관련된 이벤트 핸들러는 Play 이벤트 이후에 호출됩니다.

<div align="right">
이벤트 리스너: <a href="../event_listeners/details.md#onplaying">onPlaying()</a><br>
참고: <a href="#play">Play</a>
</div>

```kotlin
data class Playing(val listener: () -> Unit)
```

사용 예제
```kotlin
mediaPlayer.addEventHandler(EventHandler.Playing {
    removeBufferingText()	// 버퍼링 텍스트 제거
})

mediaPlayer.addEventHandler(EventHandler.Play {
    displayPauseIcon()		// 아이콘 변경
})

mediaPlayer.play() // 아이콘을 변경 한 후, 버퍼링 텍스트를 제거합니다.
```

<br><br><br><br>

--------
# PositionDiscontinuity

EventHandler.PositionDiscontinuity는 재생 위치가 변경되는 시점에 사용하기 위한 핸들러입니다.

<div align="right">
이벤트 리스너: <a href="../event_listeners/details.md#onpositiondiscontinuity">onPositionDiscontinuity()<a><br>
참고: <a href="../../media_player/home.md">MediaPlayer</a><br>
참고: <a href="https://kotlinlang.org/api/latest/jvm/stdlib/kotlin.time/-duration/">kotlin.time.Duration</a>
</div>

```kotlin
// (MediaPlayer): MediaPlayer
// (Duration): 이전 재생 위치
// (Duration): 바뀐 재생 위치
data class PositionDiscontinuity(
    val listener: (MediaPlayer, Duration, Duration) -> Unit
)
```

\
사용 예제
```kotlin
mediaPlayer.addEventHandler(EventHandler.PositionDiscontinuity {
    _mediaPlayer, oldPosition, newPosition ->
        _mediaPlayer.updateStatusText("$oldPosition -> $newPosition")   // 26.7s -> 3m 20s	
})
```

<br><br><br><br>

--------
# Progress

EventHandler.Progress는 플레이어가 소스를 읽어오기 시작할 때에 사용하기 위한 핸들러입니다.

<div align="right">
이벤트 리스너: <a href="../event_listeners/details.md#onprogress">onProgress()</a><br>
비교: <a href="#suspend">Suspend</a>
</div>

```kotlin
data class Progress(val listener: () -> Unit)
```

\
사용 예제
```kotlin
mediaPlayer.addEventHandler(EventHandler.Progress {
    removeWaitText()
})
```

<br><br><br><br>

--------
# RateChange

EventHandler.RateChange는 재생 속도가 변경되는 시점에 사용하기 위한 핸들러입니다.
주의: 재생 속도는 그대로이지만, preservesPitch의 값이 변경될 때도 호출 됨

<div align="right">
이벤트 리스너: <a href="../event_listeners/details.md#onratechange">onRateChange()</a><br>
참고: <a href="../properties/details.md#playbackrate">playbackRate</a>
</div>

```kotlin
// (Float): 재생 속도
data class RateChange(val listener: (Float) -> Unit)
```

\
사용 예제
```kotlin
mediaPlayer.addEventHandler(EventHandler.RateChange {
    val currentPlaybackRate = it	// 예: 2.0f
})
```

<br><br><br><br>

--------
# RepeatModeChange

EventHandler.RepeatModeChange는 반복 모드가 변경되는 시점에 사용하기 위한 핸들러입니다. 이벤트 리스너는 [Player.Listener](https://developer.android.com/reference/androidx/media3/common/Player.Listener#onRepeatModeChanged(int))에서 제공하는 것을 사용하시면 됩니다.

<div align="right">
참고: <a href="https://developer.android.com/reference/kotlin/androidx/media3/common/Player.RepeatMode">Player.RepeatMode</a>
</div>

```kotlin
// (@Player.RepeatMode Int): 반복 모드
data class RepeatModeChange(val listener: (@Player.RepeatMode Int) -> Unit)
```

\
사용 예제
```kotlin
mediaPlayer.addEventHandler(EventHandler.RepeatModeChange {
    showRepeatIcon(it)
})
```

<br><br><br><br>

--------
# RepeatRangeChange

EventHandler.RepeatRangeChange는 구간 반복 모드가 시작되거나 종료되었을 때, 그리고 구간 반복의 시작 위치 또는 종료 위치가 바뀌었을 때를 처리하기 위한 핸들러입니다.

<div align="right">
이벤트 리스너: <a href="../event_listeners/details.md#onrepeatrangechange">onRepeatRangeChange()</a><br>
참고: <a href="../../media_player/etc/details.md#repeatrange">MediaPlayer.RepeatRange</a>
</div>

```kotlin
// (MediaPlayer.RepeatRange): 구간 반복의 구간을 나타내는 데이터 클래스
data class RepeatRangeChange(val listener: (MediaPlayer.RepeatRange?) -> Unit)
```

\
사용 예제
```kotlin
mediaPlayer.addEventHandler(EventHandler.RepeatRangeChange {
    val repeatA = it?.start
    val repeatB = it?.end
})
```

<br><br><br><br>

--------
# ResizeModeChange

EventHandler.ResizeModeChange 화면 크기 조절을 하는 시점에 사용하기 위한 핸들러입니다.

<div align="right">
이벤트 리스너: <a href="../event_listeners/details.md#onresizemodechange">onResizeModeChange</a><br>
참고: <a href="https://developer.android.com/reference/androidx/media3/ui/AspectRatioFrameLayout.ResizeMode">AspectRatioFrameLayout.ResizeMode</a>
</div>

```kotlin
// (@ResizeMode Int): 화면의 크기 상태
data class ResizeModeChange(val listener: (Int) -> Unit)
```

\
사용 예제
```kotlin
mediaPlayer.addEventHandler(EventHandler.ResizeModeChange {
    val currentResizeMode = it
})
```

<br><br><br><br>

--------
# Seeked

EventHandler.Seeked는 seek 작업이 완료된 시점, 또는 재생 위치가 변경되는 시점, 또는 seeking 값이 false로 변경되는 시점에 사용하기 위한 핸들러입니다.

<div align="right">
이벤트 리스너: <a href="../event_listeners/details.md#onseeked">onSeeked()</a><br>
비교: <a href="#seeking">Seeking</a>
</div>

```kotlin
data class Seeked(val listener: () -> Unit)
```

\
사용 예제
```kotlin
mediaPlayer.addEventHandler(EventHandler.Seeked {
    assert(it.seeking, false)
})
```

<br><br><br><br>

--------
# Seeking

EventHandler.Seeking은 seek 작업이 시작되는 시점, 또는 seeking 값이 false에서 true로 변경되는 시점에 사용하기 위한 핸들러입니다.

<div align="right">
이벤트 리스너: <a href="../event_listeners/details.md#onseeking">onSeeking()</a><br>
비교: <a href="#seeked">Seeked</a>
</div>

```kotlin
data class Seeking(val listener: () -> Unit)
```

\
사용 예제
```kotlin
mediaPlayer.addEventHandler(EventHandler.Seeking {
    assert(it.seeking, true)
})
```

<br><br><br><br>

--------
# Suspend

EventHandler.Suspend는 미디어 로드가 중지된 시점에 사용하기 위한 핸들러입니다.

<div align="right">
이벤트 리스너: <a href="../event_listeners/details.md#onsuspend">onSuspend()</a><br>
비교: <a href="#progress">Progress</a>
</div>

```kotlin
data class Suspend(val listener: () -> Unit)
```

\
사용 예제
```kotlin
mediaPlayer.addEventHandler(EventHandler.Suspend {
    displayWaitText()
})
```

<br><br><br><br>

--------
# TimeUpdate

EventHandler.TimeUpdate는 currentTime이 변경되는 시점에 사용하기 위한 핸들러입니다. 즉, 미디어가 재생이 되는 동안 수행하려는 작업을 이곳에 구현하시면 됩니다.

<div align="right">
이벤트 리스너: <a href="../event_listeners/details.md#ontimeupdate">onTimeUpdate()</a><br>
참고: <a href="https://kotlinlang.org/api/latest/jvm/stdlib/kotlin.time/-duration/">kotlin.time.Duration</a>
</div>

```kotlin
// (Duration): 현재 재생 위치
data class TimeUpdate(val listener: (Duration) -> Unit)
```

\
사용 예제
```kotlin
mediaPlayer.addEventHandler(EventHandler.TimeUpdate {
    updateTimeBar(it)
    updateTimeLeft(it)
})
```

<br><br><br><br>

--------
# VideoSizeChange

EventHandler.VideoSizeChange는 영상 크기가 바뀌는 시점에 사용하기 위한 핸들러입니다. 다음 영상으로 이동할 때, 영상 크기가 0x0으로 바뀌었다가 다음 영상의 크기로 바뀌게 되는데, 0x0으로 바뀔 때도 해당 이벤트는 호출됩니다. 즉, 다음 영상으로 이동할 경우, 이 핸들러는 두 번 호출 됩니다. 이벤트 리스너는 [Player.Listener](https://developer.android.com/reference/androidx/media3/common/Player.Listener#onVideoSizeChanged(androidx.media3.common.VideoSize))에서 제공하는 것을 사용하시면 됩니다.

<div align="right">
참고: <a href="https://developer.android.com/reference/androidx/media3/common/VideoSize">VideoSize</a>
</div>

```kotlin
// (VideoSize): 영상 사이즈
data class VideoSizeChange(val listener: (VideoSize) -> Unit)
```

\
사용 예제
```kotlin
mediaPlayer.addEventHandler(EventHandler.VideoSizeChange {
    val sizeText = "${it.width}x${it.height}"	
})
```

--------
# VolumeChange

EventHandler.VolumeChange는 볼륨이 변경되는 시점에 사용하기 위한 핸들러입니다. 무음(muted)의 속성을 바꾸었을 때도 호출됩니다. Player.Listener에서 제공하는 [onVolumeChanged()](https://developer.android.com/reference/androidx/media3/common/Player.Listener#onVolumeChanged(float))와는 함수 이름과 사용하는 파라미터가 다릅니다.

<div align="right">
이벤트 리스너: <a href="../event_listeners/details.md#onvolumechange">onVolumeChange()</a><br>
참고: <a href="../properties/details.md#devicevolume">deviceVolume</a>
</div>

```kotlin
// (Float): 디바이스 음량
// (Boolean): 음소거 여부
data class VolumeChange(val listener: (Float, Boolean) -> Unit)
```

\
사용 예제
```kotlin
mediaPlayer.addEventHandler(EventHandler.VolumeChange {
    volume, muted ->
        updateVolumeView(volume, muted)
})
```

<br><br><br><br>

--------
# Waiting

EventHandler.Waiting은 일시적인 버퍼 부족, 즉 데이터가 충분히 로딩되지 못하거나 데이터가 없어서 재생이 정지된 시점에 사용하기 위한 핸들러입니다.

<div align="right">
이벤트 리스너: <a href="../event_listeners/details.md#onwaiting">onWaiting()</a>
</div>

```kotlin
data class Waiting(val listener: () -> Unit)
```

\
사용 예제
```kotlin
mediaPlayer.addEventHandler(EventHandler.Waiting {
    displayAlert("Try it again, later!")
})
```

