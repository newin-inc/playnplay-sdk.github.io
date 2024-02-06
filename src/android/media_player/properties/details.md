# autoplay

MediaPlayer.autoplay는 미디어가 중단되지 않고 충분한 양의 미디어 사용이 가능할 때 즉시 재생이 시작되어야 하는지를 나타내는 속성입니다. true면 자동 재생합니다.

| 타입 | 설명 | 설정 | 기본값 |
|:----:|---|:---:|:---:|
|Boolean | 미디어가 로딩되었을 때, 즉 미디어가 준비가 된 즉시 재생할 것인지 결정하는 값 | 가능 | true |

\
사용 예제
```kotlin
mediaPlayer.autoplay = false	// 다음 미디어로 이동 시, 자동 재생 하지 않음
```

<br><br><br><br>

--------
# buffered

MediaPlayer.buffered는 버퍼에 있는 미디어 리소스의 구간을 반환합니다.

| 타입 | 설명 | 설정 |
|:---:|---|:---:|
| [com.newin.nplayer.<br>sdk.utils.TimeRanges](../etc/details.md#timeranges) | 현재 버퍼에 담고 있는 미디어 리소스의 구간 데이터 | 불가능 |

\
사용 예제
```kotlin
val start = mediaPlayer.buffered.start(0)	// 첫 번째 timeRange의 시작 위치
val end = mediaPlayer.buffered.end(0)		// 첫 번째 timeRange의 종료 위치
```
이때, 사용되는 start(index)와 end(index)의 타입은 [kotlin.time.Duration](https://kotlinlang.org/api/latest/jvm/stdlib/kotlin.time/-duration/)입니다.

<br><br><br><br>

--------
# currentMediaItem

Player.currentMediaItem는 현재 재생 중인 미디어 아이템을 의미하는 속성입니다.

| 타입 | 설명 | 설정 |
|:---:|:---:|-----|
| [MediaItem](https://developer.android.com/reference/androidx/media3/common/MediaItem) | 현재 재생 중인 미디어 아이템 | 불가능 |

<br><br><br><br>

--------
# currentMediaItemIndex

Player.currentMediaItemIndex는 현재 재생 중인 미디어 아이템의 index를 의미하는 속성입니다.

| 타입 | 설명 | 설정 |
|:---:|----|:----:|
| Int | 현재 재생 중인 미디어 아이템의 index | 불가능 |

<br><br><br><br>

--------
# currentSrc

MediaPlayer.currentSrc는 미디어 리소스의 uri를 의미하는 속성입니다.

| 타입 | 설명 | 설정 | 기본값 |
|:---:|----|:---:|:---:|
|[android.net.Uri](https://developer.android.com/reference/android/net/Uri)? | 설정 시, 교체할 미디어 아이템의 Uri<br>반환 시, 현재 선택된 미디어 아이템의 Uri | 가능 | null |

\
사용 예제
```kotlin
mediaPlayer.currentSrc = "미디어주소.mp4"

val currentUri = mediaPlayer.currentSrc // "미디어주소.mp4"
```

<br><br><br><br>

--------
# currentTime

MediaPlayer.currentTime은 현재 재생 위치를 Duration 단위로 지정합니다.

| 타입 | 설명 | 설정 |
|:---:|----|:---:|
|[kotlin.time.Duration](https://kotlinlang.org/api/latest/jvm/stdlib/kotlin.time/-duration/)| 설정 시, 재생하고 싶은 특정 위치<br>반환 시, 현재 재생 시점| 가능 |

\
사용 예제
```kotlin
mediaPlayer.currentTime = 20.seconds // 20초로 가기

val currentTime = mediaPlayer.currentTime // 20s
```

<br><br><br><br>

--------
# defaultMuted

MediaPlayer.defaultMuted는 오디오의 음소거 기본 설정을 나타내는 속성입니다.

|타입|설명|설정|기본값|
|:---:|---|:---:|:---:|
|Boolean |음소거 기본 설정 상태|가능|false|

\
사용 예제
```kotlin
mediaPlayer.defaultMuted = true
```

<br><br><br><br>

--------
# defaultPlaybackRate

MediaPlayer.defaultPlaybackRate는 미디어의 기본 재생 속도를 나타내는 속성입니다.

|타입|설명|설정|범위|기본값|
|:--:|--|:--:|:--:|:--:|
|Float|미디어의 기본 재생 속도|가능|0.1~4.0|1.0|

\
사용 예제
```kotlin
mediaPlayer.defaultPlaybackRate = 2.0f
```

<br><br><br><br>

--------
# deviceVolume

MediaPlayer.deviceVolume은 현재 미디어 플레이어의 음량을 나타내는 속성입니다.

|타입|설명|범위|설정|
|:--:|--|:--:|:--:|
|Float|현재 미디어의 음량|0.0~1.0|가능|

\
사용 예제
```kotlin
mediaPlayer.deviceVolume = 1.0f // 100%의 음량
```

<br><br><br><br>

--------
# duration

MediaPlayer.duration은 현재 미디어 길이를 나타냅니다. 재생 가능한 미디어가 없을 경우 [C.TIME_UNSET](https://developer.android.com/reference/kotlin/androidx/media3/common/C#TIME_UNSET())를 반환

|타입|설명|설정|
|:--:|--|:--:|
|[kotlin.time.Duration](https://kotlinlang.org/api/latest/jvm/stdlib/kotlin.time/-duration/)|현재 미디어의 전체 길이|불가능|

\
사용 예제
```kotlin
val duration = mediaPlayer.duration // 2m 12s
```

<br><br><br><br>

--------
# ended

MediaPlayer.ended는 미디어 재생 완료 여부를 나타내는 속성입니다.

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

<br><br><br><br>

--------
# error

MediaPlayer.error는 최근 발생한 에러를 나타내는 속성입니다.

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

<br><br><br><br>

--------
# loop

MediaPlayer.loop는 미디어 재생이 끝났을 때 다시 처음부터 재생할 지 여부를 나타내는 속성입니다.

|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|Boolean|미디어 반복 재생 여부를 결정하는 값|가능|false|

\
사용 예제
```kotlin
mediaPlayer.loop = true
```

<br><br><br><br>

--------
# mediaItems

MediaPlayer.mediaItems는 미디어 아이템들의 목록을 나타내는 속성입니다. 해당 속성은 설정이 불가능합니다. 목록 전체를 바꾸고 싶을 때는 Player.setMediaItems()를 사용하시면 됩니다.

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

<br><br><br><br>

--------
# muted

MediaPlayer.muted는 음소거 여부를 나타내는 속성입니다. 음소거면 true, 아니면 false입니다.

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

<br><br><br><br>

--------
# paused

MediaPlayer.paused는 미디어가 일시 정지 상태인지 나타내는 속성입니다.
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

<br><br><br><br>

--------
# playbackRate

MediaPlayer.playbackRate는 미디어가 재생 속도를 나타내는 속성입니다. 정상 속도는 1.0이고, 1보다 작을 때는 느리게, 1보다 클 때는 빠르게 재생합니다. 이 때, 오디오 피치 유지 여부는 MediaPlayer.preservesPitch의 값으로 제어할 수 있습니다.

|타입|설명|설정|범위|기본값|
|:--:|--|:--:|:--:|:--:|
|Float|재생 속도|가능|0.1~4.0|1.0|

\
사용 예제
```kotlin
mediaPlayer.playbackRate = 2.0f
```

<br><br><br><br>

--------
# preservesPitch

MediaPlayer.preservesPitch는 재생 속도에 따른 오디오 피치 유지 여부를 나타내는 속성입니다. 값이 true면 재생 속도가 변해도 오디오 피치는 변함 없으며, false일 경우 재생 속도에 따라 오디오 피치가 변합니다.

|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|Boolean|오디오 피치 유지 여부|가능|true|

\
사용 예제
```kotlin
mediaPlayer.preservesPitch = false // 재생 속도에 따라 오디오 피치가 변하게 됨
```

<br><br><br><br>

--------
# repeatRange

MediaPlayer.repeatRange는 반복 구간 범위를 나타내는 속성입니다.
null이 아닌 값으로 설정을 했을 경우 해당 구간을 지속해서 반복 재생합니다. start가 설정되어 있지 않을 경우에는 반복 구간의 시작은 미디어의 맨 앞부분이며, end가 설정되어 있지 않을 경우에는 반복 구간의 끝은 미디어의 맨 마지막 부분으로 간주합니다.

|타입|설명|설정|
|:--:|--|:--:|
|[MediaPlayer.RepeatRange](../etc/details.md#repeatrange)?|반복 구간 범위|가능|

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

<br><br><br><br>

--------
# resizeMode

MediaPlayer.resizeMode는 화면 크기 상태를 나타내는 속성입니다.

|타입|설명|설정|기본값|
|:--:|---|:--:|:--:|
|Int|[화면 크기 상태](../../media_player_view/screen_layout/details.md#7-화면-크기-조절-버튼)를 나타냄.<br>참고: [AspectRatioFrameLayout.ResizeMode](https://developer.android.com/reference/androidx/media3/ui/AspectRatioFrameLayout.ResizeMode)|가능|0|

<br><br><br><br>

--------
# seeking

MediaPlayer.seeking은 미디어가 탐색 중이지를 나타내는 속성입니다. 현재 미디어가 새로운 위치로 이동하고 있거나 탐색중이면 true를 반홥합니다.

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
