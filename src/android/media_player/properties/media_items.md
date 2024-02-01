# mediaItems

MediaPlayer.mediaItems는 미디어 아이템들의 목록을 나타내는 속성입니다. 해당 속성은 설정이 불가능합니다. 목록 전체를 바꾸고 싶을 때는 Player.setMediaItems()를 사용하시면 됩니다.

|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|List<MediaItem>|현재 재생 목록에 있는 미디어 아이템들|불가능|[]|

\
사용 예제
```kotlin
val mediaItems = mediaPlayer.mediaItems // 현재 미디어 아이템들을 나타냅니다

val newMediaItems = mediaItems.slice(3..8)  // index 3이상 8이하 아이템만 잘라내고
mediaPlayer.setMediaItems(newMediaItems)    // 잘라낸 아이템으로 목록 교체
```
