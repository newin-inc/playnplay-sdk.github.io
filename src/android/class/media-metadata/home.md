# MediaMetadata

```kotlin
import androidx.media3.common.MediaMetadata
```

```java
public final class MediaMetadata implements Bundleable {
    ...
    @Nullable public final CharSequence title
    @Nullable public final Uri artworkUri

    public Builder buildUpon()

    public static final class Builder
}
```
```kotlin
val MediaMetadata.expiresOn: java.time.Instant?

val MediaMetadata.lastPlayedTime: kotlin.time.Duration?
```
<div align="right">
참고: <a href="https://developer.android.com/reference/androidx/media3/common/MediaMetadata#buildUpon()">MediaMetadata.buildUpon()</a>, 
<a href="https://developer.android.com/reference/kotlin/androidx/media3/common/MediaMetadata.Builder">MediaMetadata.Builder</a>
</div>

## 속성

### title
```java
@Nullable public final CharSequence title
```
미디어 아이템의 제목을 나타내는 속성입니다.
<div align="right">
참고: <a href="https://developer.android.com/reference/androidx/media3/common/MediaMetadata#title()">title</a>
</div>

<br><br>
### artworkUrl
```java
@Nullable public final Uri artworkUri
```
미디어 아이템의 아트워크 경로를 나타내는 속성입니다.
<div align="right">
참고: <a href="https://developer.android.com/reference/androidx/media3/common/MediaMetadata#artworkUri()">artworkUri</a>
</div>

<!-- <br><br>
### downloadPath
```kotlin
import com.newin.nplayer.sdk.extensions.downloadPath

val androidx.media3.common.MediaMetadata.downloadPath: kotlin.String?
```
디바이스에 저장된 경로를 나타내는 속성입니다.
-->
<br><br>
### expiresOn
```kotlin
import com.newin.nplayer.sdk.extensions.expiresOn

val androidx.media3.common.MediaMetadata.expiresOn: java.time.Instant?
```
| 타입 |설명|
|:--:|--|
|[java.time.Instant](https://developer.android.com/reference/java/time/Instant)|만료 일시|

미디어 아이템의 만료 일시를 나타내는 속성입니다.

사용 예제: 미디어의 만료 일시를 가져오는 예제
```kotlin
import com.newin.nplayer.sdk.extensions.expiresOn

val expiresOn = mediaItem.mediaMetadata.expiresOn
```

<br><br>
### lastPlayedTime
```kotlin
import com.newin.nplayer.sdk.extensions.lastPlayedTime

val androidx.media3.common.MediaMetadata.lastPlayedTime: kotlin.time.Duration?
```
| 타입 | 설명 |
|:--:|--|
|[kotlin.time.Duration](https://kotlinlang.org/api/latest/jvm/stdlib/kotlin.time/-duration/)|마지막 재생 위치|

미디어 아이템이 마지막으로 재생한 위치를 나타내는 속성입니다.

사용 예제: 미디어의 마지막 재생 위치를 가져오는 예제
```kotlin
import com.newin.nplayer.sdk.extensions.lastPlayedTime

val expiresOn = mediaItem.mediaMetadata.lastPlayedTime

println(expiresOn)
```

실행 후 다음과 같은 결과를 볼 수 있습니다.
```log
4m 13.445s
```

<br><br>
## 메서드

### buildUpon()
```java
public MediaMetadata.Builder buildUpon()
```
미디어 메타 데이터를 추가하거나 수정하고자 할 때 사용하는 메서드입니다. 변경 후, [.build()](https://developer.android.com/reference/androidx/media3/common/MediaMetadata.Builder#build())를 호출하여 구성을 완료합니다.
<div align="right">
참고: <a href="https://developer.android.com/reference/androidx/media3/common/MediaMetadata.Builder#build()">build()</a>
</div>

<br><br>
## 사용 예제: 미디어 메타 데이터의 타이틀을 바꾸는 예제
```kotlin
fun renameMediaItem(mediaItem: MediaItem, name: String): MediaItem {
    val builder = mediaItem.buildUpon()
    builder.setMediaMetadata(
        mediaItem.mediaMetadata.buildUpon().setTitle(name).build()
    )
    return builder.build()
}

val mediaItem = renameMediaItem(oldMediaItem, "New Title")
```