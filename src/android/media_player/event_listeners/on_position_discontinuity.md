# onPositionDiscontinuity()

주의: Player.Listener의 [onPositionDiscontinuity()](https://developer.android.com/reference/androidx/media3/common/Player.Listener#onPositionDiscontinuity(androidx.media3.common.Player.PositionInfo,androidx.media3.common.Player.PositionInfo,int))는 이름만 같고, 사용 방법이 다릅니다.

<div align="right">
이벤트 핸들러: <a href="../event_handlers/position_discontinuity.md">PositionDiscontinuity</a>
</div>

```kotlin
fun onPositionDiscontinuity(
    player: MediaPlayer,
    oldPosition: Duration,
    newPosition: Duration
)
```
