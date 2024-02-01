# removeEventHandler()

MediaPlayer.removeEventHandler()는 [이벤트 핸들러](../event_handlers/home.md)를 제거하기 위한 메서드입니다.
```kotlin
fun removeEventHandler(handler: EventHandler)
```

|파라미터|타입|설명|
|:---:|:--:|---|
|handler|EventHandler|[이벤트 핸들러](../event_handlers/home.md) 참고|

\
사용 예제
```kotlin
val endedHandler = mediaPlayer.addEventHandler(EventHandler.Ended {
    finish()
})

/**
	do something
*/

mediaPlayer.removeEventHandler(endedHandler)
```
