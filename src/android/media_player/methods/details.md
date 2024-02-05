# fastSeek()

MediaPlayer.fastSeek()는 입력된 시간으로 바로 이동하기 위한 메서드입니다.
```kotlin
fun fastSeek(to: Duration)
```

|파라미터|타입|설명|
|:---:|:--:|---|
|to|kotlin.time.Duration|재생하고자 하는 위치 값|

* 주의: 해당 메서드의 원래 목적은 정확한 위치보다는 새로운 위치에서 더 빠르게 재생을 하도록 하는 것이었습니다. 그러나 안드로이드에서는 현재 정확한 위치와 빠른 재생을 동시에 수행할 수 없기 때문에, 현재는 currentTime, seekTo()를 사용한 것과 유사한 결과를 얻게 됩니다. 즉, 이 메서드를 사용하면 정확한 위치로 이동하게 됩니다. 향후 안드로이드에서 이러한 기능을 제공할 경우, 원래 목적에 맞게  업데이트될 예정입니다.

\
사용 예제
```kotlin
mediaPlayer.fastSeek(50.seconds)
```

<br><br><br><br>

--------
# load()

MediaPlayer.load()는 미디어를 로드하기 위한 메서드입니다.
```kotlin
fun load(uri: String)
fun load(uri: Uri)
fun load(mediaItem: MediaItem)
fun load(mediaItems: List<MediaItem>)
```

|파라미터|타입|설명|
|:--:|:--:|---|
|uri|String|스트링 형태의 미디어 주소|
|uri|Uri| [Uri](https://developer.android.com/reference/android/net/Uri) 참고|
|mediaItem|MediaItem|[미디어 아이템](https://developer.android.com/reference/androidx/media3/common/MediaItem) 참고|
|mediaItems|List<MediaItem>|미디어 아이템의 리스트|

\
사용 예제
```kotlin
mediaPlayer.load("https://미디어주소.mp4")  // 타입: String
mediaPlayer.load(uri)   // 타입: Uri
mediaPlayer.load(mediaItem) // 타입: MediaItem
mediaPlayer.load(listOf(mediaItem1, mediaItem2))    // 타입: List<MediaItem>
```

<br><br><br><br>

--------
# pause()

Player.pause()는 미디어를 일시 정지하기 위한 메서드입니다.\

<div align="right">
참고: <a href="https://developer.android.com/reference/kotlin/androidx/media3/common/Player#pause()">Player.pause</a>
</div>

<br><br><br><br>

--------
# play()

Player.play()는 미디어를 재생하기 위한 메서드입니다.\

<div align="right">
참고: <a href="https://developer.android.com/reference/kotlin/androidx/media3/common/Player#play()">Player.play</a>
</div>

<br><br><br><br>

--------
# prepare()

Player.prepare()는 미디어 관련 기본 설정을 하기 위한 메서드입니다. 이 메서드를 실행하면, [defaultPlaybackRate](../properties/details.md#defaultplaybackrate), [defaultMuted](../properties/details.md#defaultmuted) 설정을 미디어 플레이어에 적용하고, 미디어를 로딩하기 시작하고 재생에 필요한 리소스를 확보합니다.\

<div align="right">
참고: <a href="https://developer.android.com/reference/kotlin/androidx/media3/common/Player#prepare()">Player.prepare()</a>
</div>

<br><br><br><br>

--------
# release()

Player.release()는 미디어 목록, 이벤트 핸들러, 리스너 등 미디어에 관련하여 설정했던 것들을 모두 해제한 후, 미디어 플레이어를 릴리스 시키기 위한 메서드입니다.\

<div align="right">
참고: <a href="https://developer.android.com/reference/kotlin/androidx/media3/common/Player#release()">Player.release()</a>
</div>

<br><br><br><br>

--------
# seekBack()

MediaPlayer.seekBack()는 현재 위치에서 입력된 시간 전으로 이동하기 위한 메서드입니다.
```kotlin
fun seekBack(increment: Duration)
```

|파라미터|타입|설명|
|:---:|:--:|---|
|increment|kotlin.time.Duration|새로운 위치는 현재 위치에서 입력된 파라미터를 뺀 결과입니다.<br>즉, 음수 입력 시, 입력된 파라미터의 절대값만큼 후로 이동합니다.|

\
사용 예제
```kolint
mediaPlayer.seekTo(30.seconds)
	
mediaPlayer.seekBack(10.seconds)
val currentTime = mediaPlayer.currentTime   // 20s
```

<br><br><br><br>

--------
# seekForward()

MediaPlayer.seekForward()는 현재 위치에서 입력된 시간 후로 이동하기 위한 메서드입니다.
```kotlin
fun seekForward(increment: Duration)
```

|파라미터|타입|설명|
|:--:|:--:|---|
|increment|kotlin.time.Duration|새로운 위치 현재 위치에서 입력된 파라미터를 더한 결과입니다.<br>즉, 음수 입력 시, 입력된 파라미터의 절대값만큼 되돌아갑니다.|

\
사용 예제
```kotlin
mediaPlayer.seekTo(30.seconds)
	
mediaPlayer.seekForward(10.seconds)
val currentTime = mediaPlayer.currentTime	// 40s
```

<br><br><br><br>

--------
# seekTo()

MediaPlayer.seekTo()는 입력된 시간 위치로 이동하기 위한 메서드입니다.
```kotlin
fun seekTo(position: Duration)
```

|파라미터|타입|설명|
|:--:|:--:|---|
|position|kotlin.time.Duration|입력된 파라미터로 재생 위치를 이동합니다.|

\
사용 예제
```kotlin
mediaPlayer.seekTo(30.seconds)
val currentTime = mediaPlayer.currentTime	// 30s
```

<br><br><br><br>

--------
# addEventHandler()

MediaPlayer.addEventHandler()는 [이벤트 핸들러](../event_handlers/home.md)를 추가하기 위한 메서드입니다.
반환된 핸들러는 이벤트 핸들러를 제거할 목적으로 [MediaPlayer.removeEventHandler()](#removeeventhandler)에서 사용할 수 있습니다.
```kotlin
fun addEventHandler(handler: EventHandler): EventHandler
```

|파라미터|타입|반환 타입|설명|
|:--:|:--:|:--:|---|
|handler|EventHandler|EventHandler|[이벤트 핸들러](../event_handlers/home.md) 참고|

\
사용 예제
```kotlin
mediaPlayer.addEventHandler(EventHandler.Ended {
    finish()	// 미디어 재생이 끝나면 액티비티를 종료합니다.
})
```

<br><br><br><br>

--------
# removeEventHandler()

MediaPlayer.removeEventHandler()는 [이벤트 핸들러](../event_handlers/home.md)를 제거하기 위한 메서드입니다.
```kotlin
fun removeEventHandler(handler: EventHandler)
```

|파라미터|타입|설명|
|:---:|:--:|---|
|handler|EventHandler|[이벤트 핸들러](../event_handlers/home.md) 참고|

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

<br><br><br><br>

--------
# addEventListener()

MediaPlayer.addEventListener()는 [이벤트 리스너](../event_listeners/home.md)를 추가하기 위한 메서드입니다.
```kotlin
fun addEventListener(listener: EventListener)
```

|파라미터|타입|설명|
|:--:|:--:|---|
|listener|EventListener|[이벤트 리스너](../event_listeners/home.md) 참고|

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

<br><br><br><br>

--------
# removeEventListener()

MediaPlayer.removeEventListener()는 [이벤트 리스너](../event_listeners/home.md)를 제거하기 위한 메서드입니다.
```kotlin
fun removeEventListener(listener: EventListener)
```

|파라미터|타입|설명|
|:--:|:--:|---|
|listener|EventListener|[이벤트 리스너](../event_listeners/home.md) 참고|

\
사용 예제
```kotlin
// addEventListener()의 사용 예제에 이어서 구현한 내용입니다.

mediaPlayer.removeEventListener(componentListener)
```