# Playing

EventHandler.Playing은 재생 위치가 변경되어 재생 되는 것을 포함하여, 미디어가 일시 정지 상태에서 재생 상태로 변경되는 시점에 사용하기 위한 핸들러입니다.

즉, seekBack(), seekForward(), seekTo() 등의 호출로 재생 위치가 변경되기 위해, 미디어가 잠시 멈추었다가 다시 재생되는 이벤트를 처리할 수 있다는 것이 EventHandler.Play와 다른 점입니다.
Playing과 관련된 이벤트 핸들러는 Play 이벤트 이후에 호출됩니다.

<div align="right">
이벤트 리스너: <a href="../event_listeners/on_playing.md">onPlaying()</a><br>
참고: <a href="./play.md">Play</a>
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
