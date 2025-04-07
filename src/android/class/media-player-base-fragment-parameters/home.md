# MediaPlayerBaseFragment.Parameters

```kotlin
import com.newin.nplayer.sdk.MediaPlayerBaseFragment.Parameters
```

```kotlin
data class Parameters(
    val mediaItems: List<MediaItem>,
    val startMediaItemIndex: Int = 0,
    val defaultPlaybackRate: Float = 1f,
    val seekBackIncrement: Duration = Duration.ofSeconds(10),
    val seekForwardIncrement: Duration = Duration.ofSeconds(10),
    val allowsCellularAccess: Boolean = true,
    val allowsBackgroundPlayback: Boolean = false,
    val allowsPictureInPicturePlayback: Boolean = true,
    val controllerShowTimeout: Duration = Duration.ofSeconds(5),
    val subtitleDisplayPosition: SubtitleDisplayPosition = SubtitleDisplayPosition.OnVideo,
    val subtitleTextPosition: Float = 1f,
    val subtitleTextSize: SubtitleTextSize = SubtitleTextSize.Pixel(SubtitleTextSize.DEFAULT_FONT_PIXEL_SIZE * 2),
    val extras: Bundle? = null,
)
```

미디어 플레이어 설정을 담고 있는 구성 객체입니다.

참고: [FragmentManager.load](../fragment-manager/home.md#load)

# 속성

## mediaItems

```kotlin
val mediaItems: List<MediaItem>
```

## startMediaItemIndex

```kotlin
val startMediaItemIndex: Int
```

## defaultPlaybackRate

```kotlin
val defaultPlaybackRate: Float
```

## seekBackIncrement

```kotlin
val seekBackIncrement: Duration
```

## seekForwardIncrement

```kotlin
val seekForwardIncrement: Duration
```

## allowsCellularAccess

```kotlin
val allowsCellularAccess: Boolean
```
## allowsBackgroundPlayback

```kotlin
val allowsBackgroundPlayback: Boolean
```

## allowsPictureInPicturePlayback

```kotlin
val allowsPictureInPicturePlayback: Boolean
```

## controllerShowTimeout

```kotlin
val controllerShowTimeout: Duration
```

## subtitleDisplayPosition

```kotlin
val subtitleDisplayPosition: SubtitleDisplayPosition
```

## subtitleTextPosition

```kotlin
val subtitleTextPosition: Float
```

## subtitleTextSize

```kotlin
val subtitleTextSize: SubtitleTextSize
```

## extras

```kotlin
val extras: Bundle?
```

## 정적 메소드

```kotlin
fun fromBundle(bundle: Bundle): Parameters
```

## 메소드

```kotlin
fun toBundle(): Bundle
```
