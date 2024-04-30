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
### offlineAccessPeriod
```kotlin
val MediaItem.DrmConfiguration.offlineAccessPeriod: Duration?
```
<div align="right">
참고: <a href="https://developer.android.com/reference/java/time/Duration">java.time.Duration</a>, 
<a href="../../../agent/home.md#drm">DRM 내 offlineAccessPeriod</a>
</div>
다운로드 컨텐츠의 오프라인 재생 기간을 가져오는 속성입니다.

사용 예제: 오프라인 재생 허용 기간을 가져오는 예제
```kotlin
import com.newin.nplayer.sdk.extensions.offlineAccessPeriod

val offlineAccessPeriod = mediaItem.localConfiguration?.drmConfiguration?.offlineAccessPeriod
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
