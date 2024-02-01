# DurationChange

EventHandler.DurationChange는 미디어의 길이(duration)가 변경되었을 때를 처리하기 위한 핸들러입니다.\

<div align="right">
이벤트 리스너: <a href="../event_listeners/on_duration_change.md">onDurationChange()</a>
</div>

```kotlin
// (Duration): 미디어의 길이
data class DurationChange(val listener: (Duration) -> Unit)
```

\
사용 예제
```kotlin
mediaPlayer.addEventHandler(EventHandler.DurationChange {
    updateTimeBar(it)
})
```
