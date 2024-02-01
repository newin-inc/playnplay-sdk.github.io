# PositionDiscontinuity

EventHandler.PositionDiscontinuity는 재생 위치가 변경되는 시점에 사용하기 위한 핸들러입니다.

<div align="right">
이벤트 리스너: <a href="../event_listeners/on_position_discontinuity.md">onPositionDiscontinuity()<a>
</div>

```kotlin
data class PositionDiscontinuity(
val listener: (MediaPlayer, Duration, Duration) -> Unit
)
```

\
사용 예제
```kotlin
mediaPlayer.addEventHandler(EventHandler.PositionDiscontinuity {
    _mediaPlayer, oldPosition, newPosition ->
    _mediaPlayer.updateStatusText("$oldPosition -> $newPosition")   // 26.7s -> 3m 20s	
})
```

