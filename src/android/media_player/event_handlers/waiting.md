# Waiting

EventHandler.Waiting은 일시적인 버퍼 부족, 즉 데이터가 충분히 로딩되지 못하거나 데이터가 없어서 재생이 정지된 시점에 사용하기 위한 핸들러입니다.

<div align="right">
이벤트 리스너: <a href="../event_listeners/on_waiting.md">onWaiting()</a>
</div>

```kotlin
data class Waiting(val listener: () -> Unit)
```

\
사용 예제
```kotlin
mediaPlayer.addEventHandler(EventHandler.Waiting {
    displayAlert("Try it again, later!")
})
```
