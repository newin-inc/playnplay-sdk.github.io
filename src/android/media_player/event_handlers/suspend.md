# Suspend

EventHandler.Suspend는 미디어 로드가 중지된 시점에 사용하기 위한 핸들러입니다.

<div align="right">
이벤트 리스너: <a href="../event_listeners/on_suspend.md">onSuspend()</a><br>
비교: <a href="./progress.md">Progress</a>
</div>

```kotlin
data class Suspend(val listener: () -> Unit)
```

\
사용 예제
```kotlin
mediaPlayer.addEventHandler(EventHandler.Suspend {
    displayWaitText()
})
```
