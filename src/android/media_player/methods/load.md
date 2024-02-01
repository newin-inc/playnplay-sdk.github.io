# load()

MediaPlayer.load()는 미디어를 로드하기 위한 메서드입니다.
```kotlin
fun load(uri: String)
fun load(uri: Uri)
fun load(mediaItem: MediaItem)
fun load(mediaItems: List<MediaItem>)
```

|파라미터|타입|설명|
|:--:|:--:|---|
|uri|String|스트링 형태의 미디어 주소|
|uri|Uri| [Uri](https://developer.android.com/reference/android/net/Uri) 참고|
|mediaItem|MediaItem|[미디어 아이템](https://developer.android.com/reference/androidx/media3/common/MediaItem) 참고|
|mediaItems|List<MediaItem>|미디어 아이템의 리스트|

\
사용 예제
```kotlin
mediaPlayer.load("https://미디어주소.mp4")  // 타입: String
mediaPlayer.load(uri)   // 타입: Uri
mediaPlayer.load(mediaItem) // 타입: MediaItem
mediaPlayer.load(listOf(mediaItem1, mediaItem2))    // 타입: List<MediaItem>
```
