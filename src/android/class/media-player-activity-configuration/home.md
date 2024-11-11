# MediaPlayerActivityConfiguration

```kotlin
import com.newin.nplayer.sdk.MediaPlayerActivityConfiguration
```

```kotlin
data class MediaPlayerActivityConfiguration(
    var allowsBackgroundPlayback: Boolean,
    var allowsCellularAccess: Boolean,
    var allowsPictureInPicturePlayback: Boolean,
    var controllerShowTimeout: Duration,
    var defaultPlaybackRate: Float,
    var seekBackwardIncrement: Duration,
    var seekForwardIncrement: Duration,
    var screenOrientationLock: ScreenOrientationLock,
    var subtitleDisplayPosition: SubtitleDisplayPosition,
)
```

미디어 플레이어의 설정을 도와주는 데이터 클래스입니다. 아래와 같은 생성자 파라미터 및 속성, 열거형을 가지고 있습니다. configuration은 [presentMediaPlayer()](../context/home.md#presentmediaplayer)를 호출할 때 사용하여 미디어 플레이어를 설정합니다.

<div align="right">
참고: <a href="../context/home.md#presentmediaplayer">presentMediaPlayer()</a><br>
<a href="../../how-to-use/home.md#미디어-아이템-구성-예제">미디어 아이템 구성 예제</a>
</div>

<br>

# 생성자 파라미터

|이름|타입|설명|필수|기본값|
|:--:|:--:|:--:|:--:|:--:|
|allowsBackgroundPlayback|Boolean|백그라운드 재생을 허용할 지 여부|X|false|
|allowsCellularAccess|Boolean|셀룰러 데이터 사용을 허용할 지 여부|X|true|
|allowsPictureInPicturePlayback|Boolean|화면 속 화면 모드를 허용할 지 여부|X|true|
|controllerShowTimeout|[java.time.Duration](https://developer.android.com/reference/java/time/Duration)|컨트롤러를 보여줄 최대 시간|X|5초|
|defaultPlaybackRate|Float|미디어의 재생 속도|X|1.0|
|seekBackwardIncrement|[java.time.Duration](https://developer.android.com/reference/java/time/Duration)|현재 위치에서 전으로 이동하는 시간의 크기|X|10초|
|seekForwardIncrement|[java.time.Duration](https://developer.android.com/reference/java/time/Duration)|현재 위치에서 후로 이동하는 시간의 크기|X|10초|
|screenOrientationLock|[ScreenOrientationLock](../../enum/media-player-activity-configuration-screen-orientation-lock/home.md)|화면 고정 방향|X|[Off](../../enum/media-player-activity-configuration-screen-orientation-lock/home.md#off)|
|subtitleDisplayPosition|[SubtitleDisplayPosition](../../enum/media-player-activity-configuration-subtitle-display-position/home.md)|자막 출력 위치|X|[OnVideo](../../enum/media-player-activity-configuration-subtitle-display-position/home.md#onvideo)|

<br>

# 정적 속성

## defaultConfiguration

```kotlin
companion object {
    val defaultConfiguration: MediaPlayerActivityConfiguration
}
```

|타입|설명|설정|
|:--:|:--:|:--:|
|[MediaPlayerActivityConfiguration](#mediaplayeractivityconfiguration)|기본 설정 값에 접근하기 위한 속성|불가능|

기본 설정 값을 가져오는 정적 속성입니다. MediaPlayerActivityConfiguration.defaultConfiguration 를 사용하여 기본 설정 값을 가져올 수 있습니다.

<br>

# 속성

## allowsBackgroundPlayback

```kotlin
var allowsBackgroundPlayback: Boolean = false
```

|타입|설명|설정|기본값|
|:--:|:--:|:--:|:--:|
|Boolean|백그라운드 재생을 허용할 지 여부|가능|false|

백그라운드 재생을 허용할 지 여부를 나타내는 속성입니다.

## allowsCellularAccess

```kotlin
var allowsCellularAccess: Boolean = true
```

|타입|설명|설정|기본값|
|:--:|:--:|:--:|:--:|
|Boolean|셀룰러 데이터 사용을 허용할 지 여부|가능|true|

미디어를 재생할 때, 셀룰러 데이터를 사용할 지 여부를 나타내는 속성입니다.

## allowsPictureInPicturePlayback

```kotlin
var allowsPictureInPicturePlayback: Boolean = true
```

|타입|설명|설정|기본값|
|:--:|:--:|:--:|:--:|
|Boolean|화면 속 화면 모드를 허용할 지 여부|가능|true|

화면 속 화면 모드를 허용할 지 여부를 나타내는 속성입니다.

## controllerShowTimeout

```kotlin
var controllerShowTimeout: Duration = Duration.ofSeconds(5)
```

| 타입 | 설명 | 설정 | 기본값 |
|:----:|---|:---:|:---:|
|[java.time.Duration](https://developer.android.com/reference/java/time/Duration)|컨트롤러를 자동으로 숨기는 시간| 가능 | 5초 |

해당 시간만큼 아무 것도 입력하지 않으면 컨트롤러가 사라집니다. 0초로 설정할 경우에는 컨트롤러를 자동으로 숨기지 않습니다.

## defaultPlaybackRate

```kotlin
var defaultPlaybackRate: Float = 1f
```

|타입|설명|설정|범위|기본값|
|:--:|:--:|:--:|:--:|:--:|
|Float|미디어의 기본 재생 속도|가능|0.1~4.0|1.0|

미디어 재생 속도를 나타내는 속성입니다.

## seekBackwardIncrement

```kotlin
var seekBackwardIncrement: Duration = Duration.ofSeconds(10)
```

| 타입 | 설명 | 설정 | 기본값 |
|:----:|---|:---:|:---:|
|[java.time.Duration](https://developer.android.com/reference/java/time/Duration)|현재 위치에서 전으로 이동하는 시간의 크기|가능|10초|

현재 위치에서 전으로 탐색하는 시간을 나타내는 속성입니다.

## seekForwardIncrement

```kotlin
var seekForwardIncrement: Duration = Duration.ofSeconds(10)
```

|타입|설명|설정|기본값|
|:--:|:--:|:--:|:--:|
|[java.time.Duration](https://developer.android.com/reference/java/time/Duration)|현재 위치에서 후로 이동하는 시간의 크기|가능|10초|

현재 위치에서 후로 탐색하는 시간을 나타내는 속성입니다.

## screenOrientationLock

```kotlin
var screenOrientationLock: ScreenOrientationLock = ScreenOrientationLock.Off
```

|타입|설명|설정|기본값|
|:--:|:--:|:--:|:--:|
|[ScreenOrientationLock](#screenorientationlock-1)|화면 방향 고정 상태|가능|[Off](../../enum/media-player-activity-configuration-screen-orientation-lock/home.md#off)|

화면의 고정 상태를 나타내는 속성입니다.

<div align="right">
참고: <a href="#screenorientationlock-1">ScreenOrientationLock</a>
</div>

## subtitleDisplayPosition

```kotlin
var subtitleDisplayPosition: SubtitleDisplayPosition = SubtitleDisplayPosition.OnVideo
```

|타입|설명|설정|기본값|
|:--:|:--:|:--:|:--:|
|[SubtitleDisplayPosition](#subtitledisplayposition-1)|자막 출력 위치|가능|[OnVideo](../../enum/media-player-activity-configuration-subtitle-display-position/home.md#onvideo)|

자막 추력 위치를 나타내는 속성입니다.

<div align="right">
참고: <a href="#subtitledisplayposition-1">subtitleDisplayPosition</a>
</div>


<br>

# 열거형

## ScreenOrientationLock

```kotlin
enum class ScreenOrientationLock
```

화면 방향 고정 상태를 나타내는 열거형입니다.

<div align="right">
참고: <a href="../../enum/media-player-activity-configuration-screen-orientation-lock/home.md">MediaPlayerActivityConfiguration.ScreenOrientationLock</a>
</div>

## SubtitleDisplayPosition

```kotlin
enum class SubtitleDisplayPosition
```

자막 출력 위치를 나타내는 열거형입니다.

<div align="right">
참고: <a href="../../enum/media-player-activity-configuration-subtitle-display-position/home.md">MediaPlayerActivityConfiguration.SubtitleDisplayPosition</a>
</div>

