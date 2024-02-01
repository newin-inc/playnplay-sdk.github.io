# Pause

EventHandler.Pause는 미디어 일시 정지를 요청한 후, 일시 정지 상태로 진입하는 시점에 사용하기 위한 핸들러입니다.
<div align="right">
이벤트 리스너: <a href="../event_listeners/on_pause.md">onPause()</a><br>
비교: <a href="./play.md">Play</a>
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
