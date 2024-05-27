# MediaItem

```kotlin
import androidx.media3.common.MediaItem
```
```java
public final class MediaItem implements Bundleable
```

[미디어 아이템](https://developer.android.com/reference/androidx/media3/common/MediaItem)의 정보를 가져올 수 있는 위의 속성 및 메서드를 제공합니다. [Agent](../../../agent/home.md)에서 설정한 값을 불러올 수 있습니다.

<div align="right">
참고: <a href="https://developer.android.com/reference/androidx/media3/common/MediaItem">androidx.media3.common.MediaItem</a>
</div>

<br><br>
# 속성

## returnUrl

```kotlin
val MediaItem.returnUrl: Uri?
```

| 타입 | 설명 | 설정 |
|:----:|---|:---:|
|[android.net.Uri](https://developer.android.com/reference/android/net/Uri)?|미디어 아이템의 리턴 Url| 불가능 |

[Agent](../../../agent/home.md)에서 설정한 미디어 아이템의 리턴 Url입니다.
<div align="right">
참고: <a href="../../../agent/home.md#mediaitem">MediaItem</a>내의 returnUrl
</div>

<br><br>
## seekable

```kotlin
val MediaItem.seekable: Boolean
```

| 타입 | 설명 | 설정 | 기본값 |
|:----:|---|:---:|:---:|
|Boolean|탐색(Seek) 기능 허용 여부 | 불가능 | true |

미디어의 Seek 기능 허용 여부를 나타내는 속성입니다.

<br><br>
## title

```kotlin
val MediaItem.title: CharSequence?
```

| 타입 | 설명 | 설정 |
|:----:|---|:---:|
|CharSequence?|미디어의 제목| 불가능 |

[미디어 메타 데이터](../media-metadata/home.md)에 저장된 [제목](../media-metadata/home.md#title)을 가져오는 속성입니다. 만약 [미디어 메타 데이터](../media-metadata/home.md)에 제목이 없다면, 파일 이름을 가져옵니다.

<br><br>
## uri

```kotlin
val MediaItem.uri: Uri?
```

| 타입 | 설명 | 설정 |
|:----:|---|:---:|
|[android.net.Uri](https://developer.android.com/reference/android/net/Uri)?| 미디어 아이템의 주소 | 불가능 |

미디어 아이템에 따라 로컬 주소가 나올 수도 있고, 웹 주소도 나올 수 있습니다.

<br><br>
# 메서드

## withDrmConfiguration

```kotlin
import com.newin.nplayer.sdk.extensions.withDrmConfiguration

fun MediaItem.withDrmConfiguration(
    appId: String,
    userId: String,
    userData: Map<String, Any> = emptyMap(),
    offlineAccessPeriod: Duration? = null,
): MediaItem
```

| 이름 | 타입 | 설명 | 필수| 기본값 |
|:---:|:---:|:---:|:--:|:--:|
| appId | String | App 아이디 | O | 없음 | 
| userId | String | 사용자 아이디 | O | 없음 |
| userData | Map<String, Any> | 사용자 데이터 | X | emptyMap() |
| offlineAccessPeriod | [java.time.Duration](https://developer.android.com/reference/java/time/Duration)? | 오프라인 재생 기한 | X | null |

App 아이디와 사용자 아이디를 사용하여 DRM 설정을 하는 메서드입니다.
Callback URL에 전달할 데이터(사용자 데이터)와 오프라인 재생 기한 설정을 추가하여 DRM 설정을 할 수 있습니다.

<div align="right">
참고: <a href="../../../agent/home.md#drm">DRM 내 userData, offlineAccessPeriod</a>, 
<a href="../../how-to-use/home.md#미디어-아이템-구성-예제">미디어 아이템 구성 예제</a>
</div>
