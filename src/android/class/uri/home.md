# Uri

```kotlin
import android.net.Uri
```
```java
public abstract class Uri implements Parcelable, Comparable<Uri>
```
```kotlin
fun Uri.toMediaItem(): MediaItem
```
<div align="right">
참고: <a href="https://developer.android.com/reference/android/net/Uri">android.net.Uri</a>
</div>

## 메서드

## toMediaItem
```kotlin
fun Uri.toMediaItem(): MediaItem
```

사용 예제: Uri를 받아서 재생하는 예제
```kotlin
import com.newin.nplayer.sdk.extensions.toMediaItem

val mediaItem = uri.toMediaItem()

presentMediaPlayer(mediaItem)
```
