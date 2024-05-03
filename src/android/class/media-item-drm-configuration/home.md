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

val MediaItem.DrmConfiguration.offlineAccessPeriod: Duration?

val MediaItem.DrmConfiguration.userId: String?
```
<div align="right">
참고: <a href="https://developer.android.com/reference/androidx/media3/common/MediaItem.DrmConfiguration">MediaItem.DrmConfiguration</a>
</div>

미디어 아이템의 아래 해당하는 속성에 접근하기 위해서는 아래 자바 코드([androidx.media3.common.MediaItem](https://developer.android.com/reference/androidx/media3/common/MediaItem).java)를 참고하시면 됩니다.

```java
public final class MediaItem implements Bundleable {
    @Nullable public final LocalConfiguration localConfiguration;
}

public static final class LocalConfiguration implements Bundleable {
    @Nullable public final DrmConfiguration drmConfiguration;
}
```

<br><br>
# 속성

## appId

```kotlin
import com.newin.nplayer.sdk.extensions.appId

val MediaItem.DrmConfiguration.appId: String?
```
App 아이디를 가져오는 속성입니다.

<br><br>
## offlineAccessPeriod
```kotlin
import com.newin.nplayer.sdk.extensions.offlineAccessPeriod

val MediaItem.DrmConfiguration.offlineAccessPeriod: Duration?
```
<div align="right">
참고: <a href="https://developer.android.com/reference/java/time/Duration">java.time.Duration</a>, 
<a href="../../../agent/home.md#drm">DRM 내 offlineAccessPeriod</a>
</div>

다운로드 컨텐츠의 오프라인 재생 기간을 가져오는 속성입니다.

<br><br>
## userId
```kotlin
val MediaItem.DrmConfiguration.userId: String?
```
사용자 아이디를 가져오는 속성입니다.
