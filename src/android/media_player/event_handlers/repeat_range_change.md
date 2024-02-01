# RepeatRangeChange

EventHandler.RepeatRangeChange는 구간 반복 모드가 시작되거나 종료되었을 때, 그리고 구간 반복의 시작 위치 또는 종료 위치가 바뀌었을 때를 처리하기 위한 핸들러입니다.

<div align="right">
이벤트 리스너: <a href="../event_listeners/on_repeat_range_change.md">onRepeatRangeChange()</a>
</div>

```kotlin
data class RepeatRangeChange(val listener: (MediaPlayer.RepeatRange?) -> Unit)
```

\
사용 예제
```kotlin
mediaPlayer.addEventHandler(EventHandler.RepeatRangeChange {
    val repeatA = it?.start
    val repeatB = it?.end
})
```