# MediaItem.Builder

```kotlin
import androidx.media3.common.MediaItem
```
```java
public final class MediaItem implements Bundleable {
    ...
    public static final class Builder
}
```
```kotlin
fun MediaItem.Builder.setSeekable(seekable: Boolean): MediaItem.Builder
```
<div align="right">
참고: <a href="https://developer.android.com/reference/androidx/media3/common/MediaItem.Builder">MediaItem.Builder</a>
</div>

## 메서드

### setSeekable
```kotlin
fun MediaItem.Builder.setSeekable(seekable: Boolean): MediaItem.Builder
```
|파라미터|타입|설명|필수|
|:--:|:--:|--|:--:|
|seekable|Boolean|Seek 기능을 허용할 지에 대한 여부|O|


사용 예제: 미디어 아이템의 Seek 기능을 제한하는 예제<br>
주의: 반드시 Uri를 설정한 이후에 setSeekable()을 사용하셔야 합니다.
```kotlin
import com.newin.nplayer.sdk.extensions.setSeekable

val mediaItem = MediaItem.Builder()
	.setUri("https://www.example.com/video.mp4")
    .setSeekable(false)
    .build()
```
