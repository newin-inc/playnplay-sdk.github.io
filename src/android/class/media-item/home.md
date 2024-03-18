# MediaItem

```kotlin
import androidx.media3.common.MediaItem
```
```java
public final class MediaItem implements Bundleable
```
```kotlin
val MediaItem.seekable: Boolean
val MediaItem.title: CharSequence?
val MediaItem.uri: Uri?

fun MediaItem.withDrmConfiguration(appId: String, userId: String): MediaItem
fun MediaItem.withDrmConfiguration(appId: String, userId: String, userData: Map<String, Any>,): MediaItem
```

<div align="right">
참고: <a href="https://developer.android.com/reference/androidx/media3/common/MediaItem">MediaItem</a>
</div>

## 속성

### seekable
```kotlin
val MediaItem.seekable: Boolean
```
| 타입 | 설명 | 설정 | 기본값 |
|:----:|---|:---:|:---:|
|Boolean|탐색(Seek) 기능 허용 여부 | 불가능 | true |

미디어의 Seek 기능 허용 여부를 나타내는 속성입니다.

사용 예제: 현재 미디어의 Seek 기능 허용 여부를 가져오는 예제
```kotlin
import com.newin.nplayer.sdk.extensions.seekable

val seekable = mediaItem.seekable
```

<br><br>
### title
```kotlin
val MediaItem.title: CharSequence?
```
| 타입 | 설명 | 설정 |
|:----:|---|:---:|
|CharSequence?|미디어의 제목| 불가능 |

[미디어 메타 데이터](../media-metadata/home.md)에 저장된 [제목](../media-metadata/home.md#title)을 가져오는 속성입니다. 만약 [미디어 메타 데이터](../media-metadata/home.md)에 제목이 없다면, 파일 이름을 가져옵니다.

사용 예제: 현재 미디어의 제목을 가져오는 예제
```kotlin
import com.newin.nplayer.sdk.extensions.title

val title = mediaItem.title
```

<br><br>
### uri
```kotlin
val MediaItem.uri: Uri?
```
| 타입 | 설명 | 설정 |
|:----:|---|:---:|
|[Uri](https://developer.android.com/reference/android/net/Uri)?| 미디어 아이템의 주소 | 불가능 |

사용 예제: 현재 미디어의 주소를 가져오는 예제
```kotlin
import com.newin.nplayer.sdk.extensions.uri

mediaItems.forEach { mediaItem ->
    println(mediaItem.uri)
}
```
미디어 아이템에 따라 로컬 주소가 나올 수도 있고, 웹 주소도 나올 수 있습니다.
```log
...
file:///data/user/0/com.xxx.xxx/files/video/test.mp4
https://example.com/test.mp4
...
```

## 메서드

### withDrmConfiguration
```kotlin
fun MediaItem.withDrmConfiguration(
    appId: String,
    userId: String
): MediaItem
```
| 이름 | 타입 | 설명 | 필수|
|:---:|:---:|:---:|:--:|
| appId | String | App 아이디 | O |
| userId | String | 사용자 아이디 | O |

App 아이디와 사용자 아이디를 사용하여 DRM 설정을 하는 메서드입니다.

```kotlin
import com.newin.nplayer.sdk.extensions.withDrmConfiguration

fun MediaItem.withDrmConfiguration(
    appId: String,
    userId: String,
    userData: Map<String, Any>
): MediaItem
```
| 이름 | 타입 | 설명 | 필수|
|:---:|:---:|:---:|:--:|
| appId | String | App 아이디 | O |
| userId | String | 사용자 아이디 | O |
| userData | Map<String, Any> | 사용자 데이터 | X |

Callback URL에 전달할 데이터(사용자 데이터)를 추가하여 DRM 설정하는 메서드입니다. 

사용 예제: DRM 설정을 한 미디어 아이템을 화면에 재생하는 예제
```kotlin
import com.newin.nplayer.sdk.extensions.withDrmConfiguration

fun openMedia(uri: String) {
    val mediaItem = MediaItem.fromUri(uri)
        .withDrmConfiguration(
            appId = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxx",  // App 아이디
            userId = "사용자 아이디"
        )
    presentMediaPlayer(mediaItem)
}
```
