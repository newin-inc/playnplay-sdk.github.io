# 속성

## allowsPictureInPicturePlayback
```swift
public var allowsPictureInPicturePlayback: Bool = true
```

|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|Boolean|화면 속 화면 모드를 허용할 지 여부|가능|true|

화면 속 화면 모드를 허용할 지 여부를 나타내는 속성입니다.

사용 예제: 화면 속 화면 모드를 허용하지 않게 설정하고, 미디어 아이템을 재생하는 예제
```swift
var configuration = MediaPlayerViewController.Configuration.defaultConfiguration()
configuration.allowsPictureInPicturePlayback = false

self.present([mediaItem], configuration)
```
<div align="right">
참고: <a href="../../how-to-use/home.md#presentmediaitemsstartindexconfiguration">present</a>
</div>

## controllerShowTimeout
```swift
public var controllerShowTimeout: Duration = .seconds(5)
```
| 타입 | 설명 | 설정 | 기본값 |
|:----:|---|:---:|:---:|
|[Duration](https://kotlinlang.org/api/latest/jvm/stdlib/kotlin.time/-duration/)|콘트롤러를 자동으로 숨기는 시간| 가능 | 5초 |

해당 시간만큼 아무 것도 입력하지 않으면 콘트롤러가 사라집니다. 0초로 설정할 경우에는 콘트롤러를 자동으로 숨기지 않습니다.

사용 예제: 콘트롤러를 계속 항상 켜두는 설정을 하고, 미디어 아이템을 재생하는 예제
```swift
var configuration = MediaPlayerViewController.Configuration.defaultConfiguration()
configuration.controllerShowTimeout = .seconds(0)

self.present([mediaItem], configuration)
```
<div align="right">
참고: <a href="../../how-to-use/home.md#presentmediaitemsstartindexconfiguration">present</a>
</div>

## defaultPlaybackRate
```swift
public var defaultPlaybackRate: Float = 1
```
|타입|설명|설정|범위|기본값|
|:--:|--|:--:|:--:|:--:|
|Float|미디어의 기본 재생 속도|가능|0.1~4.0|1.0|

미디어 재생 속도를 나타내는 속성입니다.

사용 예제: 재생 속도를 2.0배로 하고, 미디어 아이템을 재생하는 예제
```swift
var configuration = MediaPlayerViewController.Configuration.defaultConfiguration()
configuration.controllerShowTimeout = 2.0

self.present([mediaItem], configuration)
```
<div align="right">
참고: <a href="../../how-to-use/home.md#presentmediaitemsstartindexconfiguration">present</a>
</div>

## seekBackwardIncrement
```swift
public var seekBackwardIncrement: Duration = .seconds(10)
```
| 타입 | 설명 | 설정 | 기본값 |
|:----:|---|:---:|:---:|
|[Duration](https://kotlinlang.org/api/latest/jvm/stdlib/kotlin.time/-duration/)|현재 위치에서 전으로 이동하는 시간의 크기|가능|10초|

현재 위치에서 전으로 탐색하는 시간을 나타내는 속성입니다.

사용 예제: 뒤로 탐색을 20초로 설정하고, 미디어 아이템을 재생하는 예제
```swift
var configuration = MediaPlayerViewController.Configuration.defaultConfiguration()
configuration.seekBackwardIncrement = .seconds(20)

self.present([mediaItem], configuration)
```
<div align="right">
참고: <a href="../../how-to-use/home.md#presentmediaitemsstartindexconfiguration">present</a>
</div>

## seekForwardIncrement
```swift
public var seekForwardIncrement: Duration = .seconds(10)
```
| 타입 | 설명 | 설정 | 기본값 |
|:----:|---|:---:|:---:|
|[Duration](https://kotlinlang.org/api/latest/jvm/stdlib/kotlin.time/-duration/)|현재 위치에서 후로 이동하는 시간의 크기|가능|10초|

현재 위치에서 후로 탐색하는 시간을 나타내는 속성입니다.

사용 예제: 앞으로 탐색을 20초로 설정하고, 미디어 아이템을 재생하는 예제
```swift
var configuration = MediaPlayerViewController.Configuration.defaultConfiguration()
configuration.seekForwardIncrement = .seconds(20)

self.present([mediaItem], configuration)
```
<div align="right">
참고: <a href="../../how-to-use/home.md#presentmediaitemsstartindexconfiguration">present</a>
</div>

## screenOrientationLock
```swift
public var screenOrientationLock: ScreenOrientationLock = .off
```
|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|[ScreenOrientationLock](#screenorientationlock-1)|화면 방향 고정 상태|가능|Off|
<div align="right">
참고: <a href="#screenorientationlock-1">ScreenOrientationLock</a>
</div>

사용 예제: 화면 방향을 가로로 고정하고, 미디어 아이템을 재생하는 예제
```swift
var configuration = MediaPlayerViewController.Configuration.defaultConfiguration()
configuration.screenOrientationLock = .landscape

self.present([mediaItem], configuration)
```
<div align="right">
참고: <a href="../../how-to-use/home.md#presentmediaitemsstartindexconfiguration">present</a>
</div>

<br><br>
# 메서드

## defaultConfiguration
```swift
static func defaultConfiguration() -> Configuration
```

기본 설정 값을 가져오는 메서드입니다.

사용 예제: 기본 설정 값으로 미디어 아이템을 재생하는 예제
```kotlin
self.present([mediaItem], MediaPlayerViewController.Configuration.defaultConfiguration())
```
<div align="right">
참고: <a href="../../how-to-use/home.md#presentmediaitemsstartindexconfiguration">present</a>
</div>

<br><br>
# 열거형

## ScreenOrientationLock
```kotlin
public enum ScreenOrientationLock: String {
    case portrait = "portrait"
    case landscape = "landscape"
    case off = "off"

    func toInterfaceOrientaion() -> UIInterfaceOrientationMask
}
```
<div align="right">
참고: <a href="../../enum/media-player-view-controller-configuration-screen-orientation-lock/home.md">MediaPlayerViewController.Configuration.ScreenOrientationLock</a>
</diuv>
