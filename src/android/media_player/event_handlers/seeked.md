# Seeked

EventHandler.Seeked는 seek 작업이 완료된 시점, 또는 재생 위치가 변경되는 시점, 또는 seeking 값이 false로 변경되는 시점에 사용하기 위한 핸들러입니다.

<div align="right">
이벤트 리스너: <a href="../event_listeners/on_seeked.md">onSeeked()</a><br>
비교: <a href="./seeking.md">Seeking</a>
</div>

```kotlin
data class Seeked(val listener: () -> Unit)
```

\
사용 예제
```kotlin
mediaPlayer.addEventHandler(EventHandler.Seeked {
    assert(it.seeking, false)
})
```
