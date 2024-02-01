# addEventListener()

MediaPlayer.addEventListener()는 [이벤트 리스너](../event_listeners/home.md)를 추가하기 위한 메서드입니다.
```kotlin
fun addEventListener(listener: EventListener)
```

|파라미터|타입|설명|
|:--:|:--:|---|
|listener|EventListener|[이벤트 리스너](../event_listeners/home.md) 참고|

\
사용 예제
```kotlin
class ComponentListener(view: View): EventListener {
    override fun onPlay() {
        showPauseIcon()
    }
}

val componentListener = ComponentListener(this)

mediaPlayer.addEventListener(componentListener)
```
