# Progress

EventHandler.Progress는 플레이어가 소스를 읽어오기 시작할 때에 사용하기 위한 핸들러입니다.

<div align="right">
이벤트 리스너: <a href="../event_listeners//on_progress.md">onProgress()</a><br>
비교: <a href="./suspend.md">Suspend</a>
</div>

```kotlin
data class Progress(val listener: () -> Unit)
```

\
사용 예제
```kotlin
mediaPlayer.addEventHandler(EventHandler.Progress {
    removeWaitText()
})
```