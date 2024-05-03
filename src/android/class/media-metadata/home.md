# MediaMetadata

```kotlin
import androidx.media3.common.MediaMetadata
```

```java
public final class MediaMetadata implements Bundleable {
    ...
    @Nullable public final Uri artworkUri
    @Nullable public final CharSequence title

    public Builder buildUpon()

    public static final class Builder
}
```
```kotlin
val MediaMetadata.expiresOn: java.time.Instant?

val MediaMetadata.lastPlayedTime: Duration?

val MediaMetadata.duration: Duration?
```
<div align="right">
참고: <a href="https://developer.android.com/reference/androidx/media3/common/MediaMetadata">MediaMetadata</a>, 
<a href="https://developer.android.com/reference/androidx/media3/common/MediaMetadata#buildUpon()">MediaMetadata.buildUpon()</a>, 
<a href="https://developer.android.com/reference/kotlin/androidx/media3/common/MediaMetadata.Builder">MediaMetadata.Builder</a>, 
<a href="https://developer.android.com/reference/java/time/Duration">java.time.Duration</a>
</div>

<br><br>
# 속성

## artworkUrl
```java
@Nullable public final Uri artworkUri
```
미디어 아이템의 아트워크 경로를 나타내는 속성입니다.
<div align="right">
참고: <a href="https://developer.android.com/reference/androidx/media3/common/MediaMetadata#artworkUri()">artworkUri</a>
</div>

<br><br>
## title
```java
@Nullable public final CharSequence title
```
미디어 아이템의 제목을 나타내는 속성입니다.
<div align="right">
참고: <a href="https://developer.android.com/reference/androidx/media3/common/MediaMetadata#title()">title</a>
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
## expiresOn
```kotlin
val androidx.media3.common.MediaMetadata.expiresOn: java.time.Instant?
```
| 타입 |설명|
|:--:|:--:|
|[java.time.Instant](https://developer.android.com/reference/java/time/Instant)|만료 일시|

미디어 아이템의 만료 일시를 나타내는 속성입니다.

<text style="color:red;">Deprecated: </text><a href="../playback-info/home.md">PlaybackInfo</a>의 
<a href="../playback-info/home.md#expireson">expiresOn</a>을 사용하세요.

<br><br>
## lastPlayedTime
```kotlin
val androidx.media3.common.MediaMetadata.lastPlayedTime: Duration?
```
| 타입 | 설명 |
|:--:|:--:|
|[java.time.Duration](https://developer.android.com/reference/java/time/Duration)|마지막 재생 위치|

미디어 아이템이 마지막으로 재생한 위치를 나타내는 속성입니다.

<text style="color:red;">Deprecated: </text><a href="../playback-info/home.md">PlaybackInfo</a>의 
<a href="../playback-info/home.md#lastplayedtime">lastPlayedTime</a>을 사용하세요.

<br><br>
## duration
```kotlin
val androidx.media3.common.MediaMetadata.duration: Duration?
```
| 타입 | 설명 |
|:--:|:--:|
|[java.time.Duration](https://developer.android.com/reference/java/time/Duration)|미디어 아이템의 전체 길이|

미디어 아이템의 전체 길이를 나타내는 속성입니다.

<text style="color:red;">Deprecated: </text><a href="../playback-info/home.md">PlaybackInfo</a>의 
<a href="../playback-info/home.md#duration">duration</a>을 사용하세요.

<br><br>
# 메서드

## buildUpon()
```java
public MediaMetadata.Builder buildUpon()
```
미디어 메타 데이터를 추가하거나 수정하고자 할 때 사용하는 메서드입니다. 변경 후, [.build()](https://developer.android.com/reference/androidx/media3/common/MediaMetadata.Builder#build())를 호출하여 구성을 완료합니다.
<div align="right">
참고: <a href="https://developer.android.com/reference/androidx/media3/common/MediaMetadata.Builder#build()">build()</a>
</div>

<br><br>
# 정적 클래스

## Builder
```java
public static final class Builder
```

미디어 메타데이터를 만드는 클래스입니다.

<div align="right">
참고: 
<a href="https://developer.android.com/reference/kotlin/androidx/media3/common/MediaMetadata.Builder">MediaMetadata.Builder</a>
</div>


