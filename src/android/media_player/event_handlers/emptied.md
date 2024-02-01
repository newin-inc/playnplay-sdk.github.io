# Emptied

EventHandler.Emptied는 미디어가 제거된 시점, 즉, 미디어 주소가 변경되기 직전, 기존에 존재하던 미디어를 비울 때를 처리하기 위한 핸들러입니다.

<div align="right">
이벤트 리스너: <a href="../event_listeners/on_emptied.md">onEmptied()</a>
</div>

```kotlin
data class Emptied(val listener: () -> Unit)
```

\
사용 예제
```kotlin
mediaPlayer.addEventHandler(EventHandler.Emptied {
    hideMedia()
})
```
