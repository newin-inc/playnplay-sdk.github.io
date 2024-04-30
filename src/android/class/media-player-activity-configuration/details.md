# 속성

## allowsBackgroundPlayback
```kotlin
var allowsBackgroundPlayback: Boolean = false
```

|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|Boolean|백그라운드 재생을 허용할 지 여부|가능|false|

백그라운드 재생을 허용할 지 여부를 나타내는 속성입니다.

사용 예제: 백그라운드 재생을 허용하게 설정하고, 미디어 아이템을 재생하는 예제
```kotlin
import com.newin.nplayer.sdk.MediaPlayerActivityConfiguration
import com.newin.nplayer.sdk.extensions.presentMediaPlayer

val configuration = MediaPlayerActivityConfiguration.defaultConfiguration
configuration.allowsBackgroundPlayback = true

presentMediaPlayer(mediaItem, configuration)
```
<div align="right">
참고: <a href="#defaultconfiguration">defaultConfiguration</a>, 
<a href="../context/home.md#presentmediaplayer">presentMediaPlayer()</a>
</div>

## allowsCellularAccess
```kotlin
var allowsCellularAccess: Boolean = true
```

|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|Boolean|셀룰러 데이터 사용을 허용할 지 여부|가능|true|

미디어를 재생할 때, 셀룰러 데이터를 사용할 지 여부를 나타내는 속성입니다.

사용 예제: 셀룰러 데이터 사용을 허용하지 않게 설정하고, 미디어 아이템을 재생하는 예제
```kotlin
import com.newin.nplayer.sdk.MediaPlayerActivityConfiguration
import com.newin.nplayer.sdk.extensions.presentMediaPlayer

val configuration = MediaPlayerActivityConfiguration.defaultConfiguration
configuration.allowsCellularAccess = false

presentMediaPlayer(mediaItem, configuration)
```
<div align="right">
참고: <a href="#defaultconfiguration">defaultConfiguration</a>, 
<a href="../context/home.md#presentmediaplayer">presentMediaPlayer()</a>
</div>


## allowsPictureInPicturePlayback
```kotlin
var allowsPictureInPicturePlayback: Boolean = true
```

|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|Boolean|화면 속 화면 모드를 허용할 지 여부|가능|true|

화면 속 화면 모드를 허용할 지 여부를 나타내는 속성입니다.

사용 예제: 화면 속 화면 모드를 허용하지 않게 설정하고, 미디어 아이템을 재생하는 예제
```kotlin
import com.newin.nplayer.sdk.MediaPlayerActivityConfiguration
import com.newin.nplayer.sdk.extensions.presentMediaPlayer

val configuration = MediaPlayerActivityConfiguration.defaultConfiguration
configuration.allowsPictureInPicturePlayback = false

presentMediaPlayer(mediaItem, configuration)
```
<div align="right">
참고: <a href="#defaultconfiguration">defaultConfiguration</a>, 
<a href="../context/home.md#presentmediaplayer">presentMediaPlayer()</a>
</div>

## controllerShowTimeout
```kotlin
var controllerShowTimeout: Duration = Duration.ofSeconds(5)
```
| 타입 | 설명 | 설정 | 기본값 |
|:----:|---|:---:|:---:|
|[java.time.Duration](https://developer.android.com/reference/java/time/Duration)|컨트롤러를 자동으로 숨기는 시간| 가능 | 5초 |

해당 시간만큼 아무 것도 입력하지 않으면 컨트롤러가 사라집니다. 0초로 설정할 경우에는 컨트롤러를 자동으로 숨기지 않습니다.

사용 예제: 컨트롤러를 계속 항상 켜두는 설정을 하고, 미디어 아이템을 재생하는 예제
```kotlin
import com.newin.nplayer.sdk.MediaPlayerActivityConfiguration
import com.newin.nplayer.sdk.extensions.presentMediaPlayer

val configuration = MediaPlayerActivityConfiguration.defaultConfiguration
configuration.controllerShowTimeout = Duration.ZERO

presentMediaPlayer(mediaItem, configuration)
```
<div align="right">
참고: <a href="#defaultconfiguration">defaultConfiguration</a>, 
<a href="../context/home.md#presentmediaplayer">presentMediaPlayer()</a>
</div>

## defaultPlaybackRate
```kotlin
var defaultPlaybackRate: Float = 1f
```
|타입|설명|설정|범위|기본값|
|:--:|--|:--:|:--:|:--:|
|Float|미디어의 기본 재생 속도|가능|0.1~4.0|1.0|

미디어 재생 속도를 나타내는 속성입니다.

사용 예제: 재생 속도를 2.0배로 하고, 미디어 아이템을 재생하는 예제
```kotlin
import com.newin.nplayer.sdk.MediaPlayerActivityConfiguration
import com.newin.nplayer.sdk.extensions.presentMediaPlayer

val configuration = MediaPlayerActivityConfiguration.defaultConfiguration
configuration.defaultPlaybackRate = 2f

presentMediaPlayer(mediaItem, configuration)
```
<div align="right">
참고: <a href="#defaultconfiguration">defaultConfiguration</a>, 
<a href="../context/home.md#presentmediaplayer">presentMediaPlayer()</a>
</div>

## seekBackwardIncrement
```kotlin
var seekBackwardIncrement: Duration = Duration.ofSeconds(10)
```
| 타입 | 설명 | 설정 | 기본값 |
|:----:|---|:---:|:---:|
|[java.time.Duration](https://developer.android.com/reference/java/time/Duration)|현재 위치에서 전으로 이동하는 시간의 크기|가능|10초|

현재 위치에서 전으로 탐색하는 시간을 나타내는 속성입니다.

사용 예제: 뒤로 탐색을 5초로 설정하고, 미디어 아이템을 재생하는 예제
```kotlin
import com.newin.nplayer.sdk.MediaPlayerActivityConfiguration
import com.newin.nplayer.sdk.extensions.presentMediaPlayer

val configuration = MediaPlayerActivityConfiguration.defaultConfiguration
configuration.seekBackwardIncrement = Duration.ofSeconds(5)

presentMediaPlayer(mediaItem, configuration)
```
<div align="right">
참고: <a href="#defaultconfiguration">defaultConfiguration</a>, 
<a href="../context/home.md#presentmediaplayer">presentMediaPlayer()</a>
</div>

## seekForwardIncrement
```kotlin
var seekForwardIncrement: Duration = Duration.ofSeconds(10)
```
|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|[java.time.Duration](https://developer.android.com/reference/java/time/Duration)|현재 위치에서 후로 이동하는 시간의 크기|가능|10초|

현재 위치에서 후로 탐색하는 시간을 나타내는 속성입니다.

사용 예제: 앞으로 탐색을 5초로 설정하고, 미디어 아이템을 재생하는 예제
```kotlin
import com.newin.nplayer.sdk.MediaPlayerActivityConfiguration
import com.newin.nplayer.sdk.extensions.presentMediaPlayer

val configuration = MediaPlayerActivityConfiguration.defaultConfiguration
configuration.seekForwardIncrement = Duration.ofSeconds(5)

presentMediaPlayer(mediaItem, configuration)
```
<div align="right">
참고: <a href="#defaultconfiguration">defaultConfiguration</a>, 
<a href="../context/home.md#presentmediaplayer">presentMediaPlayer()</a>
</div>

## screenOrientationLock
```kotlin
var screenOrientationLock: ScreenOrientationLock = ScreenOrientationLock.Off
```

|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|[ScreenOrientationLock](#screenorientationlock-1)|화면 방향 고정 상태|가능|Off|
<div align="right">
참고: <a href="#defaultconfiguration">defaultConfiguration</a>, 
<a href="#screenorientationlock-1">ScreenOrientationLock</a>
</div>

화면의 고정 상태를 나타내는 속성입니다.

사용 예제: 화면 방향을 가로로 고정하고, 미디어 아이템을 재생하는 예제
```kotlin
import com.newin.nplayer.sdk.MediaPlayerActivityConfiguration
import com.newin.nplayer.sdk.extensions.presentMediaPlayer

val configuration = MediaPlayerActivityConfiguration.defaultConfiguration
configuration.screenOrientationLock = MediaPlayerActivityConfiguration.ScreenOrientationLock.Landscape

presentMediaPlayer(mediaItem, configuration)
```
<div align="right">
참고: <a href="#defaultconfiguration">defaultConfiguration</a>, 
<a href="../context/home.md#presentmediaplayer">presentMediaPlayer()</a>
</div>

## defaultConfiguration
```kotlin
val defaultConfiguration: MediaPlayerActivityConfiguration
```
기본 설정 값을 가져오는 속성입니다.

사용 예제: 기본 설정 값으로 미디어 아이템을 재생하는 예제
```kotlin
import com.newin.nplayer.sdk.MediaPlayerActivityConfiguration
import com.newin.nplayer.sdk.extensions.presentMediaPlayer

val configuration = MediaPlayerActivityConfiguration.defaultConfiguration

presentMediaPlayer(mediaItem, configuration)
```
<div align="right">
참고: <a href="#defaultconfiguration">defaultConfiguration</a>, 
<a href="../context/home.md#presentmediaplayer">presentMediaPlayer()</a>
</div>

<br><br>
# 열거형

## ScreenOrientationLock

```kotlin
enum class ScreenOrientationLock {
    Portrait,
    Landscape,
    Off
}
```

화면 방향 고정 상태를 나타내는 열거형입니다.
<div align="right">
참고: <a href="../../enum/media-player-activity-configuration-screen-orientation-lock/home.md">MediaPlayerActivityConfiguration.ScreenOrientationLock</a>
</div>

