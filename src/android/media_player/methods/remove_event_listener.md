# removeEventListener()

MediaPlayer.removeEventListener()는 [이벤트 리스너](../event_listeners/home.md)를 제거하기 위한 메서드입니다.
```kotlin
fun removeEventListener(listener: EventListener)
```

|파라미터|타입|설명|
|:--:|:--:|---|
|listener|EventListener|[이벤트 리스너](../event_listeners/home.md) 참고|

\
사용 예제
```kotlin
// addEventListener()의 사용 예제에 이어서 구현한 내용입니다.

mediaPlayer.removeEventListener(componentListener)
```