# 사용 방법

## 액티비티 구성

```kotlin
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.media3.common.MediaItem
import com.newin.nplayer.sdk.extensions.presentMediaPlayer
import com.newin.nplayer.sdk.extensions.startMediaPlayerService
import com.newin.nplayer.sdk.withDrmConfiguration

class MainActivity : ComponentActivity() {
	override fun onCreate(savedInstanceState: Bundle?) {
		super.onCreate(savedInstanceState)
		// 먼저 startMediaPlayerService를 호출하여 서비스를 시작합니다.
		if (savedInstanceState == null) {
			startMediaPlayerService()
		}
	}
}
```

```kotlin
Button(
	onClick = { 
		// uri를 입력 받아서 아이템을 만듭니다. 이때, 반드시 DRM 설정을 합니다.
		val mediaItem = MediaItem.fromUri("미디어주소.mp4")
			.withDrmConfiguration(
				appId = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxx",
				userId = "사용자 아이디"
			)
		// 미디어를 엽니다.
		presentMediaPlayer(mediaItem)
	}
) {
	Text("Open player")
}
```

## startMediaPlayerService()

플레이어와 [미디어세션](https://developer.android.com/media/media3/session/control-playback#creating-media)을 만들고 DRM 기본 설정을 합니다.

## MediaItem.fromUri()
미디어 주소를 파라미터로 입력하여 미디어 아이템을 구성합니다. 파라미터로 받을 수 있는 타입은 아래와 같습니다.

| 타입 | 설명 |
|:----:|-----|
| String | 스트링 형태의 미디어 주소 |
| Uri | [Uri \| Android Developers](https://developer.android.com/reference/android/net/Uri) 참고 |

## withDrmConfiguration()
그리고, uri를 입력받아서 미디어 아이템을 만듭니다. 이때, 반드시 DRM 설정을 합니다. 제공받은 App 아이디와 사용자 아이디(User ID)를 입력하면 됩니다.

| 이름 | 타입 | 설명 | 필수|
|:---:|:---:|-----|:--:|
| appId | String | App 아이디 | O |
| userId | String | 사용자 아이디 | O |

## presentMediaPlayer()
presentMediaPlayer()를 사용하여 미디어를 엽니다.

```kotlin
fun presentMediaPlayer(uri: String)
```
| 파라미터 | 타입 | 설명 |
|:-----:|:---:|----|
| uri | String | 스트링 형태의 미디어 주소 |

\
\
```kotlin
fun presentMediaPlayer(uri: Uri)
```
| 파라미터 | 타입 | 설명 |
|:----:|:---:|----|
| uri | Uri | [Uri \| Android Developers](https://developer.android.com/reference/android/net/Uri) 참고 |

\
\
```kotlin
fun presentMediaPlayer(mediaItem: MediaItem)
```
| 파라미터 | 타입 | 설명 |
|:----:|:---:|----|
| mediaItem | [MediaItem](https://developer.android.com/media/media3/exoplayer/media-items) | [Media items](https://developer.android.com/media/media3/exoplayer/media-items) 참고 | 

\
\
```kotlin
fun presentMediaPlayer(mediaItems: Collection<MediaItem>)
```
| 파라미터 | 타입 | 설명 |
|:----:|:---:|----|
| mediaItem | Collection<[MediaItem](https://developer.android.com/media/media3/exoplayer/media-items)> | [Media items](https://developer.android.com/media/media3/exoplayer/media-items) 참고 |

\
\
```kotlin
fun presentMediaPlayer(
	mediaItems: Collection<MediaItem>,
	startMediaItem: MediaItem
)
```
| 파라미터 | 타입 | 설명 |
|:----:|:---:|----|
| mediaItems | Collection<[MediaItem](https://developer.android.com/media/media3/exoplayer/media-items)> | [Media items](https://developer.android.com/media/media3/exoplayer/media-items) 참고 |
| startMediaItem | [MediaItem](https://developer.android.com/media/media3/exoplayer/media-items) | 목록 중에서 처음 재생할 미디어 아이템.<br>mediaItems에 포함되어 있어야 합니다. |

\
\
```kotlin
fun presentMediaPlayer(
	mediaItems: Collection<MediaItem>,
	startIndex: Int
)
```
| 파라미터 | 타입 | 설명 |
|:----:|:---:|----|
| mediaItems | Collection<[MediaItem](https://developer.android.com/media/media3/exoplayer/media-items)> | [Media items](https://developer.android.com/media/media3/exoplayer/media-items) 참고 |
| startIndex | Int | 목록 중에서 처음 재생할 미디어 아이템의 index.<br>0 이상 mediaItems 개수 - 1 이하의 값이어야 합니다. |

### 재생 목록을 사용한 예제
```kotlin
presentMediaPlayer(mediaItems)			// 0번째 아이템부터 시작
presentMediaPlayer(mediaItems, mediaItems[0])	// 0번째 아이템부터 시작
presentMediaPlayer(mediaItems, 0)		// 0번째 아이템부터 시작
```

### 자막을 추가한 예제
Media3에서 제공하는 setSubtitleConfigurations() 사용하면 됩니다. \
<div align="right">
참고: <a href="https://developer.android.com/media/media3/exoplayer/media-items#sideloading-subtitle">Media item 자막</a>
</div>

```kotlin
val mediaItem = MediaItem.Builder()
	.setUri("비디오주소.mp4")
	.setSubtitleConfigurations(
		listOf(
			MediaItem.SubtitleConfiguration.Builder(
				Uri.parse("자막주소.vtt")
			)
			.setMimeType(MimeTypes.TEXT_VTT)
			.setLanguage("en")
			.build()
		)
	)
	.build()
```

## getMediaPlayer()

현재 화면에 있는 플레이어를 제어하고 싶을 때는 아래처럼 구현하면 됩니다.

```kotlin
getMediaPlayer { mediaPlayer ->
    mediaPlayer.pause()
}
```

또는 아래처럼 미디어 플레이어에 접근하여 제어할 수 있습니다. 미디어 플레이어를 비동기 방식으로 가지고 옵니다. 아래의 예를 참고하십시오. 

```kotlin
val mediaPlayer: MediaPlayer? = null

getMediaPlayer { _mediaPlayer ->
    mediaPlayer = _mediaPlayer
}

/**
getMediaPlayer 바로 밑에 mediaPlayer?.play()를 호출하지만
여기서 mediaPlayer는 null일 수 있기 때문에, 높은 확률로 재생할 수 없습니다.
*/
mediaPlayer?.play()

button.setOnClickListener {
/** 
매우 낮은 확률로 mediaPlayer가 null일 수 있습니다.
mediaPlayer에 값이 들어오면 버튼을 활성화하는 방법 등을 사용하시면
부작용을 막을 수 있습니다.
*/
    mediaPlayer?.play()
}
```

## MediaPlayer()

```kotlin
fun MediaPlayer(context: Context): MediaPlayer
```

안드로이드 SDK에서 제공하는 MediaPlayer가 아니라, Jetpack Media3에서 제공하는 [ExoPlayer](https://developer.android.com/media/media3/exoplayer)를 사용하려면 아래와 같이 사용하면 됩니다. ExoPlayer는 Player를 확장한 클래스로 Jetpack Media3에서 제공합니다.

사용 예제
```kotlin
val mediaPlayer = MediaPlayer(context)
mediaPlayer.load(mediaItem)
```

커스터마이징하여 만든 플레이어를 바로 등록하여 미디어 플레이어를 사용할 수도 있습니다.
```kotlin
fun MediaPlayer(innerPlayer: Player): MediaPlayer
```

사용 예제
```kotlin
val mediaPlayer = MediaPlayer(player)
mediaPlayer.load(mediaItem)
```

주의: 현재 안드로이드 SDK는 MediaPlayer()으로 직접 미디어 플레이어를 구성할 경우, DRM 관련 기능을 지원하지 않습니다. DRM 영상을 사용하려면, presentMediaPlayer()를 하여 플레이어를 구성한 후, getMediaPlayer()를 사용해 주세요.
