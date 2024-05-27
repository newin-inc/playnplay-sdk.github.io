# 이벤트 핸들러

```kotlin
import com.newin.nplayer.sdk.EventHandler
```

```kotlin
sealed class EventHandler
```

이벤트 핸들러의 종류와 사용 방법에 대한 설명입니다. 각각 데이터 클래스에 대한 설명은 [클래스](#클래스)를, 사용 방법은 [addEventHandler()](../../interface/media-player/home.md#addeventhandler)를 참고하시면 됩니다. 이벤트 핸들러를 추가한 후, 해당 이벤트 핸들러가 더 이상 필요 없을 때는 반드시 [removeEventHandler()](../../interface/media-player/home.md#removeeventhandler) 메서드를 사용해서 제거하세요.<br>
이벤트 핸들러를 대신하여 사용 방법에 따라서 [이벤트 리스너](../../interface/event-listeners/home.md)를 사용하여 이벤트 처리를 할 수 있습니다. 이벤트 리스너에서 사용되는 파라미터는 이벤트 핸들러의 파라미터와 동일합니다. 이벤트 리스너의 사용 방법은 [addEventListener()](../../interface/media-player/home.md#addeventlistener)와 [메서드](../../interface/event-listeners/home.md#메서드)를 참고하시면 됩니다. 

<br>

# 클래스

## DurationChange

```kotlin
data class DurationChange(val listener: (Duration) -> Unit) : EventHandler()
```

| 파라미터 타입 | 설명 |
|:--:|:--:|
|[java.time.Duration](https://developer.android.com/reference/java/time/Duration)|미디어 길이|

미디어의 길이(duration)가 변경되었을 때를 처리하기 위한 핸들러입니다.

<div align="right">
이벤트 리스너: <a href="../../interface/event-listeners/home.md#ondurationchange">onDurationChange()</a><br>
참고: <a href="https://developer.android.com/reference/java/time/Duration">java.time.Duration</a>
</div>

## Ended

```kotlin
data class Ended(val listener: () -> Unit) : EventHandler()
```

재생 목록의 마지막 미디어의 재생이 완료 된 시점에 사용하기 위한 핸들러입니다.

<div align="right">
이벤트 리스너: <a href="../../interface/event-listeners/home.md#onended">onEnded()</a>
</div>

## Error

```kotlin
data class Error(val listener: (PlaybackException) -> Unit) : EventHandler()
```

| 파라미터 타입 | 설명 |
|:--:|:--:|
|[PlaybackException](https://developer.android.com/reference/kotlin/androidx/media3/common/PlaybackException)|재생 오류가 발생했을 때 예외|

에러가 발생하여 리소스를 로드할 수 없을 때 사용하기 위한 핸들러입니다.

<div align="right">
이벤트 리스너: <a href="../../interface/event-listeners/home.md#onerror">onError()</a><br>
참고: <a href="https://developer.android.com/reference/kotlin/androidx/media3/common/PlaybackException">androidx.media3.common.PlaybackException</a><br>
<a href="../media-player-exception/home.md">MediaPlayerException</a>
</div>

## LoadedData

```kotlin
data class LoadedData(val listener: () -> Unit) : EventHandler()
```

미디어 트랙이 로드되었을 때 사용하기 위한 핸들러입니다.

<div align="right">
이벤트 리스너: <a href="../../interface/event-listeners/home.md#onloadeddata">onLoadedData()</a>
</div>

## LoadedMetadata

```kotlin
data class LoadedMetadata(val listener: () -> Unit) : EventHandler()
```
메타데이터가 로드되었을 때 사용하기 위한 핸들러입니다.

<div align="right">
이벤트 리스너: <a href="../../interface/event-listeners/home.md#onloadedmetadata">onLoadedMetadata() </a>
</div>

## LoadStart

```kotlin
data class LoadStart(val listener: () -> Unit) : EventHandler()
```

미디어 리소스를 로딩하기 시작할 때 사용하기 위한 핸들러입니다.

<div align="right">
이벤트 리스너: <a href="../../interface/event-listeners/home.md#onloadstart">onLoadStart()</a>
</div>

## MediaItemTransition

```kotlin
data class MediaItemTransition(val listener: (MediaItem?, @Player.MediaItemTransitionReason Int) -> Unit) : EventHandler()
```

| 파라미터 타입 | 설명 |
|:--:|:--:|
|[MediaItem](https://developer.android.com/reference/androidx/media3/common/MediaItem)?|교체된 미디어 아이템|
|@[Player.MediaItemTransitionReason](https://developer.android.com/reference/androidx/media3/common/Player.MediaItemTransitionReason) Int|미디어 아이템 교체 이유|

미디어 아이템이 교체 되는 시점에 사용하기 위한 핸들러입니다.<br> 
참고: 이벤트 리스너는 [Player.Listener](https://developer.android.com/reference/androidx/media3/common/Player.Listener#onMediaItemTransition(androidx.media3.common.MediaItem,int))에서 제공하는 것을 사용하시면 됩니다.

<div align="right">
참고: <a href="https://developer.android.com/reference/androidx/media3/common/MediaItem">androidx.media3.common.MediaItem</a><br>
<a href="https://developer.android.com/reference/androidx/media3/common/Player.MediaItemTransitionReason">MediaItemTransitionReason</a>
</div>

## Pause

```kotlin
data class Pause(val listener: () -> Unit) : EventHandler()
```

미디어 일시 정지를 요청한 후, 일시 정지 상태로 진입하는 시점에 사용하기 위한 핸들러입니다.

<div align="right">
이벤트 리스너: <a href="../../interface/event-listeners/home.md#onpause">onPause()</a><br>
비교: <a href="#play">Play</a>
</div>

## Play

```kotlin
data class Play(val listener: () -> Unit) : EventHandler()
```

미디어가 일시 정지 상태에서 재생 상태로 변경되는 시점에 사용하기 위한 핸들러입니다. 단, 재생 위치가 변경될 때는 포함하지 않습니다.

사용자가 재생 버튼을 클릭하거나 mediaPlayer.play()를 호출하는 등 플레이어에 재생 명령을 내렸을  때 처럼 직접 명령을 했을 때 상황에서 이벤트 처리를 여기서 할 수 있음 
EventHandler.Playing과 다른 점은 seekTo() 등을 통해 재생 위치가 변경될 때의 이벤트는 여기서 처리할 수 없다는 것입니다. 
중요한 점이 하나 더 있는데, Play와 관련된 이벤트 핸들러가 호출되면, Playing 이벤트는 Play 이벤트 이 후에 언제나 호출됩니다.

<div align="right">
이벤트 리스너: <a href="../../interface/event-listeners/home.md#onplay">onPlay()</a><br>
비교: <a href="#pause">Pause</a><br>
참고: <a href="#playing">Playing</a>
</div>

## PlaybackFinish

```kotlin
data class PlaybackFinish(val listener: (MediaItem, Duration, Duration?, PlaybackFinishReason) -> Unit) : EventHandler()
```

| 파라미터 타입 | 설명 |
|:--:|:--:|
|[MediaItem](https://developer.android.com/reference/androidx/media3/common/MediaItem)?|종료된 미디어 아이템|
|[java.time.Duration](https://developer.android.com/reference/java/time/Duration)|마지막 재생 위치|
|[java.time.Duration](https://developer.android.com/reference/java/time/Duration)?|미디어 길이|
|[PlaybackFinishReason](../../enum/playback-finish-reason/home.md)|미디어 종료 원인|

미디어가 종료될 때 사용하기 위한 핸들러입니다. 이 때 마지막 재생 위치(position)와 미디어의 길이(duration) 값을 사용할 수 있습니다. 주의할 점은, 미디어가 로드된 후에 종료될 때만 사용할 수 있다는 것입니다. 만약 미디어가 로드되기 전에 종료되는 상황에도 사용하려면, [Unload](#unload)를 참고하세요.

<div align="right">
이벤트 리스너: <a href="../../interface/event-listeners/home.md#onplaybackfinish">onPlaybackFinish()</a><br>
참고: <a href="#unload">Unload</a><br>
<a href="https://developer.android.com/reference/androidx/media3/common/MediaItem">androidx.media3.common.MediaItem</a><br>
<a href="https://developer.android.com/reference/java/time/Duration">java.time.Duration</a>
</div>

## PlaybackStateChange

```kotlin
data class PlaybackStateChange(val listener: (@Player.State Int) -> Unit) : EventHandler()
```

| 파라미터 타입 | 설명 |
|:--:|:--:|
|@[Player.State](https://developer.android.com/reference/androidx/media3/common/Player.State) Int|재생 상태|

미디어 로딩 상태에 따른 처리, 즉, 버퍼링인지 준비가 된 상태인지, 끝이 났는지, 플레이어를 종료하였는지 등의 상황에 따라 처리하기 위한 핸들러입니다.<br>
참고: 이벤트 리스너는 [Player.Listener](https://developer.android.com/reference/androidx/media3/common/Player.Listener#onPlaybackStateChanged(int))에서 제공하는 것을 사용하시면 됩니다.

<div align="right">
참고: <a href="https://developer.android.com/reference/androidx/media3/common/Player.State">Player.State</a>
</div>

## Playing

```kotlin
data class Playing(val listener: () -> Unit) : EventHandler()
```

재생 위치가 변경되어 재생 되는 것을 포함하여, 미디어가 일시 정지 상태에서 재생 상태로 변경되는 시점에 사용하기 위한 핸들러입니다.

즉, seekBack(), seekForward(), seekTo() 등의 호출로 재생 위치가 변경되기 위해, 미디어가 잠시 멈추었다가 다시 재생되는 이벤트를 처리할 수 있다는 것이 [EventHandler.Play](#play)와 다른 점입니다.
Playing과 관련된 이벤트 핸들러는 Play 이벤트 이후에 호출됩니다.

<div align="right">
이벤트 리스너: <a href="../../interface/event-listeners/home.md#onplaying">onPlaying()</a><br>
참고: <a href="#play">Play</a>
</div>

## PositionDiscontinuity

```kotlin
data class PositionDiscontinuity(
    val listener: (MediaPlayer, Duration, Duration) -> Unit
) : EventHandler()
```

| 파라미터 타입 | 설명 |
|:--:|:--:|
|[MediaPlayer](../../interface/media-player/home.md)|미디어 플레이어|
|[java.time.Duration](https://developer.android.com/reference/java/time/Duration)|이전 재생 위치|
|[java.time.Duration](https://developer.android.com/reference/java/time/Duration)|바뀐 재생 위치|

재생 위치가 변경되는 시점에 사용하기 위한 핸들러입니다. 이전 위치와 이동한 위치 모두 접근이 가능합니다.

<div align="right">
이벤트 리스너: <a href="../../interface/event-listeners/home.md#onpositiondiscontinuity">onPositionDiscontinuity()<a><br>
참고: <a href="../../interface/media-player/home.md">MediaPlayer</a><br>
<a href="https://developer.android.com/reference/java/time/Duration">java.time.Duration</a>
</div>

## Progress

```kotlin
data class Progress(val listener: () -> Unit) : EventHandler()
```
플레이어가 소스를 읽어오기 시작할 때에 사용하기 위한 핸들러입니다.

<div align="right">
이벤트 리스너: <a href="../../interface/event-listeners/home.md#onprogress">onProgress()</a><br>
비교: <a href="#suspend">Suspend</a>
</div>

## RateChange

```kotlin
data class RateChange(val listener: (Float) -> Unit) : EventHandler()
```

| 파라미터 타입 | 설명 |
|:--:|:--:|
|Float|재생 속도|

재생 속도가 변경되는 시점에 사용하기 위한 핸들러입니다.
주의: 재생 속도는 그대로이지만, preservesPitch의 값이 변경될 때도 호출 됨

<div align="right">
이벤트 리스너: <a href="../../interface/event-listeners/home.md#onratechange">onRateChange()</a><br>
참고: <a href="../../interface/media-player/home.md#playbackrate">playbackRate</a>
</div>

## RepeatModeChange

```kotlin
data class RepeatModeChange(val listener: (@Player.RepeatMode Int) -> Unit) : EventHandler()
```

| 파라미터 타입 | 설명 |
|:--:|:--:|
|@[Player.RepeatMode](https://developer.android.com/reference/kotlin/androidx/media3/common/Player.RepeatMode) Int|반복 모드 종류|

반복 모드가 변경되는 시점에 사용하기 위한 핸들러입니다. <br>
참고: 이벤트 리스너는 [Player.Listener](https://developer.android.com/reference/androidx/media3/common/Player.Listener#onRepeatModeChanged(int))에서 제공하는 것을 사용하시면 됩니다.

<div align="right">
참고: <a href="https://developer.android.com/reference/kotlin/androidx/media3/common/Player.RepeatMode">Player.RepeatMode</a>
</div>

## RepeatRangeChange

```kotlin
data class RepeatRangeChange(val listener: (MediaPlayer.RepeatRange?) -> Unit) : EventHandler()
```

| 파라미터 타입 | 설명 |
|:--:|:--:|
|[MediaPlayer.RepeatRange](../media-player-repeat-range/home.md)?|구간 반복에서의 구간|

구간 반복 모드가 시작되거나 종료되었을 때, 그리고 구간 반복의 시작 위치 또는 종료 위치가 바뀌었을 때를 처리하기 위한 핸들러입니다.

<div align="right">
이벤트 리스너: <a href="../../interface/event-listeners/home.md#onrepeatrangechange">onRepeatRangeChange()</a><br>
참고: <a href="../media-player-repeat-range/home.md">MediaPlayer.RepeatRange</a>
</div>

## ResizeModeChange

```kotlin
data class ResizeModeChange(val listener: (@AspectRatioFrameLayout.ResizeMode Int) -> Unit) : EventHandler()
```

| 파라미터 타입 | 설명 |
|:--:|:--:|
|@[ResizeMode](https://developer.android.com/reference/androidx/media3/ui/AspectRatioFrameLayout.ResizeMode) Int|화면의 크기 상태|

화면 크기 조절을 하는 시점에 사용하기 위한 핸들러입니다.

<div align="right">
이벤트 리스너: <a href="../../interface/event-listeners/home.md#onresizemodechange">onResizeModeChange</a><br>
참고: <a href="https://developer.android.com/reference/androidx/media3/ui/AspectRatioFrameLayout.ResizeMode">AspectRatioFrameLayout.ResizeMode</a>
</div>

## Seeked

```kotlin
data class Seeked(val listener: () -> Unit) : EventHandler()
```
seek 작업이 완료된 시점, 또는 재생 위치가 변경되는 시점, 또는 seeking 값이 false로 변경되는 시점에 사용하기 위한 핸들러입니다.

<div align="right">
이벤트 리스너: <a href="../../interface/event-listeners/home.md#onseeked">onSeeked()</a><br>
비교: <a href="#seeking">Seeking</a>
</div>

## Seeking

```kotlin
data class Seeking(val listener: () -> Unit) : EventHandler()
```
seek 작업이 시작되는 시점, 또는 seeking 값이 false에서 true로 변경되는 시점에 사용하기 위한 핸들러입니다.

<div align="right">
이벤트 리스너: <a href="../../interface/event-listeners/home.md#onseeking">onSeeking()</a><br>
비교: <a href="#seeked">Seeked</a>
</div>

## Suspend

```kotlin
data class Suspend(val listener: () -> Unit) : EventHandler()
```
미디어 로딩이 중지된 시점에 사용하기 위한 핸들러입니다.

<div align="right">
이벤트 리스너: <a href="../../interface/event-listeners/home.md#onsuspend">onSuspend()</a><br>
비교: <a href="#progress">Progress</a>
</div>

## TimeUpdate

```kotlin
data class TimeUpdate(val listener: (Duration) -> Unit) : EventHandler()
```

| 파라미터 타입 | 설명 |
|:--:|:--:|
|[java.time.Duration](https://developer.android.com/reference/java/time/Duration)|현재 재생 위치|

[currentTime](../../interface/media-player/home.md#currenttime)이 변경되는 시점에 사용하기 위한 핸들러입니다. 즉, 미디어가 재생이 되는 동안 수행하려는 작업을 이곳에 구현하시면 됩니다.

<div align="right">
이벤트 리스너: <a href="../../interface/event-listeners/home.md#ontimeupdate">onTimeUpdate()</a><br>
참고: <a href="https://developer.android.com/reference/java/time/Duration">java.time.Duration</a>
</div>

## Unload

```kotlin
data class Unload(val listener: (MediaItem) -> Unit) : EventHandler()
```

| 파라미터 타입 | 설명 |
|:--:|:--:|
|[MediaItem](https://developer.android.com/reference/androidx/media3/common/MediaItem)|종료된 미디어 아이템|

미디어가 제거된 시점, 즉, 미디어 주소가 변경되기 직전, 기존에 존재하던 미디어를 비울 때를 처리하기 위한 핸들러입니다.

<div align="right">
이벤트 리스너: <a href="../../interface/event-listeners/home.md#onunload">onUnload()</a><br>
참고: <a href="https://developer.android.com/reference/androidx/media3/common/MediaItem">androidx.media3.common.MediaItem</a>
</div>

## VideoSizeChange

```kotlin
data class VideoSizeChange(val listener: (VideoSize) -> Unit) : EventHandler()
```

| 파라미터 타입 | 설명 |
|:--:|:--:|
|[VideoSize](https://developer.android.com/reference/androidx/media3/common/VideoSize)|영상 사이즈|

영상 크기가 바뀌는 시점에 사용하기 위한 핸들러입니다. 다음 영상으로 이동할 때, 영상 크기가 0x0으로 바뀌었다가 다음 영상의 크기로 바뀌게 되는데, 0x0으로 바뀔 때도 해당 이벤트는 호출됩니다. 즉, 다음 영상으로 이동할 경우, 이 핸들러는 두 번 호출 됩니다.<br>
참고: 이벤트 리스너는 [Player.Listener](https://developer.android.com/reference/androidx/media3/common/Player.Listener#onVideoSizeChanged(androidx.media3.common.VideoSize))에서 제공하는 것을 사용하시면 됩니다.

<div align="right">
참고: <a href="https://developer.android.com/reference/androidx/media3/common/VideoSize">VideoSize</a>
</div>

## VolumeChange

```kotlin
data class VolumeChange(val listener: (Float, Boolean) -> Unit) : EventHandler()
```

| 파라미터 타입 | 설명 |
|:--:|:--:|
|Float|디바이스 음량|
|Boolean|음소거 여부|

볼륨이 변경되는 시점에 사용하기 위한 핸들러입니다. 무음([muted](../../interface/media-player/home.md#muted)) 상태가 변경될 때도 호출됩니다.<br><br>
주의: Player.Listener의 [onVolumeChanged()](https://developer.android.com/reference/androidx/media3/common/Player.Listener#onVolumeChanged(float)) 메서드는 이 핸들러와 전혀 다릅니다. 메서드 이름과 사용하는 파라미터도 다르니 주의하시기 바랍니다.

<div align="right">
이벤트 리스너: <a href="../../interface/event-listeners/home.md#onvolumechange">onVolumeChange()</a><br>
참고: <a href="../../interface/media-player/home.md#devicevolume">deviceVolume</a>
</div>

## Waiting

```kotlin
data class Waiting(val listener: () -> Unit) : EventHandler()
```

일시적인 버퍼 부족, 즉 데이터가 충분히 로딩되지 못하거나 데이터가 없어서 재생이 정지된 시점에 사용하기 위한 핸들러입니다.

<div align="right">
이벤트 리스너: <a href="../../interface/event-listeners/home.md#onwaiting">onWaiting()</a>
</div>
