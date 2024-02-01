# TimeUpdate

EventHandler.TimeUpdate는 currentTime이 변경되는 시점에 사용하기 위한 핸들러입니다. 즉, 미디어가 재생이 되는 동안 수행하려는 작업을 이곳에 구현하시면 됩니다.

<div align="right">
이벤트 리스너: <a href="../event_listeners/on_time_update.md">onTimeUpdate()</a>
</div>

```kotlin
data class TimeUpdate(val listener: (Duration) -> Unit)
```

\
사용 예제
```kotlin
mediaPlayer.addEventHandler(EventHandler.TimeUpdate {
    updateTimeBar(it)
    updateTimeLeft(it)
})
```