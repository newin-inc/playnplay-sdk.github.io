# MediaPlayerActivityConfiguration.ScreenOrientationLock

```kotlin
import com.newin.nplayer.sdk.MediaPlayerActivityConfiguration
```

```kotlin
data class MediaPlayerActivityConfiguration(

    enum class ScreenOrientationLock {
        Portrait,
        Landscape,
        Off
    }
}
```

|이름|설명|
|:--:|--|
|Portrait|세로 방향으로 고정|
|Landscape|가로 방향으로 고정|
|Off|고정하지 않음|

화면 방향 고정 상태를 나타내는 열거형입니다.
<div align="right">
참고: <a href="../../class/media-player-activity-configuration/home.md">MediaPlayerActivityConfiguration</a>
</div>

## 사용 예제
미디어 플레이어의 화면 방향을 가로 방향으로 고정하고, 미디어 아이템을 재생하는 예제

```kotlin
import com.newin.nplayer.sdk.MediaPlayerActivityConfiguration
import com.newin.nplayer.sdk.extensions.presentMediaPlayer

val configuration = MediaPlayerActivityConfiguration(
    screenOrientationLock = ScreenOrientationLock.Landscape
)

presentMediaPlayer(mediaItem, configuration)
```
