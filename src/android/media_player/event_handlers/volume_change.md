# VolumeChange

EventHandler.VolumeChange는 볼륨이 변경되는 시점에 사용하기 위한 핸들러입니다. 무음(muted)의 속성을 바꾸었을 때도 호출됩니다. Player.Listener에서 제공하는 [onVolumeChanged()](https://developer.android.com/reference/androidx/media3/common/Player.Listener#onVolumeChanged(float))와는 함수 이름과 사용하는 파라미터가 다릅니다.

<div align="right">
이벤트 리스너: <a href="../event_listeners/on_volume_change.md">onVolumeChange()</a>
</div>

```kotlin
data class VolumeChange(val listener: (Float, Boolean) -> Unit)
```

\
사용 예제
```kotlin
mediaPlayer.addEventHandler(EventHandler.VolumeChange {
    volume, muted ->
        updateVolumeView(volume, muted)
})
```
