# Seeking

EventHandler.Seeking은 seek 작업이 시작되는 시점, 또는 seeking 값이 false에서 true로 변경되는 시점에 사용하기 위한 핸들러입니다.

<div align="right">
이벤트 리스너: <a href="../event_listeners/on_seeking.md">onSeeking()</a><br>
비교: <a href="./seeked.md">Seeked</a>
</div>

```kotlin
data class Seeking(val listener: () -> Unit)
```

\
사용 예제
```kotlin
mediaPlayer.addEventHandler(EventHandler.Seeking {
    assert(it.seeking, true)
})
```
