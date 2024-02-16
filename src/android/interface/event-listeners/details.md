# 메서드

## onDurationChange

```kotlin
fun onDurationChange(duration: Duration)
```
미디어의 길이(duration)가 변경될 때 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/details.md#durationchange">DurationChange</a><br>
참고: <a href="https://kotlinlang.org/api/latest/jvm/stdlib/kotlin.time/-duration/">kotlin.time.Duration</a>
</div>

<br><br><br><br>

--------
## onEmptied

```kotlin
fun onEmptied()
```
미디어가 제거된 시점, 즉, 미디어 주소가 변경되기 직전, 기존에 존재하던 미디어를 비울 때 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/details.md#emptied">Emptied</a>
</div>


<br><br><br><br>

--------
## onEnded

```kotlin
fun onEnded()
```
재생 목록의 마지막 미디어의 재생이 완료 된 시점에 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/details.md#ended">Ended</a>
</div>

<br><br><br><br>

--------
## onError

```kotlin
fun onError(error: PlaybackException)
```
에러가 발생하여 리소스를 로드할 수 없을 때 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/details.md#error">Error</a><br>
참고: <a href="https://developer.android.com/reference/kotlin/androidx/media3/common/PlaybackException">PlaybackException</a>
</div>

<br><br><br><br>

--------
## onLoadedData

```kotlin
fun onLoadedData()
```
미디어 트랙이 로딩되었을 때 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/details.md#loadeddata">LoadedData</a>
</div>

<br><br><br><br>

--------
## onLoadedMetadata

```kotlin
fun onLoadedMetadata()
```
메타데이터가 로딩되었을 때 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/details.md#loadedmetadata">LoadedMetadata</a>
</div>

<br><br><br><br>

--------
## onLoadStart

```kotlin
fun onLoadStart()
```
미디어 리소스를 로드하기 시작할 때 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/details.md#loadstart">LoadStart</a>
</div>

<br><br><br><br>

--------
## onPause

```kotlin
fun onPause()
```
미디어 일시 정지를 요청한 후, 일시 정지 상태로 진입하는 시점에 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/details.md#pause">Pause</a>
</div>

<br><br><br><br>

--------
## onPlay

```kotlin
fun onPlay()
```
미디어가 일시 정지 상태에서 재생 상태로 변경되는 시점에 실행합니다. 단, 재생 위치가 변경될 때는 포함하지 않습니다. 자세한 설명은 [EventHandler.Play](../../class/event-handlers/details.md#play)를 참고하세요.

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/details.md#play">Play</a>
</div>

<br><br><br><br>

--------
## onPlaying

```kotlin
fun onPlaying()
```
재생 위치가 변경되어 재생 되는 것을 포함하여, 미디어가 일시 정지 상태에서 재생 상태로 변경되는 시점에 실행합니다. 자세한 설명은 [EventHandler.Playing](../../class/event-handlers/details.md#playing)를 참고하세요.

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/details.md#playing">Playing</a>
</div>

<br><br><br><br>

--------
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
참고: <a href="https://kotlinlang.org/api/latest/jvm/stdlib/kotlin.time/-duration/">kotlin.time.Duration</a>
</div>

<br><br><br><br>

--------
## onProgress

```kotlin
fun onProgress()
```
플레이어가 소스를 읽어오기 시작할 때에 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/details.md#progress">Progress</a>
</div>

<br><br><br><br>

--------
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

<br><br><br><br>

--------
## onRepeatRangeChange

```kotlin
fun onRepeatRangeChange(repeatRange: MediaPlayer.RepeatRange?)
```
구간 반복 모드가 시작되거나 종료되었을 때, 그리고 구간 반복의 시작 위치 또는 종료 위치가 바뀌었을 때 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/details.md#repeatrangechange">RepeatRangeChange</a><br>
참고: <a href="../../class/repeat-range/home.md">MediaPlayer.RepeatRange</a>
</div>

<br><br><br><br>

--------
## onResizeModeChange

```kotlin
fun onResizeModeChange(mode: Int)
```
화면 크기 조절을 하는 시점에 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/details.md#resizemodechange">ResizeModeChange</a><br>
참고: <a href="https://developer.android.com/reference/androidx/media3/ui/AspectRatioFrameLayout.ResizeMode">AspectRatioFrameLayout.ResizeMode</a>
</div>

<br><br><br><br>

--------
## onSeeked

```kotlin
fun onSeeked()
```
seek 작업이 완료된 시점, 또는 재생 위치가 변경되는 시점, 또는 seeking 값이 false로 변경되는 시점에 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/details.md#seeked">Seeked</a>
</div>

<br><br><br><br>

--------
## onSeeking

```kotlin
fun onSeeking()
```
seek 작업이 시작되는 시점, 또는 seeking 값이 false에서 true로 변경되는 시점에 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/details.md#seeking">Seeking</a>
</div>

<br><br><br><br>

--------
## onSuspend

```kotlin
fun onSuspend()
```
미디어 로드가 중지된 시점에 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/details.md#suspend">Suspend</a>
</div>

<br><br><br><br>

--------
## onTimeUpdate

```kotlin
fun onTimeUpdate(position: Duration)
```
currentTime이 변경되는 시점에 실행합니다. 즉, 미디어가 재생이 되는 동안 수행하려는 작업을 이곳에 구현하시면 됩니다.

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/details.md#timeupdate">TimeUpdate</a><br>
참고: <a href="https://kotlinlang.org/api/latest/jvm/stdlib/kotlin.time/-duration/">kotlin.time.Duration</a>
</div>

<br><br><br><br>

--------
## onVolumeChange

```kotlin
fun onVolumeChange(volume: Float, muted: Boolean)
```
볼륨이 변경되는 시점에 실행합니다. 

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/details.md#volumechange">VolumeChange</a><br>
참고: <a href="../../interface/media-player/details.md#devicevolume">deviceVolume</a>
</div>

<br><br><br><br>

--------
## onWaiting

```kotlin
fun onWaiting()
```
일시적인 버퍼 부족, 즉 데이터가 충분히 로딩되지 못하거나 데이터가 없어서 재생이 정지된 시점에 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../class/event-handlers/details.md#waiting">Waiting</a>
</div>

