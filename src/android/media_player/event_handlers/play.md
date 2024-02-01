# Play

EventHandler.Play는 미디어가 일시 정지 상태에서 재생 상태로 변경되는 시점에 사용하기 위한 핸들러입니다. 단, 재생 위치가 변경될 때는 포함하지 않습니다.

사용자가 재생 버튼을 클릭하거나 mediaPlayer.play()를 호출하는 등 플레이어에 재생 명령을 내렸을  때 처럼 직접 명령을 했을 때 상황에서 이벤트 처리를 여기서 할 수 있음 
EventHandler.Playing과 다른 점은 seekTo() 등을 통해 재생 위치가 변경될 때의 이벤트는 여기서 처리할 수 없다는 것입니다. 
중요한 점이 하나 더 있는데, Play와 관련된 이벤트 핸들러가 호출되면, Playing 이벤트는 Play 이벤트 이 후에 언제나 호출됩니다.

<div align="right">
이벤트 리스너: <a href="../event_listeners/on_play.md">onPlay()</a><br>
비교: <a href="./pause.md">Pause</a><br>
참고: <a href="./playing.md">Playing</a>
</div>

```kotlin
data class Play(val listener: () -> Unit)
```

\
사용 예제
```kotlin
mediaPlayer.addEventHandler(EventHandler.Play {
    displayPauseIcon()
})
```
