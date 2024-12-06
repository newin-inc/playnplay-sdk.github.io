# MediaPlayerActivityConfiguration.SubtitleTextSize

```kotlin
import com.newin.nplayer.sdk.MediaPlayerActivityConfiguration.SubtitleTextSize
```

```kotlin
sealed class SubtitleTextSize
```

자막 크기를 나타내는 클래스입니다. 자막 크기를 픽셀 단위 또는 비율로 표현할 수 있습니다.

<div align="right">
참고: <a href="../media-player-activity-configuration/home.md">MediaPlayerActivityConfiguration</a>
</div>

<br>

# 클래스

## Pixel

```kotlin
data class Pixel(val pixel: Float) : SubtitleTextSize()
```

자막 크기를 픽셀 단위로 설정합니다.

## Scale

```kotlin
data class Scale(val scale: Float) : SubtitleTextSize()
```

자막 크기를 비율로 설정합니다.
