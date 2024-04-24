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
) {
    enum class ScreenOrientationLock {
        Portrait,
        Landscape,
        Off
    }

    companion object {
        val defaultConfiguration = MediaPlayerActivityConfiguration()
    }
}
```

미디어 플레이어의 설정을 도와주는 데이터 클래스입니다. 아래와 같은 생성자 파라미터 및 속성, 열거형을 가지고 있습니다.

## 생성자 파라미터
|이름|타입|설명|필수|기본값|
|:--:|:--:|--|:--:|:--:|
|allowsBackgroundPlayback|Boolean|백그라운드 재생을 허용할 지 여부|X|false|
|allowsCellularAccess|Boolean|셀룰러 데이터 사용을 허용할 지 여부|X|true|
|allowsPictureInPicturePlayback|Boolean|화면 속 화면 모드를 허용할 지 여부|X|true|
|controllerShowTimeout|[kotlin.time.Duration](https://kotlinlang.org/api/latest/jvm/stdlib/kotlin.time/-duration/)|컨트롤러를 보여줄 최대 시간|X|5초|
|defaultPlaybackRate|Float|미디어의 재생 속도|X|1.0|
|seekBackwardIncrement|[kotlin.time.Duration](https://kotlinlang.org/api/latest/jvm/stdlib/kotlin.time/-duration/)|현재 위치에서 전으로 이동하는 시간의 크기|X|10초|
|seekForwardIncrement|[kotlin.time.Duration](https://kotlinlang.org/api/latest/jvm/stdlib/kotlin.time/-duration/)|현재 위치에서 후로 이동하는 시간의 크기|X|10초|
|screenOrientationLock|ScreenOrientationLock|화면 고정 방향|X|Off|

### 사용 예제
미디어 재생 속도를 1.5배로 지정하고(나머지는 기본값) 미디어 아이템을 재생하는 예제
```kotlin
import com.newin.nplayer.sdk.MediaPlayerActivityConfiguration
import com.newin.nplayer.sdk.extensions.presentMediaPlayer

val configuration = MediaPlayerActivityConfiguration(
    defaultPlaybackRate = 1.5f
)
presentMediaPlayer(mediaItem, configuration)
```
<div align="right">
참고: <a href="../context/home.md#presentmediaplayer">presentMediaPlayer()</a>
</div>

<br><br>
탐색 시간을 5초로 설정하고(나머지는 기본값) 미디어 아이템을 재생하는 예제
```kotlin
import com.newin.nplayer.sdk.MediaPlayerActivityConfiguration
import com.newin.nplayer.sdk.extensions.presentMediaPlayer

val configuration = MediaPlayerActivityConfiguration(
    seekBackwardIncrement = 5.seconds, 
    seekForwardIncrement = 5.seconds
)
presentMediaPlayer(mediaItem, configuration)
```
<div align="right">
참고: <a href="../context/home.md#presentmediaplayer">presentMediaPlayer()</a>
</div>


<br><br>
<details open>
<summary>
    <a href="./details.md#속성">속성</a>
</summary>

* [var allowsBackgroundPlayback: Boolean](./details.md#allowsbackgroundplayback)

* [var allowsCellularAccess: Boolean](./details.md#allowsbackgroundplayback)

* [var allowsPictureInPicturePlayback: Boolean](./details.md#allowspictureinpictureplayback)

* [var controllerShowTimeout: Duration](./details.md#controllershowtimeout)

* [var defaultPlaybackRate: Float](./details.md#defaultplaybackrate)

* [var seekBackwardIncrement: Duration](./details.md#seekbackwardincrement)

* [var seekForwardIncrement: Duration](./details.md#seekforwardincrement)

* [var screenOrientationLock: ScreenOrientationLock](./details.md#screenorientationlock)

* [val defaultConfiguration: MediaPlayerActivityConfiguration](./details.md#defaultconfiguration)

</details>
<br>

<details open>
<summary>
    <a href="./details.md#열거형">열거형</a>
</summary>

* [enum class ScreenOrientationLock](./details.md#screenorientationlock)
    
</details>
<br>
