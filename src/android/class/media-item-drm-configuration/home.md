# MediaItem.DrmConfiguration

```kotlin
import androidx.media3.common.MediaItem
```
```java
public final class MediaItem implements Bundleable { 
    ...
    public static final class DrmConfiguration implements Bundleable
}
```
```kotlin
val MediaItem.DrmConfiguration.appId: String?

val MediaItem.DrmConfiguration.userId: String?
```
<div align="right">
참고: <a href="https://developer.android.com/reference/androidx/media3/common/MediaItem.DrmConfiguration">MediaItem.DrmConfiguration</a>
</div>

## 속성

### appId

```kotlin
val MediaItem.DrmConfiguration.appId: String?
```
App 아이디를 가져오는 속성입니다.

사용 예제: App 아이디를 가져오는 예제
```kotlin
import com.newin.nplayer.sdk.extensions.appId

val appId = mediaItem.localConfiguration?.drmConfiguration?.appId
```

<br><br>
### userId
```kotlin
val MediaItem.DrmConfiguration.userId: String?
```
사용자 아이디를 가져오는 속성입니다.

사용 예제: 사용자 아이디를 가져오는 예제
```kotlin
import com.newin.nplayer.sdk.extensions.userId

val userId = mediaItem.localConfiguration?.drmConfiguration?.userId
```