# LoadStart

EventHandler.LoadStart는 미디어 리소스를 로드하기 시작할 때 사용하기 위한 핸들러입니다.
<div align="right">
이벤트 리스너: <a href="../event_listeners/on_load_start.md">onLoadStart()</a>
</div>

```kotlin
data class LoadStart(val listener: () -> Unit)
```

\
사용 예제
```kotlin
mediaPlayer.addEventHandler(EventHandler.LoadStart {
    displayScreen()
})
```