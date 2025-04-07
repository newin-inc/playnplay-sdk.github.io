# MediaPlayerBaseView

```kotlin
import com.newin.nplayer.sdk.MediaPlayerBaseView
```

```kotlin
open class MediaPlayerBaseView(context: Context) : PlayerView(context)
```

[androidx.media3.ui.PlayerView](https://developer.android.com/reference/androidx/media3/ui/PlayerView)를 상속한 미디어 플레이어 뷰의 기반 클래스입니다.

# 속성

## player

```kotlin
var player: MediaPlayer?
```

## videoContainerView

```kotlin
val videoContainerView: ViewGroup
```

## controlContainerView

val controlContainerView: ViewGroup

## infoContainerView

```kotlin
val infoContainerView: ViewGroup
```

## subtitleTextSize

```kotlin
var subtitleTextSize: SubtitleTextSize
```

## subtitleDisplayPosition

```kotlin
var subtitleDisplayPosition: SubtitleDisplayPosition
```

## subtitleTextFractionPosition

```kotlin
var subtitleTextFractionPosition: Float
```

## subtitleTextFractionPosition

```kotlin
var subtitleTextPixelPosition: Float
```

## videoPan

```kotlin
var videoPan: PointF
```

## videoZoom

```kotlin
var videoZoom: Float
```

# 메소드

## containsPointInSubtitleTextBounds

```kotlin
fun containsPointInSubtitleTextBounds(point: PointF): Boolean
```

## setAutoHideControl

```kotlin
fun setAutoHideControl()
```

## setSubtitleTextPosition

```kotlin
fun setSubtitleTextPosition(position: SubtitleTextPosition,alignment: SubtitleTextAlignment)
```

## unsetAutoHideControl

```kotlin
fun unsetAutoHideControl()
```

## zoomVideo

```kotlin
fun zoomVideo(scaleFactor: Float, pivotX: Float, pivotY: Float)
```

## zoomVideo

```kotlin
fun zoomVideo(scaleFactor: Float)
```

# 오버라이드 가능한 메서드

## onAttachedToPlayer

```kotlin
open fun onAttachedToPlayer(player: MediaPlayer)
```

## onDetachedFromPlayer

```kotlin
open fun onDetachedFromPlayer(player: MediaPlayer)
```

## onVideoZoomChange

```kotlin
open fun onVideoZoomChange(scaleFactor: Float)
```