# RateChange

EventHandler.RateChange는 재생 속도가 변경되는 시점에 사용하기 위한 핸들러입니다.
주의: 재생 속도는 그대로이지만, preservesPitch의 값이 변경될 때도 호출 됨

<div align="right">
이벤트 리스너: <a href="../event_listeners/on_rate_change.md">onRateChange()</a>
</div>

```kotlin
data class RateChange(val listener: (Float) -> Unit)
```

\
사용 예제
```kotlin
mediaPlayer.addEventHandler(EventHandler.RateChange {
    val currentPlaybackRate = it	// 예: 2.0f
})
```
