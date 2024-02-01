# Ended

EventHandler.Ended는 재생 목록의 마지막 미디어의 재생이 완료 된 시점에 사용하기 위한 핸들러입니다.

<div align="right">
이벤트 리스너: <a href="../event_listeners/on_ended.md">onEnded()</a>
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
