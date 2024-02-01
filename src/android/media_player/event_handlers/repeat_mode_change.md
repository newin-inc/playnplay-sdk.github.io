# RepeatModeChange

EventHandler.RepeatModeChange는 반복 모드가 변경되는 시점에 사용하기 위한 핸들러입니다. 이벤트 리스너는 [Player.Listener](https://developer.android.com/reference/androidx/media3/common/Player.Listener#onRepeatModeChanged(int))에서 제공하는 것을 사용하시면 됩니다.

```kotlin
data class RepeatModeChange(val listener: (@Player.RepeatMode Int) -> Unit)
```

\
사용 예제
```kotlin
mediaPlayer.addEventHandler(EventHandler.RepeatModeChange {
    showRepeatIcon(it)
})
```