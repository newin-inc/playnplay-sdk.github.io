# MediaItemTransition

EventHandler.MediaItemTransition는 미디어 아이템이 교체 되는 시점에 사용하기 위한 핸들러입니다. 이벤트 리스너는 [Player.Listener](https://developer.android.com/reference/androidx/media3/common/Player.Listener#onMediaItemTransition(androidx.media3.common.MediaItem,int))에서 제공하는 것을 사용하시면 됩니다.

```kotlin
data class MediaItemTransition(val listener: (MediaItem?, Int) -> Unit)
```

\
사용 예제
```kotlin
mediaPlayer.addEventHandler(EventHandler.MediaItemTransition {
    mediaItem, _ -> 
        displayItem(mediaItem)
})
```
