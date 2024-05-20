# interface EventListener

```kotlin
import com.newin.nplayer.sdk.EventListener
```

```kotlin
interface EventListener
```
EventListener는 이벤트 처리를 위한 인터페이스로, 위와 같은 메서드를 제공합니다. 각각 메서드에 대한 설명은 [메서드](#메서드)를, 사용 방법은 [addEventListener()](../media-player/home.md#addeventlistener)를 참고하시면 됩니다. 이벤트 리스너를 추가한 후, 해당 이벤트 리스너가 더 이상 필요 없을 때는 반드시 [removeEventListener()](../media-player/home.md#removeeventlistener) 메서드를 사용해서 제거하세요.<br>
Player에 이미 존재하는 이벤트 리스너일 경우에는, 안드로이드 SDK는 이벤트 핸들러만 제공합니다.<br>
이벤트 리스너를 대신하여 사용 방법에 따라서 [이벤트 핸들러](../../class/event-handlers/home.md)를 사용하여 이벤트 처리를 할 수 있습니다. 이벤트 핸들러에서 사용되는 파라미터는 이벤트 리스너의 파라미터와 동일합니다. 이벤트 핸들러의 사용 방법은 [addEventHandler()](../media-player/home.md#addeventhandler)와 [클래스](../../class/event-handlers/home.md#클래스)를 참고하시면 됩니다.

<br><br>
# 메서드

## onDurationChange

```kotlin
fun onDurationChange(duration: Duration)
```
| 파라미터 이름 | 타입 | 설명 |
|:--:|:--:|:--:|
|duration|[java.time.Duration](https://developer.android.com/reference/java/time/Duration)|미디어 길이|

미디어의 길이(duration)가 변경될 때 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/home.md#durationchange">DurationChange</a><br>
참고: <a href="https://developer.android.com/reference/java/time/Duration">java.time.Duration</a>
</div>

<br><br>
## onEmptied

```kotlin
fun onEmptied()
```
미디어가 제거된 시점, 즉, 미디어 주소가 변경되기 직전, 기존에 존재하던 미디어를 비울 때 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/home.md#emptied">Emptied</a>
</div>

<br><br>
## onEnded

```kotlin
fun onEnded()
```
재생 목록의 마지막 미디어의 재생이 완료 된 시점에 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/home.md#ended">Ended</a>
</div>

<br><br>
## onError

```kotlin
fun onError(error: PlaybackException)
```
| 파라미터 이름 | 타입 | 설명 |
|:--:|:--:|:--:|
|error|[PlaybackException](https://developer.android.com/reference/kotlin/androidx/media3/common/PlaybackException)|재생 오류가 발생했을 때 예외|

에러가 발생하여 리소스를 로드할 수 없을 때 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/home.md#error">Error</a><br>
참고: <a href="https://developer.android.com/reference/kotlin/androidx/media3/common/PlaybackException">androidx.media3.common.PlaybackException</a>, 
<a href="../../class/media-player-exception/home.md">MediaPlayerException</a>
</div>

<br><br>
## onLoadedData

```kotlin
fun onLoadedData()
```
미디어 트랙이 로드되었을 때 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/home.md#loadeddata">LoadedData</a>
</div>

<br><br>
## onLoadedMetadata

```kotlin
fun onLoadedMetadata()
```
메타데이터가 로드되었을 때 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/home.md#loadedmetadata">LoadedMetadata</a>
</div>

<br><br>
## onLoadStart

```kotlin
fun onLoadStart()
```
미디어 리소스를 로딩하기 시작할 때 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/home.md#loadstart">LoadStart</a>
</div>

<br><br>
## onPause

```kotlin
fun onPause()
```
미디어 일시 정지를 요청한 후, 일시 정지 상태로 진입하는 시점에 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/home.md#pause">Pause</a>
</div>

<br><br>
## onPlay

```kotlin
fun onPlay()
```
미디어가 일시 정지 상태에서 재생 상태로 변경되는 시점에 실행합니다. 단, 재생 위치가 변경될 때는 포함하지 않습니다. 자세한 설명은 [EventHandler.Play](../../class/event-handlers/home.md#play)를 참고하세요.

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/home.md#play">Play</a>
</div>

<br><br>
## onPlaybackFinish

```kotlin
fun onPlaybackFinish(mediaItem: MediaItem, position: Duration, duration: Duration?)
```
| 파라미터 이름 | 타입 | 설명 |
|:--:|:--:|:--:|
|mediaItem|[MediaItem](https://developer.android.com/reference/androidx/media3/common/MediaItem)?|종료된 미디어 아이템|
|position|[java.time.Duration](https://developer.android.com/reference/java/time/Duration)|마지막 재생 위치|
|duration|[java.time.Duration](https://developer.android.com/reference/java/time/Duration)?|미디어 길이|

미디어가 종료되는 시점에 실행합니다. 마지막 재생 위치(position) 및 미디어의 길이(duration) 값을 사용할 수 있습니다. 

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/home.md#playbackfinish">PlayabackFinish</a><br>
참고: <a href="https://developer.android.com/reference/androidx/media3/common/MediaItem">androidx.media3.common.MediaItem</a>, 
<a href="https://developer.android.com/reference/java/time/Duration">java.time.Duration</a>
</div>

<br><br>
## onPlaying

```kotlin
fun onPlaying()
```
재생 위치가 변경되어 재생 되는 것을 포함하여, 미디어가 일시 정지 상태에서 재생 상태로 변경되는 시점에 실행합니다. 자세한 설명은 [EventHandler.Playing](../../class/event-handlers/home.md#playing)를 참고하세요.

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/home.md#playing">Playing</a>
</div>

<br><br>
## onPositionDiscontinuity

```kotlin
fun onPositionDiscontinuity(
    player: MediaPlayer,
    oldPosition: Duration,
    newPosition: Duration
)
```
| 파라미터 이름 | 타입 | 설명 |
|:--:|:--:|:--:|
|player|[MediaPlayer](../../interface/media-player/home.md)|미디어 플레이어|
|oldPosition|[java.time.Duration](https://developer.android.com/reference/java/time/Duration)|이전 재생 위치|
|newPosition|[java.time.Duration](https://developer.android.com/reference/java/time/Duration)|바뀐 재생 위치|

재생 위치가 변경되는 시점에 실행합니다. 이전 위치와 이동한 위치 모두 접근이 가능합니다.

주의: Player.Listener의 [onPositionDiscontinuity()](https://developer.android.com/reference/androidx/media3/common/Player.Listener#onPositionDiscontinuity(androidx.media3.common.Player.PositionInfo,androidx.media3.common.Player.PositionInfo,int))는 이름만 같고, 사용 방법이 다릅니다.

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/home.md#positiondiscontinuity">PositionDiscontinuity</a><br>
참고: <a href="../../interface/media-player/home.md">MediaPlayer</a><br>, 
<a href="https://developer.android.com/reference/java/time/Duration">java.time.Duration</a>
</div>

<br><br>
## onProgress

```kotlin
fun onProgress()
```
플레이어가 소스를 읽어오기 시작할 때에 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/home.md#progress">Progress</a>
</div>

<br><br>
## onRateChange

```kotlin
fun onRateChange(playbackRate: Float)
```
| 파라미터 이름 | 타입 | 설명 |
|:--:|:--:|:--:|
|playbackRate|Float|재생 속도|

재생 속도가 변경되는 시점에 실행합니다.
주의: 재생 속도는 그대로이지만, preservesPitch의 값이 변경될 때도 실행 됨

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/home.md#ratechange">RateChange</a><br>
참고: <a href="../../interface/media-player/home.md#playbackrate">playbackRate</a>
</div>

<br><br>
## onRepeatRangeChange

```kotlin
fun onRepeatRangeChange(repeatRange: MediaPlayer.RepeatRange?)
```
| 파라미터 이름 | 타입 | 설명 |
|:--:|:--:|:--:|
|repeatRange|[MediaPlayer.RepeatRange](../media-player-repeat-range/home.md)?|구간 반복에서의 구간|

구간 반복 모드가 시작되거나 종료되었을 때, 그리고 구간 반복의 시작 위치 또는 종료 위치가 바뀌었을 때 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/home.md#repeatrangechange">RepeatRangeChange</a><br>
참고: <a href="../../class/media-player-repeat-range/home.md">MediaPlayer.RepeatRange</a>
</div>

<br><br>
## onResizeModeChange

```kotlin
fun onResizeModeChange(mode: @AspectRatioFrameLayout.ResizeMode Int)
```
| 파라미터 이름 | 타입 | 설명 |
|:--:|:--:|:--:|
|mode|@[ResizeMode](https://developer.android.com/reference/androidx/media3/ui/AspectRatioFrameLayout.ResizeMode) Int|화면의 크기 상태|

화면 크기 조절을 하는 시점에 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/home.md#resizemodechange">ResizeModeChange</a><br>
참고: <a href="https://developer.android.com/reference/androidx/media3/ui/AspectRatioFrameLayout.ResizeMode">AspectRatioFrameLayout.ResizeMode</a>
</div>

<br><br>
## onSeeked

```kotlin
fun onSeeked()
```
seek 작업이 완료된 시점, 또는 재생 위치가 변경되는 시점, 또는 seeking 값이 false로 변경되는 시점에 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/home.md#seeked">Seeked</a>
</div>

<br><br>
## onSeeking

```kotlin
fun onSeeking()
```
seek 작업이 시작되는 시점, 또는 seeking 값이 false에서 true로 변경되는 시점에 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/home.md#seeking">Seeking</a>
</div>

<br><br>
## onSuspend

```kotlin
fun onSuspend()
```
미디어 로딩이 중지된 시점에 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/home.md#suspend">Suspend</a>
</div>

<br><br>
## onTimeUpdate

```kotlin
fun onTimeUpdate(position: Duration)
```
| 파라미터 이름 | 타입 | 설명 |
|:--:|:--:|:--:|
|position|java.time.[Duration](https://developer.android.com/reference/java/time/Duration)|현재 재생 위치|

[currentTime](../../interface/media-player/home.md#currenttime)이 변경되는 시점에 실행합니다. 즉, 미디어가 재생이 되는 동안 수행하려는 작업을 이곳에 구현하시면 됩니다.

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/home.md#timeupdate">TimeUpdate</a><br>
참고: <a href="https://developer.android.com/reference/java/time/Duration">java.time.Duration</a>
</div>

<br><br>
## onVolumeChange

```kotlin
fun onVolumeChange(volume: Float, muted: Boolean)
```
| 파라미터 이름 | 타입 | 설명 |
|:--:|:--:|:--:|
|volume|Float|디바이스 음량|
|muted|Boolean|음소거 여부|

볼륨이 변경되는 시점에 실행합니다. 무음([muted](../media-player/home.md#muted)) 상태가 변경될 때도 실행합니다.
주의: Player.Listener의 [onVolumeChanged()](https://developer.android.com/reference/androidx/media3/common/Player.Listener#onVolumeChanged(float)) 메서드는 이 이벤트 리스너와 완전히 다른 동작을 합니다. 메서드 이름과 사용하는 파라미터도 다르니 주의하시기 바랍니다.

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/home.md#volumechange">VolumeChange</a><br>
참고: <a href="../../interface/media-player/home.md#devicevolume">deviceVolume</a>
</div>

<br><br>
## onWaiting

```kotlin
fun onWaiting()
```
일시적인 버퍼 부족, 즉 데이터가 충분히 로딩되지 못하거나 데이터가 없어서 재생이 정지된 시점에 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/home.md#waiting">Waiting</a>
</div>
