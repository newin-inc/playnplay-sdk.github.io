# addEventHandler()

MediaPlayer.addEventHandler()는 [이벤트 핸들러](../event_handlers/home.md)를 추가하기 위한 메서드입니다.
반환된 핸들러는 이벤트 핸들러를 제거할 목적으로 MediaPlayer.removeEventHandler()에서 사용할 수 있습니다.
```kotlin
fun addEventHandler(handler: EventHandler): EventHandler
```

|파라미터|타입|반환 타입|설명|
|:--:|:--:|:--:|---|
|handler|EventHandler|EventHandler|[이벤트 핸들러](../event_handlers/home.md) 참고|

\
사용 예제
```kotlin
mediaPlayer.addEventHandler(EventHandler.Ended {
    finish()	// 미디어 재생이 끝나면 액티비티를 종료합니다.
})
```
