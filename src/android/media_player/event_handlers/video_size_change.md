# VideoSizeChange

EventHandler.VideoSizeChange는 영상 크기가 바뀌는 시점에 사용하기 위한 핸들러입니다. 다음 영상으로 이동할 때, 영상 크기가 0x0으로 바뀌었다가 다음 영상의 크기로 바뀌게 되는데, 0x0으로 바뀔 때도 해당 이벤트는 호출됩니다. 즉, 다음 영상으로 이동할 경우, 이 핸들러는 두 번 호출 됩니다. 이벤트 리스너는 [Player.Listener](https://developer.android.com/reference/androidx/media3/common/Player.Listener#onVideoSizeChanged(androidx.media3.common.VideoSize))에서 제공하는 것을 사용하시면 됩니다.

```kotlin
data class VideoSizeChange(val listener: (VideoSize) -> Unit)
```

\
사용 예제
```kotlin
mediaPlayer.addEventHandler(EventHandler.VideoSizeChange {
    val sizeText = "${it.width}x${it.height}"	
})