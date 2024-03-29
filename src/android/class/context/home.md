# Context
```kotlin
import android.content.Context
```
```java
public abstract class Context
```
```kotlin
fun Context.getMediaPlayer(block: (MediaPlayer) -> Unit)
fun Context.startMediaPlayerService(appId: String)
fun Context.presentMediaPlayer(mediaItem: MediaItem)
fun Context.presentMediaPlayer(mediaItems: Collection<MediaItem>)
fun Context.presentMediaPlayer(mediaItems: Collection<MediaItem>, startMediaItem: MediaItem)
fun Context.presentMediaPlayer(mediaItems: Collection<MediaItem>, startIndex: Int)
fun Context.presentMediaPlayer(uri: String)
fun Context.presentMediaPlayer(uri: Uri)
```

<div align="right">
참고: <a href="https://developer.android.com/reference/android/content/Context">Context</a>
</div>

## 메서드

### getMediaPlayer
```kotlin
fun Context.getMediaPlayer(block: (MediaPlayer) -> Unit)
```
|파라미터|타입|설명|
|:--:|:--:|--|
|block|(MediaPlayer) -> Unit|미디어 플레이어 제어 내용|

현재 화면에 있는 플레이어를 제어하고 싶을 때 사용하는 메서드입니다. 미디어 플레이어를 비동기 방식으로 가지고 오기 때문에, 아래의 예를 참고하십시오.

사용 예제: 미디어 플레이어를 잠시 멈추는 예제
```kotlin
import com.newin.nplayer.sdk.extensions.getMediaPlayer

getMediaPlayer { mediaPlayer -> 
    mediaPlayer.pause()
}
```

<br><br>
### startMediaPlayerService
```kotlin
fun Context.startMediaPlayerService(appId: String)
```
|파라미터|타입|설명|
|:--:|:--:|--|
|appId|String|App 아이디|
<div align="right">
참고: <a href="../../how-to-use/home.md#액티비티-구성">액티비티 구성</a>
</div>

사용 예제: 액티비티에서 서비스를 시작하는 예제
```kotlin
import com.newin.nplayer.sdk.extensions.startMediaPlayerService

class MainActivity : ComponentActivity() {
	override fun onCreate(savedInstanceState: Bundle?) {
		super.onCreate(savedInstanceState)

		if (savedInstanceState == null) {
			startMediaPlayerService("xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxx") // App 아이디
		}
	}
}
```

<br><br>
### presentMediaPlayer

미디어를 여는 메서드입니다. 여러 타입을 파라미터로 받을 수 있습니다.

```kotlin
fun Context.presentMediaPlayer(mediaItem: MediaItem)
```
| 파라미터 | 타입 | 설명 |
|:----:|:---:|----|
| mediaItem | [MediaItem](https://developer.android.com/reference/androidx/media3/common/MediaItem) | [MediaItem](https://developer.android.com/reference/androidx/media3/common/MediaItem),<br>[Media items](https://developer.android.com/media/media3/exoplayer/media-items) 참고 | 

<br><br>
```kotlin
fun Context.presentMediaPlayer(mediaItems: Collection<MediaItem>)
```
| 파라미터 | 타입 | 설명 |
|:----:|:---:|----|
| mediaItem | Collection<[MediaItem](https://developer.android.com/reference/androidx/media3/common/MediaItem)> | [MediaItem](https://developer.android.com/reference/androidx/media3/common/MediaItem),<br>[Media items](https://developer.android.com/media/media3/exoplayer/media-items) 참고 |

<br><br>
```kotlin
fun Context.presentMediaPlayer(
	mediaItems: Collection<MediaItem>,
	startMediaItem: MediaItem
)
```
| 파라미터 | 타입 | 설명 |
|:----:|:---:|----|
| mediaItems | Collection<[MediaItem](https://developer.android.com/reference/androidx/media3/common/MediaItem)> | [MediaItem](https://developer.android.com/reference/androidx/media3/common/MediaItem),<br>[Media items](https://developer.android.com/media/media3/exoplayer/media-items) 참고 |
| startMediaItem | [MediaItem](https://developer.android.com/reference/androidx/media3/common/MediaItem) | 목록 중에서 처음 재생할 미디어 아이템.<br>mediaItems에 포함되어 있어야 합니다. |

<br><br>
```kotlin
fun Context.presentMediaPlayer(
	mediaItems: Collection<MediaItem>,
	startIndex: Int
)
```
| 파라미터 | 타입 | 설명 |
|:----:|:---:|----|
| mediaItems | Collection<[MediaItem](https://developer.android.com/reference/androidx/media3/common/MediaItem)> | [MediaItem](https://developer.android.com/reference/androidx/media3/common/MediaItem),<br>[Media items](https://developer.android.com/media/media3/exoplayer/media-items) 참고  |
| startIndex | Int | 목록 중에서 처음 재생할 미디어 아이템의 index.<br>0 이상 mediaItems 개수 - 1 이하의 값이어야 합니다. |

<br><br>
```kotlin
fun Context.presentMediaPlayer(uri: String)
```
| 파라미터 | 타입 | 설명 |
|:-----:|:---:|----|
| uri | String | 스트링 형태의 미디어 주소 |

<br><br>
```kotlin
fun Context.presentMediaPlayer(uri: Uri)
```
| 파라미터 | 타입 | 설명 |
|:----:|:---:|----|
| uri | Uri | [Uri \| Android Developers](https://developer.android.com/reference/android/net/Uri) 참고 |

<br><br>
### 재생 목록을 사용한 예제
```kotlin
import com.newin.nplayer.sdk.extensions.presentMediaPlayer

presentMediaPlayer(mediaItems)			// 0번째 아이템부터 시작
presentMediaPlayer(mediaItems, mediaItems[0])	// 0번째 아이템부터 시작
presentMediaPlayer(mediaItems, 0)		// 0번째 아이템부터 시작
```
