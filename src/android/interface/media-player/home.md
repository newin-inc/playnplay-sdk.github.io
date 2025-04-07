# MediaPlayer

```kotlin
import com.newin.nplayer.sdk.MediaPlayer
```

```kotlin
interface MediaPlayer : Player
```

미디어 플레이어 인터페이스입니다. 활성화된 미디어 플레이어에 접근하는 방법은 [getMediaPlayer()](../../class/context/home.md#getmediaplayer)를 참고하세요.

<div align="right">
참고: <a href="https://developer.android.com/reference/androidx/media3/common/Player">androidx.media3.common.Player</a>
</div>

<br>

# 정적 속성

## ACTION_PLAYBACK_FINISHED

```kotlin
companion object {
    const val ACTION_PLAYBACK_FINISHED
}
```

미디어 재생이 끝났을 때 브로드캐스터 수신기에서 사용하기 위한 정적 속성입니다. 브로드캐스터 수신기를 아래처럼 등록하고 해제하시면 됩니다.

```kotlin
private val playbackFinishedReceiver = object : BroadcastReceiver() {
    override fun onReceive(context: Context?, intent: Intent) {
        // 미디어 재생 종료 시 처리할 내용
    }
}

override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)

    ContextCompat.registerReceiver(
        this,
        playbackFinishedReceiver,
        IntentFilter(MediaPlayer.ACTION_PLAYBACK_FINISHED),
        ContextCompat.RECEIVER_EXPORTED,
    )
}

override fun onDestroy() {
    super.onDestroy()
    unregisterReceiver(playbackFinishedReceiver)
}
```

`onReceive`의 `intent`에서 제공하는 정보는 다음과 같습니다.

|이름|타입|내용|
|:--:|:--:|:--:|
|"uri"|string|미디어의 uri|
|"currentTime"|long|미디어 재생 위치|
|"duration"|long|미디어 전체 길이|
|"reason"|string|[미디어 종료 이유](../../enum/playback-finish-reason/home.md)|

<br>

# 속성

## allowsPictureInPicturePlayback

```kotlin
var allowsPictureInPicturePlayback: Boolean
```

## allowsCellularAccess

```kotlin
var allowsCellularAccess: Boolean
```

| 타입 | 설명 | 설정 | 기본값 |
|:----:|---|:---:|:---:|
|Boolean|동영상 재생 시, 셀룰러 데이터 사용 여부| 가능 | true |

동영상을 재생(스트리밍)할 때, 셀룰러 데이터를 사용할 지 여부를 나타내는 속성입니다.

## audioTracks

```kotlin
val audioTracks: List<Track>
```

| 타입 | 설명 | 설정 |
|:----:|---|:---:|
|List\<[Track](../../class/track/home.md)\>|오디오 트랙 목록|불가능|

현재 재생 중인 미디어의 오디오 트랙을 가져오는 속성입니다.

<div align="right">
참고: <a href="../../class/audio-track/home.md">AudioTrack</a>
</div>

## autoplay

```kotlin
var autoplay: Boolean
```

| 타입 | 설명 | 설정 | 기본값 |
|:----:|---|:---:|:---:|
|Boolean | 미디어가 로드되었을 때, 즉 미디어가 준비가 된 즉시 재생할 것인지 결정하는 값 | 가능 | true |

미디어가 중단되지 않고 충분한 양의 미디어 사용이 가능할 때 즉시 재생이 시작되어야 하는지를 나타내는 속성입니다. true면 자동 재생합니다.

## buffered

```kotlin
val buffered: TimeRanges
```

| 타입 | 설명 | 설정 |
|:---:|---|:---:|
|[com.newin.nplayer.<br>sdk.utils.TimeRanges](../../class/time-ranges/home.md)| 현재 버퍼에 담고 있는 미디어 리소스의 구간 데이터 | 불가능 |

버퍼에 있는 미디어 리소스의 구간을 반환합니다.

## currentMediaItem

```kotlin
val currentMediaItem: MediaItem
```

| 타입 | 설명 | 설정 |
|:---:|:---:|-----|
| [MediaItem](https://developer.android.com/reference/androidx/media3/common/MediaItem) | 현재 재생 중인 미디어 아이템 | 불가능 |

현재 재생 중인 미디어 아이템을 의미하는 속성입니다.

<div align="right">
참고: <a href="https://developer.android.com/reference/kotlin/androidx/media3/common/Player">Player</a>의 <a href="https://developer.android.com/reference/kotlin/androidx/media3/common/Player#getCurrentMediaItem()">getCurrentMediaItem()</a>
</div>

## currentMediaItemIndex

```kotlin
val currentMediaItemIndex: Int
```

| 타입 | 설명 | 설정 |
|:---:|----|:----:|
| Int | 현재 재생 중인 미디어 아이템의 index | 불가능 |

현재 재생 중인 미디어 아이템의 index를 의미하는 속성입니다.

<div align="right">
참고: <a href="https://developer.android.com/reference/kotlin/androidx/media3/common/Player">Player</a>의 <a href="https://developer.android.com/reference/kotlin/androidx/media3/common/Player#getCurrentMediaItemIndex()">getCurrentMediaItemIndex()</a>
</div>

## currentSrc

```kotlin
val currentSrc: Uri?
```

| 타입 | 설명 | 설정 | 기본값 |
|:---:|----|:---:|:---:|
|[android.net.Uri](https://developer.android.com/reference/android/net/Uri)? | 설정 시, 교체할 미디어 아이템의 Uri<br>반환 시, 현재 선택된 미디어 아이템의 Uri | 가능 | null |

미디어 리소스의 uri를 의미하는 속성입니다.

## currentTime

```kotlin
var currentTime: Duration
```

| 타입 | 설명 | 설정 |
|:---:|----|:---:|
|[java.time.Duration](https://developer.android.com/reference/java/time/Duration)| 설정 시, 재생하고 싶은 특정 위치<br>반환 시, 현재 재생 시점| 가능 |

현재 재생 위치를 Duration 단위로 지정합니다.

## currentWatermarkSettings

```kotlin
val currentWatermarkSettings: WatermarkSettings?
```

| 타입 | 설명 | 설정 |
|:----:|---|:---:|
|[WatermarkSettings](../../class/watermark-settings/home.md)|오디오 트랙 목록|불가능|

현재 워터마크 설정 상태를 반환하는 속성입니다.

<div align="right">
참고: <a href="../../class/watermark-settings/home.md">WatermarkSettings</a>
</div>

## defaultMuted

```kotlin
var defaultMuted: Boolean
```

|타입|설명|설정|기본값|
|:---:|---|:---:|:---:|
|Boolean |음소거 기본 설정 상태|가능|false|

오디오의 음소거 기본 설정을 나타내는 속성입니다.

## defaultPlaybackRate

```kotlin
var defaultPlaybackRate: Float
```

|타입|설명|설정|범위|기본값|
|:--:|:--:|:--:|:--:|:--:|
|Float|미디어의 기본 재생 속도|가능|0.1~4.0|1.0|

미디어의 기본 재생 속도를 나타내는 속성입니다.

## deviceVolume

```kotlin
var deviceVolume: Float
```

|타입|설명|범위|설정|
|:--:|:--:|:--:|:--:|
|Float|현재 미디어의 음량|0.0~1.0|가능|

현재 미디어 플레이어의 음량을 나타내는 속성입니다.

## duration

```kotlin
val duration: Duration
```

|타입|설명|설정|
|:--:|:--:|:--:|
|[java.time.Duration](https://developer.android.com/reference/java/time/Duration)|현재 미디어의 전체 길이|불가능|

현재 미디어 길이를 나타냅니다.

## ended

```kotlin
val ended: Boolean
```

|타입|설명|설정|
|:--:|:--:|:--:|
|Boolean|미디어 재생 완료 여부를 반환|불가능|

미디어 재생 완료 여부를 나타내는 속성입니다.

## error

```kotlin
val error: PlaybackException?
```

|타입|설명|설정|
|:--:|:--:|:--:|
|[PlaybackException](https://developer.android.com/reference/kotlin/androidx/media3/common/PlaybackException)?|최근에, 즉, 마지막으로 발생한 에러.<br>발생한 에러가 없을 경우 null을 반환|불가능|

최근 발생한 에러를 나타내는 속성입니다.

<div align="right">
참고: <a href="https://developer.android.com/reference/kotlin/androidx/media3/common/PlaybackException">androidx.media3.common.PlaybackException</a><br>
<a href="../../class/media-player-exception/home.md">MediaPlayerException</a>
</div>

## isCaptureAllowed

```kotlin
val isCaptureAllowed: Boolean
````

## isSeekable

```kotlin
val isSeekable: Boolean
```

| 타입 | 설명 | 설정 |
|:----:|---|:---:|
|Boolean|Seek 기능 사용 가능 여부|불가능|

현재 플레이어에서 Seek 기능을 사용할 수 있는지 여부를 반환하는 속성입니다.

## isScrubbing

```kotlin
val isScrubbing: Boolean
```

## loop

```kotlin
var loop: Boolean
```

|타입|설명|설정|기본값|
|:--:|:--:|:--:|:--:|
|Boolean|미디어 반복 재생 여부를 결정하는 값|가능|false|

미디어 재생이 끝났을 때 다시 처음부터 재생할 지 여부를 나타내는 속성입니다.

## mediaItems

```kotlin
val mediaItems: List<MediaItem>
```

|타입|설명|설정|기본값|
|:--:|:--:|:--:|:--:|
|List\<[MediaItem](https://developer.android.com/reference/androidx/media3/common/MediaItem)\>|현재 재생 목록에 있는 미디어 아이템들|불가능|[]|

미디어 아이템들의 목록을 나타내는 속성입니다. 해당 속성은 설정이 불가능합니다. 목록 전체를 바꾸고 싶을 때는 [Player](https://developer.android.com/reference/kotlin/androidx/media3/common/Player)의 [setMediaItems()](https://developer.android.com/reference/kotlin/androidx/media3/common/Player#setMediaItems(java.util.List%3Candroidx.media3.common.MediaItem%3E))를 사용하시면 됩니다.

## muted

```kotlin
var muted: Boolean
```

|타입|설명|설정|기본값|
|:--:|:--:|:--:|:--:|
|Boolean|오디오 음소거 여부|가능|false|

음소거 여부를 나타내는 속성입니다. 음소거면 true, 아니면 false입니다.

## paused

```kotlin
val paused: Boolean
```

|타입|설명|설정|
|:--:|:--:|:--:|
|Boolean|미디어 일시 정지 여부|불가능|

미디어가 일시 정지 상태인지 나타내는 속성입니다.
다음과 같은 조건 중 하나라도 해당할 때, true를 반환합니다.
1. [playWhenReady](https://developer.android.com/reference/kotlin/androidx/media3/common/Player#getPlayWhenReady())의 값이 false일 때,
2. [playbackState](https://developer.android.com/reference/kotlin/androidx/media3/common/Player#getPlaybackState())가 STATE_IDLE일 때 (제한된 리소스를 가지고 있을 때),
3. [playbackState](https://developer.android.com/reference/kotlin/androidx/media3/common/Player#getPlaybackState())가 STATE_ENDED일 때 (미디어 재생이 끝났을 때).

<div align="right">
참고: <a href="https://developer.android.com/reference/kotlin/androidx/media3/common/Player.State">Player.State</a>
</div>

## playbackRate

```kotlin
var playbackRate: Float
```
|타입|설명|설정|범위|기본값|
|:--:|:--:|:--:|:--:|:--:|
|Float|재생 속도|가능|0.1~4.0|1.0|

미디어가 재생 속도를 나타내는 속성입니다. 정상 속도는 1.0이고, 1보다 작을 때는 느리게, 1보다 클 때는 빠르게 재생합니다. 이 때, 오디오 피치 유지 여부는 [preservesPitch](#preservespitch)의 값으로 제어할 수 있습니다.

## preservesPitch

```kotlin
var preservesPitch: Boolean
```

|타입|설명|설정|기본값|
|:--:|:--:|:--:|:--:|
|Boolean|오디오 피치 유지 여부|가능|true|

재생 속도에 따른 오디오 피치 유지 여부를 나타내는 속성입니다. 값이 true면 재생 속도가 변해도 오디오 피치는 변함 없으며, false일 경우 재생 속도에 따라 오디오 피치가 변합니다.

## repeatRange

```kotlin
var repeatRange: RepeatRange?
```

|타입|설명|설정|
|:--:|:--:|:--:|
|[MediaPlayer.RepeatRange](../../class/media-player-repeat-range/home.md)?|반복 구간 범위|가능|

반복 구간 범위를 나타내는 속성입니다.
null이 아닌 값으로 설정을 했을 경우 해당 구간을 지속해서 반복 재생합니다. start가 설정되어 있지 않을 경우에는 반복 구간의 시작은 미디어의 맨 앞부분이며, end가 설정되어 있지 않을 경우에는 반복 구간의 끝은 미디어의 맨 마지막 부분으로 간주합니다.

<!-- ## resizeMode

```kotlin
var resizeMode: @ResizeMode Int
```

|타입|설명|설정|기본값|
|:--:|:--:|:--:|:--:|
|Int|[화면 크기 상태](../../media-player-view/screen-layout/details.md#7-화면-크기-조절-버튼)를 나타냄|가능|[RESIZE_MODE_FIT](https://developer.android.com/reference/androidx/media3/ui/AspectRatioFrameLayout?_gl=1*1kqgkgi*_up*MQ..*_ga*MTAzMTE4NjE2OC4xNzE1NTc3NTY3*_ga_6HH9YJMN9M*MTcxNTU3NzU2Ny4xLjAuMTcxNTU3NzU2Ny4wLjAuMA..#RESIZE_MODE_FIT())|

[화면 크기 상태](../../media-player-view/screen-layout/details.md#7-화면-크기-조절-버튼)를 나타내는 속성입니다.

<div align="right">
참고: <a href="https://developer.android.com/reference/androidx/media3/ui/AspectRatioFrameLayout.ResizeMode">AspectRatioFrameLayout.ResizeMode</a>
</div> -->

## screenBrightness

```kotlin
var screenBrightness: Float
````

## seekBackIncrement

```kotlin
var seekBackIncrement: Duration
```

|타입|설명|설정|기본값|
|:--:|:--:|:--:|:--:|
|[java.time.Duration](https://developer.android.com/reference/java/time/Duration)|현재 위치에서 전으로 이동하는 시간의 크기|가능|10초|

[seekBack()](#seekback)을 호출하여 이동할 때, 현재 위치에서 전으로 이동하는 시간 정도를 나타내는 속성입니다.
왼쪽 방향키를 입력 받거나 하단 인터페이스의 되감기 버튼을 클릭했을 때 이 속성을 사용합니다.

## seekForwardIncrement

```kotlin
var seekForwardIncrement: Duration
```

|타입|설명|설정|기본값|
|:--:|:--:|:--:|:--:|
|[java.time.Duration](https://developer.android.com/reference/java/time/Duration)|현재 위치에서 후로 이동하는 시간의 크기|가능|10초|

[seekForward()](#seekforward)을 호출하여 이동할 때, 현재 위치에서 후로 이동하는 시간 정도를 나타내는 속성입니다.
오른쪽 방향키를 입력 받거나 하단 인터페이스의 빨리 감기 버튼을 클릭했을 때 이 속성을 사용합니다.

## seeking

```kotlin
val seeking: Boolean
```
|타입|설명|설정|
|:--:|:--:|:--:|
|Boolean|현재 미디어가 새로운 위치로 이동하고 있는지(탐색 중인지) 여부|불가능|

미디어가 탐색 중이지를 나타내는 속성입니다. 현재 미디어가 새로운 위치로 이동하고 있거나 탐색중이면 true를 반환합니다.

<br>

## subtitleTracks

```kotlin
val subtitleTracks: List<Track>
```

| 타입 | 설명 | 설정 |
|:----:|---|:---:|
|List\<[Track](../../class/track/home.md)\>|자막 트랙 목록|불가능|

현재 재생 중인 미디어의 자막 트랙을 가져오는 속성입니다.

<div align="right">
참고: <a href="../../class/subtitle-track/home.md">SubtitleTrack</a>
</div>

## videoTracks

```kotlin
val videoTracks: List<Track>
```

| 타입 | 설명 | 설정 |
|:----:|---|:---:|
|List\<[Track](../../class/track/home.md)\>|비디오 트랙 목록|불가능|

현재 재생 중인 미디어의 비디오 트랙을 가져오는 속성입니다.

<div align="right">
참고: <a href="../../class/video-track/home.md">VideoTrack</a>
</div>

<br>

# 메서드

## beginSeekTo

```kotlin
fun beginSeekTo(direction: SeekDirection)
```

## deselectTrack

```kotlin
fun deselectTrack(track: Track)
```

|파라미터|타입|설명|
|:--:|:--:|---|
|track|[Track](../../class/track/home.md)|선택을 해제할 (자막) 트랙|

트랙 선택을 해제하여 비활성화하는 메서드입니다. 자막 트랙만 해제 가능합니다.

<div align="right">
참고: <a href="../../class/track/home.md">Track</a><br>
<a href="../../class/subtitle-track/home.md">SubtitleTrack</a><br>
<a href="#selecttrack">selectTrack</a>
</div>

## endSeekTo

```kotlin
fun endSeekTo(direction: SeekDirection)
```

## enterPictureInPicture

```kotlin
fun enterPictureInPicture(activity: Activity, sourceRectHint: Rect? = null)
```

|파라미터|타입|설명|
|:--:|:--:|---|
|activity|Activity|현재 액티비티|
|sourceRectHint|Rect?|[setSourceRectHint](https://developer.android.com/reference/android/app/PictureInPictureParams.Builder#setSourceRectHint(android.graphics.Rect)) 참고|

```kotlin
fun enterPictureInPicture(activity: Activity, sourceView: View? = null)
```

|파라미터|타입|설명|
|:--:|:--:|---|
|activity|Activity|현재 액티비티|
|sourceView|View?|현재 뷰|

화면 속 화면 모드로 전환하는 메서드입니다.

## fastSeek

```kotlin
fun fastSeek(to: Duration)
```
|파라미터|타입|설명|
|:---:|:--:|---|
|to|[java.time.Duration](https://developer.android.com/reference/java/time/Duration)|재생하고자 하는 위치 값|

입력된 시간으로 바로 이동하기 위한 메서드입니다.

* 주의: 해당 메서드의 원래 목적은 정확한 위치보다는 새로운 위치에서 더 빠르게 재생을 하도록 하는 것이었습니다. 그러나 안드로이드에서는 현재 정확한 위치와 빠른 재생을 동시에 수행할 수 없기 때문에, 현재는 currentTime, seekTo()를 사용한 것과 유사한 결과를 얻게 됩니다. 즉, 이 메서드를 사용하면 정확한 위치로 이동하게 됩니다. 향후 안드로이드에서 이러한 기능을 제공할 경우, 원래 목적에 맞게  업데이트될 예정입니다.

## load

```kotlin
fun load(uri: String)
```

|파라미터|타입|설명|
|:--:|:--:|---|
|uri|String|로드하려는 문자열 형식의 미디어 주소|

미디어 주소를 문자열로 입력 받아서 미디어를 로드하기 위한 메서드입니다.

## load

```kotlin
fun load(uri: Uri)
```

|파라미터|타입|설명|
|:--:|:--:|---|
|uri|[Uri](https://developer.android.com/reference/android/net/Uri)|로드하려는 [android.net.Uri](https://developer.android.com/reference/android/net/Uri) 형식의 미디어 주소|

미디어 주소를 [Uri](https://developer.android.com/reference/android/net/Uri) 타입으로 입력 받아서 미디어를 로드하기 위한 메서드입니다.

## load

```kotlin
fun load(mediaItem: MediaItem)
```

|파라미터|타입|설명|
|:--:|:--:|---|
|mediaItem|[MediaItem](https://developer.android.com/reference/androidx/media3/common/MediaItem)|로드하려는 [미디어 아이템](https://developer.android.com/reference/androidx/media3/common/MediaItem)|

미디어 아이템을 로드하기 위한 메서드입니다.

## load

```kotlin
fun load(mediaItems: List<MediaItem>)
```

|파라미터|타입|설명|
|:--:|:--:|---|
|mediaItems|List\<[MediaItem](https://developer.android.com/reference/androidx/media3/common/MediaItem)\>|로드하려는 [미디어 아이템](https://developer.android.com/reference/androidx/media3/common/MediaItem)의 리스트|

미디어 아이템 목록을 로드하기 위한 메서드입니다.

## pause

```java
fun pause()
```

미디어를 일시 정지하기 위한 메서드입니다.

<div align="right">
참고: <a href="https://developer.android.com/reference/kotlin/androidx/media3/common/Player">Player</a>의 <a href="https://developer.android.com/reference/kotlin/androidx/media3/common/Player#pause()">pause()</a>
</div>

## play

```kotlin
fun play()
```

미디어를 재생하기 위한 메서드입니다.

<div align="right">
참고: <a href="https://developer.android.com/reference/kotlin/androidx/media3/common/Player">Player</a>의 <a href="https://developer.android.com/reference/kotlin/androidx/media3/common/Player#play()">play()</a>
</div>

## prepare

```kotlin
fun prepare()
```

미디어 관련 기본 설정을 하기 위한 메서드입니다. 이 메서드를 실행하면, [defaultPlaybackRate](#defaultplaybackrate), [defaultMuted](#defaultmuted) 설정을 미디어 플레이어에 적용하고, 미디어를 로딩하기 시작하고 재생에 필요한 리소스를 확보합니다.

<div align="right">
참고: <a href="https://developer.android.com/reference/kotlin/androidx/media3/common/Player">Player</a>의 <a href="https://developer.android.com/reference/kotlin/androidx/media3/common/Player#prepare()">prepare()</a>
</div>

## release

```kotlin
fun release()
```

미디어 목록, 이벤트 핸들러, 리스너 등 미디어에 관련하여 설정했던 것들을 모두 해제한 후, 미디어 플레이어를 릴리스 시키기 위한 메서드입니다. 미디어 플레이어를 더이상 사용하지 않을 시에는 반드시 사용해야 합니다.

<div align="right">
참고: <a href="https://developer.android.com/reference/kotlin/androidx/media3/common/Player">Player</a>의 <a href="https://developer.android.com/reference/kotlin/androidx/media3/common/Player#release()">release()</a>
</div>

## seekBack

```kotlin
fun seekBack()
```

현재 위치에서 속성 [seekBackIncrement](#seekbackincrement) 만큼 전으로 이동하기 위한 메서드입니다.

<div align="right">
참고: <a href="https://developer.android.com/reference/kotlin/androidx/media3/common/Player">Player</a>의 <a href="https://developer.android.com/reference/kotlin/androidx/media3/common/Player#seekBack()">seekBack()</a>
</div>

## seekBack

```kotlin
fun seekBack(increment: Duration)
```

|파라미터|타입|설명|
|:---:|:--:|---|
|increment|[java.time.Duration](https://developer.android.com/reference/java/time/Duration)|새로운 위치는 현재 위치에서 입력된 파라미터를 뺀 결과입니다.<br>즉, 음수 입력 시, 입력된 파라미터의 절대값만큼 후로 이동합니다.|

현재 위치에서 입력된 시간 전으로 이동하기 위한 메서드입니다.

## seekForward

```kotlin
fun seekForward()
```
현재 위치에서 속성 [seekForwardIncrement](#seekforwardincrement) 만큼 후로 이동하기 위한 메서드입니다.

<div align="right">
참고: <a href="https://developer.android.com/reference/kotlin/androidx/media3/common/Player">Player</a>의 <a href="https://developer.android.com/reference/kotlin/androidx/media3/common/Player#seekForward()">seekForward()</a>
</div>

## seekForward

```kotlin
fun seekForward(increment: Duration)
```

|파라미터|타입|설명|
|:--:|:--:|---|
|increment|[java.time.Duration](https://developer.android.com/reference/java/time/Duration)|새로운 위치 현재 위치에서 입력된 파라미터를 더한 결과입니다.<br>즉, 음수 입력 시, 입력된 파라미터의 절대값만큼 되돌아갑니다.|

현재 위치에서 입력된 시간 후로 이동하기 위한 메서드입니다.

## seekTo

```kotlin
fun seekTo(position: Duration, force: Boolean = false)
```

|파라미터|타입|설명|
|:--:|:--:|---|
|position|[java.time.Duration](https://developer.android.com/reference/java/time/Duration)|입력된 파라미터로 재생 위치를 이동합니다.|
|force|Boolean|강제로 위치를 바꿔야할 때, true로 설정. 기본값은 false입니다.|

입력된 시간 위치로 이동하기 위한 메서드입니다.

## selectTrack

```kotlin
fun selectTrack(track: Track)
```

|파라미터|타입|설명|
|:--:|:--:|---|
|track|[Track](../../class/track/home.md)|활성화 할 (오디오,비디오,자막)트랙|

트랙을 선택하여 활성화하는 메서드입니다.

<div align="right">
참고: <a href="../../class/track/home.md">Track</a><br>
<a href="../../class/audio-track/home.md">AudioTrack</a><br>
<a href="../../class/subtitle-track/home.md">SubtitleTrack</a><br>
<a href="../../class/video-track/home.md">VideoTrack</a><br>
<a href="#deselecttrack"></a>
</div>

## startScrubbing

```
fun startScrubbing(position: Duration)
```

## stopScrubbing

```
fun stopScrubbing(position: Duration)
```

## updateScrubbing

```
fun updateScrubbing(position: Duration)
```

## addEventHandler

```kotlin
fun addEventHandler(handler: EventHandler): EventHandler
```

|파라미터|타입|반환 타입|설명|
|:--:|:--:|:--:|---|
|handler|[EventHandler](../../class/event-handlers/home.md)|[EventHandler](../../class/event-handlers/home.md)|추가할 [이벤트 핸들러](../../class/event-handlers/home.md)|

[이벤트 핸들러](../../class/event-handlers/home.md)를 추가하기 위한 메서드입니다.
반환된 이벤트 핸들러는 이벤트 핸들러를 제거할 목적으로 [removeEventHandler()](#removeeventhandler)에서 사용할 수 있습니다.
이벤트 핸들러를 추가한 후, 해당 이벤트 핸들러가 더 이상 필요 없을 때는 반드시 [removeEventHandler()](#removeeventhandler) 메서드를 사용해서 제거하세요.

## removeEventHandler

```kotlin
fun removeEventHandler(handler: EventHandler)
```

|파라미터|타입|설명|
|:---:|:--:|---|
|handler|[EventHandler](../../class/event-handlers/home.md)|제거할 [이벤트 핸들러](../../class/event-handlers/home.md)|

[addEventHandler()](#addeventhandler)로 추가된 [이벤트 핸들러](../../class/event-handlers/home.md)를 제거하기 위한 메서드입니다.

## addListener

```kotlin
fun addListener(listener: MediaPlayer.Listener)
```

|파라미터|타입|설명|
|:--:|:--:|---|
|listener|[MediaPlayer.Listener](../event-listeners/home.md)|추가할 [이벤트 리스너](../event-listeners/home.md)|

[이벤트 리스너](../event-listeners/home.md)를 추가하기 위한 메서드입니다. 이벤트 리스너를 추가한 후, 해당 이벤트 리스너가 더 이상 필요 없을 때는 반드시 [removeListener()](#removelistener) 메서드를 사용해서 제거하세요.

## removeListener

```kotlin
fun removeListener(listener: MediaPlayer.Listener)
```

|파라미터|타입|설명|
|:--:|:--:|---|
|listener|[MediaPlayer.Listener](../event-listeners/home.md)|제거할 [이벤트 리스너](../event-listeners/home.md)|

[addListener()](#addlistener)로 추가된 [이벤트 리스너](../event-listeners/home.md)를 제거하기 위한 메서드입니다.

<br>

# 클래스

## RepeatRange

[MediaPlayer.RepeatRange](../../class/media-player-repeat-range/home.md)에 자세한 설명이 있습니다. 