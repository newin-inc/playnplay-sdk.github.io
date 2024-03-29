# 속성

## autoplay

```kotlin
var autoplay: Boolean
```
미디어가 중단되지 않고 충분한 양의 미디어 사용이 가능할 때 즉시 재생이 시작되어야 하는지를 나타내는 속성입니다. true면 자동 재생합니다.

| 타입 | 설명 | 설정 | 기본값 |
|:----:|---|:---:|:---:|
|Boolean | 미디어가 로딩되었을 때, 즉 미디어가 준비가 된 즉시 재생할 것인지 결정하는 값 | 가능 | true |

\
사용 예제
```kotlin
mediaPlayer.autoplay = false	// 다음 미디어로 이동 시, 자동 재생 하지 않음
```

<br><br>
## buffered

```kotlin
val buffered: TimeRanges
```
버퍼에 있는 미디어 리소스의 구간을 반환합니다.

| 타입 | 설명 | 설정 |
|:---:|---|:---:|
|[com.newin.nplayer.<br>sdk.utils.TimeRanges](../../class/time-ranges/home.md)| 현재 버퍼에 담고 있는 미디어 리소스의 구간 데이터 | 불가능 |

\
사용 예제
```kotlin
val start = mediaPlayer.buffered.start(0)	// 첫 번째 timeRange의 시작 위치
val end = mediaPlayer.buffered.end(0)		// 첫 번째 timeRange의 종료 위치
```
이때, 사용되는 start(index)와 end(index)의 타입은 [kotlin.time.Duration](https://kotlinlang.org/api/latest/jvm/stdlib/kotlin.time/-duration/)입니다.

<br><br>
## currentMediaItem

```kotlin
val currentMediaItem: MediaItem
```
현재 재생 중인 미디어 아이템을 의미하는 속성입니다.

| 타입 | 설명 | 설정 |
|:---:|:---:|-----|
| [MediaItem](https://developer.android.com/reference/androidx/media3/common/MediaItem) | 현재 재생 중인 미디어 아이템 | 불가능 |

<br><br>
## currentMediaItemIndex

```kotlin
val currentMediaItemIndex: Int
```
현재 재생 중인 미디어 아이템의 index를 의미하는 속성입니다.

| 타입 | 설명 | 설정 |
|:---:|----|:----:|
| Int | 현재 재생 중인 미디어 아이템의 index | 불가능 |

<br><br>
## currentSrc

```kotlin
val currentSrc: Uri?
```
미디어 리소스의 uri를 의미하는 속성입니다.

| 타입 | 설명 | 설정 | 기본값 |
|:---:|----|:---:|:---:|
|[android.net.Uri](https://developer.android.com/reference/android/net/Uri)? | 설정 시, 교체할 미디어 아이템의 Uri<br>반환 시, 현재 선택된 미디어 아이템의 Uri | 가능 | null |

\
사용 예제
```kotlin
mediaPlayer.currentSrc = "https://example.com/media.mp4"

val currentUri = mediaPlayer.currentSrc // "https://example.com/media.mp4"
```

<br><br>
## currentTime

```kotlin
var currentTime: Duration
```
현재 재생 위치를 Duration 단위로 지정합니다.

| 타입 | 설명 | 설정 |
|:---:|----|:---:|
|[kotlin.time.Duration](https://kotlinlang.org/api/latest/jvm/stdlib/kotlin.time/-duration/)| 설정 시, 재생하고 싶은 특정 위치<br>반환 시, 현재 재생 시점| 가능 |

\
사용 예제
```kotlin
mediaPlayer.currentTime = 20.seconds // 20초로 가기

val currentTime = mediaPlayer.currentTime // 20s
```

<br><br>
## defaultMuted

```kotlin
var defaultMuted: Boolean
```
오디오의 음소거 기본 설정을 나타내는 속성입니다.

|타입|설명|설정|기본값|
|:---:|---|:---:|:---:|
|Boolean |음소거 기본 설정 상태|가능|false|

\
사용 예제
```kotlin
mediaPlayer.defaultMuted = true
```

<br><br>
## defaultPlaybackRate

```kotlin
var defaultPlaybackRate: Float
```
미디어의 기본 재생 속도를 나타내는 속성입니다.

|타입|설명|설정|범위|기본값|
|:--:|--|:--:|:--:|:--:|
|Float|미디어의 기본 재생 속도|가능|0.1~4.0|1.0|

\
사용 예제
```kotlin
mediaPlayer.defaultPlaybackRate = 2.0f
```

<br><br>
## deviceVolume

```kotlin
var deviceVolume: Float
```
현재 미디어 플레이어의 음량을 나타내는 속성입니다.

|타입|설명|범위|설정|
|:--:|--|:--:|:--:|
|Float|현재 미디어의 음량|0.0~1.0|가능|

\
사용 예제
```kotlin
mediaPlayer.deviceVolume = 1.0f // 100%의 음량
```

<br><br>
## duration

```kotlin
val duration: Duration
```
현재 미디어 길이를 나타냅니다. 재생 가능한 미디어가 없을 경우 [C.TIME_UNSET](https://developer.android.com/reference/kotlin/androidx/media3/common/C#TIME_UNSET())를 반환

|타입|설명|설정|
|:--:|--|:--:|
|[kotlin.time.Duration](https://kotlinlang.org/api/latest/jvm/stdlib/kotlin.time/-duration/)|현재 미디어의 전체 길이|불가능|

\
사용 예제
```kotlin
val duration = mediaPlayer.duration // 2m 12s
```

<br><br>
## ended

```kotlin
val ended: Boolean
```
미디어 재생 완료 여부를 나타내는 속성입니다.

|타입|설명|설정|
|:--:|--|:--:|
|Boolean|미디어 재생 완료 여부를 반환|불가능|

\
사용 예제
```kotlin
if (mediaPlayer.ended) {
    finish()
}
```

<br><br>
## error

```kotlin
val error: PlaybackException?
```
최근 발생한 에러를 나타내는 속성입니다.

|타입|설명|설정|
|:--:|--|:--:|
|[PlaybackException](https://developer.android.com/reference/kotlin/androidx/media3/common/PlaybackException)?|최근에, 즉, 마지막으로 발생한 에러. 발생한 에러가 없을 경우 null을 반환|불가능|

\
사용 예제
```kotlin
when(mediaPlayer.error?.errorCode) {
    ERROR_CODE_TIMEOUT -> /** handle the case */
}
```

<br><br>
## loop

```kotlin
var loop: Boolean
```
미디어 재생이 끝났을 때 다시 처음부터 재생할 지 여부를 나타내는 속성입니다.

|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|Boolean|미디어 반복 재생 여부를 결정하는 값|가능|false|

\
사용 예제
```kotlin
mediaPlayer.loop = true
```

<br><br>
## mediaItems

```kotlin
val mediaItems: List<MediaItem>
```
미디어 아이템들의 목록을 나타내는 속성입니다. 해당 속성은 설정이 불가능합니다. 목록 전체를 바꾸고 싶을 때는 Player.setMediaItems()를 사용하시면 됩니다.

|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|List\<[MediaItem](https://developer.android.com/reference/androidx/media3/common/MediaItem)\>|현재 재생 목록에 있는 미디어 아이템들|불가능|[]|

\
사용 예제
```kotlin
val mediaItems = mediaPlayer.mediaItems // 현재 미디어 아이템들을 나타냅니다

val newMediaItems = mediaItems.slice(3..8)  // index 3이상 8이하 아이템만 잘라내고
mediaPlayer.setMediaItems(newMediaItems)    // 잘라낸 아이템으로 목록 교체
```

<br><br>
## muted

```kotlin
var muted: Boolean
```
음소거 여부를 나타내는 속성입니다. 음소거면 true, 아니면 false입니다.

|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|Boolean|오디오 음소거 여부|가능|false|

\
사용 예제
```kotlin
button.setOnClickListener {
    mediaPlayer.muted = !mediaPlayer.muted
}
```

<br><br>
## paused

```kotlin
val paused: Boolean
```
미디어가 일시 정지 상태인지 나타내는 속성입니다.
다음과 같은 조건 중 하나라도 해당할 때, true를 반환합니다.
1. playWhenReady의 값이 false일 때,
2. playbackState가 STATE_IDLE일 때 (제한된 리소스를 가지고 있을 때),
3. playbackState가 STATE_ENDED일 때 (미디어 재생이 끝났을 때).

|타입|설명|설정|
|:--:|--|:--:|
|Boolean|미디어 일시 정지 여부|불가능|

\
사용 예제
```kotlin
if (mediaPlayer.paused) {
    displayPlayButton()
}
```

<br><br>
## playbackRate

```kotlin
var playbackRate: Float
```
미디어가 재생 속도를 나타내는 속성입니다. 정상 속도는 1.0이고, 1보다 작을 때는 느리게, 1보다 클 때는 빠르게 재생합니다. 이 때, 오디오 피치 유지 여부는 [preservesPitch](#preservespitch)의 값으로 제어할 수 있습니다.

|타입|설명|설정|범위|기본값|
|:--:|--|:--:|:--:|:--:|
|Float|재생 속도|가능|0.1~4.0|1.0|

\
사용 예제
```kotlin
mediaPlayer.playbackRate = 2.0f
```

<br><br>
## preservesPitch

```kotlin
var preservesPitch: Boolean
```
재생 속도에 따른 오디오 피치 유지 여부를 나타내는 속성입니다. 값이 true면 재생 속도가 변해도 오디오 피치는 변함 없으며, false일 경우 재생 속도에 따라 오디오 피치가 변합니다.

|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|Boolean|오디오 피치 유지 여부|가능|true|

\
사용 예제
```kotlin
mediaPlayer.preservesPitch = false // 재생 속도에 따라 오디오 피치가 변하게 됨
```

<br><br>
## repeatRange

```kotlin
var repeatRange: RepeatRange?
```
반복 구간 범위를 나타내는 속성입니다.
null이 아닌 값으로 설정을 했을 경우 해당 구간을 지속해서 반복 재생합니다. start가 설정되어 있지 않을 경우에는 반복 구간의 시작은 미디어의 맨 앞부분이며, end가 설정되어 있지 않을 경우에는 반복 구간의 끝은 미디어의 맨 마지막 부분으로 간주합니다.

|타입|설명|설정|
|:--:|--|:--:|
|[MediaPlayer.RepeatRange](../../class/media-player-repeat-range/home.md)?|반복 구간 범위|가능|

\
사용 예제
```kotlin
mediaPlayer.repeatRange = MediaPlayer.RepeatRange(10.seconds, 2.minutes)
val start1 = mediaPlayer.repeatRange?.start     // 10s
val end1 = mediaPlayer.repeateRange?.end        // 2m

mediaPlayer.repeatRange = mediaPlayer.repeatRange?.withStart(20.seconds)
val repeatRange = mediaPlayer.repeatRange	
// RepeatRange(start=20s, end=2m)

mediaPlayer.repeatRange = mediaPlayer.repeatRange?.withEnd(30.seconds)
val start2 = mediaPlayer.repeatRange?.start     // 20s
val end2 = mediaPlayer.repeateRange?.end        // 30s
```

<br><br>
## resizeMode

```kotlin
var resizeMode: @ResizeMode Int
```
화면 크기 상태를 나타내는 속성입니다.

|타입|설명|설정|기본값|
|:--:|---|:--:|:--:|
|Int|[화면 크기 상태](../../media_player_view/screen_layout/details.md#7-화면-크기-조절-버튼)를 나타냄.<br>참고: [AspectRatioFrameLayout.ResizeMode](https://developer.android.com/reference/androidx/media3/ui/AspectRatioFrameLayout.ResizeMode)|가능|0|

<br><br>
## seeking

```kotlin
val seeking: Boolean
```
미디어가 탐색 중이지를 나타내는 속성입니다. 현재 미디어가 새로운 위치로 이동하고 있거나 탐색중이면 true를 반홥합니다.

|타입|설명|설정|
|:--:|--|:--:|
|Boolean|현재 미디어가 새로운 위치로 이동하고 있는지(탐색 중인지) 여부|불가능|

\
사용 예제
```kotlin
if (mediaPlayer.seeking) {
    mediaPlayer.pause()
}
```

\
\
\
\

----
----

# 메서드

## fastSeek

```kotlin
fun fastSeek(to: Duration)
```
입력된 시간으로 바로 이동하기 위한 메서드입니다.

|파라미터|타입|설명|
|:---:|:--:|---|
|to|[kotlin.time.Duration](https://kotlinlang.org/api/latest/jvm/stdlib/kotlin.time/-duration/)|재생하고자 하는 위치 값|

* 주의: 해당 메서드의 원래 목적은 정확한 위치보다는 새로운 위치에서 더 빠르게 재생을 하도록 하는 것이었습니다. 그러나 안드로이드에서는 현재 정확한 위치와 빠른 재생을 동시에 수행할 수 없기 때문에, 현재는 currentTime, seekTo()를 사용한 것과 유사한 결과를 얻게 됩니다. 즉, 이 메서드를 사용하면 정확한 위치로 이동하게 됩니다. 향후 안드로이드에서 이러한 기능을 제공할 경우, 원래 목적에 맞게  업데이트될 예정입니다.

\
사용 예제
```kotlin
mediaPlayer.fastSeek(50.seconds)
```

<br><br>
## load

```kotlin
fun load(uri: String)
```
미디어 주소를 문자열로 입력 받아서 미디어를 로드하기 위한 메서드입니다.

|파라미터|타입|설명|
|:--:|:--:|---|
|uri|String|스트링 형태의 미디어 주소|

\
사용 예제
```kotlin
mediaPlayer.load("https://example.com/media.mp4")  // 타입: String
mediaPlayer.load(uri)   // 타입: Uri
mediaPlayer.load(mediaItem) // 타입: MediaItem
mediaPlayer.load(listOf(mediaItem1, mediaItem2))    // 타입: List<MediaItem>
```

<br><br>
## load

```kotlin
fun load(uri: Uri)
```
미디어 주소를 Uri 타입으로 입력 받아서 미디어를 로드하기 위한 메서드입니다.

|파라미터|타입|설명|
|:--:|:--:|---|
|uri|Uri| [Uri](https://developer.android.com/reference/android/net/Uri)|

\
사용 예제
```kotlin
mediaPlayer.load(uri)   // 타입: Uri
```

<br><br>
## load

```kotlin
fun load(mediaItem: MediaItem)
```
미디어 아이템을 로드하기 위한 메서드입니다.

|파라미터|타입|설명|
|:--:|:--:|---|
|mediaItem|[MediaItem](https://developer.android.com/reference/androidx/media3/common/MediaItem)|[미디어 아이템](https://developer.android.com/reference/androidx/media3/common/MediaItem)|

\
사용 예제
```kotlin
mediaPlayer.load(mediaItem) // 타입: MediaItem
```

<br><br>
## load

```kotlin
fun load(mediaItems: List<MediaItem>)
```
미디어 아이템 목록을 로드하기 위한 메서드입니다.

|파라미터|타입|설명|
|:--:|:--:|---|
|mediaItems|List\<[MediaItem](https://developer.android.com/reference/androidx/media3/common/MediaItem)\>|[미디어 아이템](https://developer.android.com/reference/androidx/media3/common/MediaItem)의 리스트|

\
사용 예제
```kotlin
mediaPlayer.load(listOf(mediaItem1, mediaItem2))    // 타입: List<MediaItem>
```

<br><br>
## pause

```kotlin
fun pause()
```
미디어를 일시 정지하기 위한 메서드입니다.\

<div align="right">
참고: <a href="https://developer.android.com/reference/kotlin/androidx/media3/common/Player#pause()">Player.pause</a>
</div>

<br><br>
## play

```kotlin
fun play()
```
미디어를 재생하기 위한 메서드입니다.\

<div align="right">
참고: <a href="https://developer.android.com/reference/kotlin/androidx/media3/common/Player#play()">Player.play</a>
</div>

<br><br>
## prepare

```kotlin
fun prepare()
```
미디어 관련 기본 설정을 하기 위한 메서드입니다. 이 메서드를 실행하면, [defaultPlaybackRate](#defaultplaybackrate), [defaultMuted](#defaultmuted) 설정을 미디어 플레이어에 적용하고, 미디어를 로딩하기 시작하고 재생에 필요한 리소스를 확보합니다.\

<div align="right">
참고: <a href="https://developer.android.com/reference/kotlin/androidx/media3/common/Player#prepare()">Player.prepare()</a>
</div>

<br><br>
## release

```kotlin
fun release()
```

미디어 목록, 이벤트 핸들러, 리스너 등 미디어에 관련하여 설정했던 것들을 모두 해제한 후, 미디어 플레이어를 릴리스 시키기 위한 메서드입니다.\

<div align="right">
참고: <a href="https://developer.android.com/reference/kotlin/androidx/media3/common/Player#release()">Player.release()</a>
</div>

<br><br>
## seekBack

```kotlin
fun seekBack(increment: Duration)
```
현재 위치에서 입력된 시간 전으로 이동하기 위한 메서드입니다.

|파라미터|타입|설명|
|:---:|:--:|---|
|increment|[kotlin.time.Duration](https://kotlinlang.org/api/latest/jvm/stdlib/kotlin.time/-duration/)|새로운 위치는 현재 위치에서 입력된 파라미터를 뺀 결과입니다.<br>즉, 음수 입력 시, 입력된 파라미터의 절대값만큼 후로 이동합니다.|

\
사용 예제
```kotlin
mediaPlayer.seekTo(30.seconds)
	
mediaPlayer.seekBack(10.seconds)
val currentTime = mediaPlayer.currentTime   // 20s
```

<br><br>
## seekForward

```kotlin
fun seekForward(increment: Duration)
```
현재 위치에서 입력된 시간 후로 이동하기 위한 메서드입니다.

|파라미터|타입|설명|
|:--:|:--:|---|
|increment|[kotlin.time.Duration](https://kotlinlang.org/api/latest/jvm/stdlib/kotlin.time/-duration/)|새로운 위치 현재 위치에서 입력된 파라미터를 더한 결과입니다.<br>즉, 음수 입력 시, 입력된 파라미터의 절대값만큼 되돌아갑니다.|

\
사용 예제
```kotlin
mediaPlayer.seekTo(30.seconds)
	
mediaPlayer.seekForward(10.seconds)
val currentTime = mediaPlayer.currentTime	// 40s
```

<br><br>
## seekTo

```kotlin
fun seekTo(position: Duration, force: Boolean = false)
```
입력된 시간 위치로 이동하기 위한 메서드입니다.

|파라미터|타입|설명|
|:--:|:--:|---|
|position|[kotlin.time.Duration](https://kotlinlang.org/api/latest/jvm/stdlib/kotlin.time/-duration/)|입력된 파라미터로 재생 위치를 이동합니다.|
|force|Boolean|강제로 위치를 바꿔야할 때, true로 설정. 기본값은 false입니다.|

\
사용 예제
```kotlin
mediaPlayer.seekTo(30.seconds)
val currentTime = mediaPlayer.currentTime	// 30s
```

<br><br>
## addEventHandler

```kotlin
fun addEventHandler(handler: EventHandler): EventHandler
```

[이벤트 핸들러](../../class/event-handlers/home.md)를 추가하기 위한 메서드입니다.
반환된 핸들러는 이벤트 핸들러를 제거할 목적으로 [removeEventHandler()](#removeeventhandler)에서 사용할 수 있습니다.

|파라미터|타입|반환 타입|설명|
|:--:|:--:|:--:|---|
|handler|[EventHandler](../../class/event-handlers/home.md)|[EventHandler](../../class/event-handlers/home.md)|[이벤트 핸들러](../../class/event-handlers/home.md) 참고|

\
사용 예제
```kotlin
mediaPlayer.addEventHandler(EventHandler.Ended {
    finish()	// 미디어 재생이 끝나면 액티비티를 종료합니다.
})
```

<br><br>
## removeEventHandler

```kotlin
fun removeEventHandler(handler: EventHandler)
```
[이벤트 핸들러](../../class/event-handlers/home.md)를 제거하기 위한 메서드입니다.

|파라미터|타입|설명|
|:---:|:--:|---|
|handler|[EventHandler](../../class/event-handlers/home.md)|[이벤트 핸들러](../../class/event-handlers/home.md) 참고|

\
사용 예제
```kotlin
val endedHandler = mediaPlayer.addEventHandler(EventHandler.Ended {
    finish()
})

/**
	do something
*/

mediaPlayer.removeEventHandler(endedHandler)
```

<br><br>
## addEventListener

```kotlin
fun addEventListener(listener: EventListener)
```
[이벤트 리스너](../event-listeners/home.md)를 추가하기 위한 메서드입니다.

|파라미터|타입|설명|
|:--:|:--:|---|
|listener|[EventListener](../event-listeners/home.md)|[이벤트 리스너](../event-listeners/home.md) 참고|

\
사용 예제
```kotlin
class ComponentListener(view: View): EventListener {
    override fun onPlay() {
        showPauseIcon()
    }
}

val componentListener = ComponentListener(this)

mediaPlayer.addEventListener(componentListener)
```

<br><br>
## removeEventListener

```kotlin
fun removeEventListener(listener: EventListener)
```
[이벤트 리스너](../event-listeners/home.md)를 제거하기 위한 메서드입니다.

|파라미터|타입|설명|
|:--:|:--:|---|
|listener|[EventListener](../event-listeners/home.md)|[이벤트 리스너](../event-listeners/home.md) 참고|

\
사용 예제
```kotlin
// addEventListener()의 사용 예제에 이어서 구현한 내용입니다.

mediaPlayer.removeEventListener(componentListener)
```

\
\
\
\

----
----

# 클래스

## RepeatRange

[여기](../../class/media-player-repeat-range/home.md)에 자세한 설명이 있습니다. 