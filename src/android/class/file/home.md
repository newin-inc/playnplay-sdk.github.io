# File
```kotlin
import java.io.File
```
```java
public class File implements Serializable, Comparable<File>
```
```kotlin
fun File.toMediaItem(): MediaItem
```
<div align="right">
참고: <a href="https://developer.android.com/reference/java/io/File">File</a>
</div>


## 메서드

### toMediaItem
```kotlin
fun File.toMediaItem(): MediaItem
```

파일을 미디어 아이템으로 바꿔주는 메서드입니다.

사용 예제: 로컬 저장된 미디어 파일을 재생하는 예제
```kotlin
import com.newin.nplayer.sdk.extensions.toMediaItem

val file = File("/data/user/0/com.xxx.xxx/files/test.mp4")

val mediaItem = file.toMediaItem()

presentMediaPlayer(mediaItem)
```
<div align="right">
참고: <a href="../context/home.md#presentmediaplayer">presentMediaPlayer()</a>
</div>

