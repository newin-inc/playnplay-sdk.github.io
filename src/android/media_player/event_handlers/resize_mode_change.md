# ResizeModeChange

EventHandler.ResizeModeChange 화면 크기 조절을 하는 시점에 사용하기 위한 핸들러입니다.

<div align="right">
이벤트 리스너: <a href="../event_listeners/on_resize_mode_change.md">onResizeModeChange</a>
</div>

```kotlin
data class ResizeModeChange(val listener: (Int) -> Unit)
```

\
사용 예제
```kotlin
mediaPlayer.addEventHandler(EventHandler.ResizeModeChange {
val currentResizeMode = it
})
```
