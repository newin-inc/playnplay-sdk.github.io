# MediaPlayerViewController.Configuration

```swift
struct Configuration
```

미디어 플레이어의 설정을 도와주는 구조체입니다. 아래와 같은 속성, 메서드 및 열거형을 가지고 있습니다.

<br>

# 속성

## allowsBackgroundPlayback

```swift
var allowsBackgroundPlayback: Bool = false
```

|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|Bool|백그라운드 재생을 허용할 지 여부|가능|false|

백그라운드 재생을 허용할 지 여부를 나타내는 속성입니다. 

## allowsCellularAccess

```swift
var allowsCellularAccess: Bool = true
```

|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|Bool|셀룰러 데이터 사용을 허용할 지 여부|가능|true|

미디어를 재생할 때, 셀룰러 데이터를 사용할 지 여부를 나타내는 속성입니다.

## allowsPictureInPicturePlayback

```swift
var allowsPictureInPicturePlayback: Bool = true
```

|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|Bool|화면 속 화면 모드를 허용할 지 여부|가능|true|

화면 속 화면 모드를 허용할 지 여부를 나타내는 속성입니다.

## controllerShowTimeout

```swift
var controllerShowTimeout: Duration = .seconds(5)
```

| 타입 | 설명 | 설정 | 기본값 |
|:----:|---|:---:|:---:|
|[Duration](../../struct/duration/home.md)|컨트롤러를 자동으로 숨기는 시간| 가능 | 5초 |

해당 시간만큼 아무 것도 입력하지 않으면 컨트롤러가 사라집니다. 0초로 설정할 경우에는 컨트롤러를 자동으로 숨기지 않습니다.

## defaultPlaybackRate

```swift
var defaultPlaybackRate: Float = 1
```

|타입|설명|설정|범위|기본값|
|:--:|--|:--:|:--:|:--:|
|Float|미디어의 기본 재생 속도|가능|0.1~4.0|1.0|

미디어 재생 속도를 나타내는 속성입니다.

## seekBackwardIncrement

```swift
var seekBackwardIncrement: Duration = .seconds(10)
```

| 타입 | 설명 | 설정 | 기본값 |
|:----:|---|:---:|:---:|
|[Duration](../../struct/duration/home.md)|현재 위치에서 전으로 이동하는 시간의 크기|가능|10초|

현재 위치에서 전으로 탐색하는 시간을 나타내는 속성입니다.

<div align="right">
참고: <a href="../../struct/duration/home.md">Duration</a>
</div>

## seekForwardIncrement

```swift
var seekForwardIncrement: Duration = .seconds(10)
```

| 타입 | 설명 | 설정 | 기본값 |
|:----:|---|:---:|:---:|
|[Duration](../../struct/duration/home.md)|현재 위치에서 후로 이동하는 시간의 크기|가능|10초|

현재 위치에서 후로 탐색하는 시간을 나타내는 속성입니다.

<div align="right">
참고: <a href="../../struct/duration/home.md">Duration</a>
</div>

## screenOrientationLock

```swift
var screenOrientationLock: ScreenOrientationLock = .off
```

|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|[ScreenOrientationLock](#screenorientationlock-1)|화면 방향 고정 상태|가능|[.off](../../enum/media-player-view-controller-configuration-screen-orientation-lock/home.md#off)|

화면 방향 고정 상태를 나타내는 속성입니다.

<div align="right">
참고: <a href="#screenorientationlock-1">ScreenOrientationLock</a>
</div>

## subtitleDisplayPosition

```swift
var subtitleDisplayPosition: SubtitleDisplayPosition = .onVideo
```

|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|[SubtitleDisplayPosition](#subtitledisplayposition-1)|자막 출력 위치|가능|[.onVideo](../../enum/media-player-subtitle-display-position/home.md#onvideo)|

자막 출력 위치를 나타내는 속성입니다.

<div align="right">
참고: <a href="#subtitledisplayposition-1">subtitleDisplayPosition</a>
</div>

<br>

# 정적 메서드

## defaultConfiguration()

```swift
static func defaultConfiguration() -> Configuration
```

기본 설정 값을 가져오는 정적 메서드입니다.

<br>

# 열거형

## ScreenOrientationLock

```swift
enum ScreenOrientationLock: String
```

화면 방향 고정 상태를 나타내는 열거형입니다. 자세한 설명은 [MediaPlayerViewController.Configuration.ScreenOrientationLock](../../enum/media-player-view-controller-configuration-screen-orientation-lock/home.md)에서 확인하세요.

<div align="right">
참고: <a href="../../enum/media-player-view-controller-configuration-screen-orientation-lock/home.md">MediaPlayerViewController.Configuration.ScreenOrientationLock</a>
</div>

## SubtitleDisplayPosition

```swift
typealias SubtitleDisplayPosition = MediaPlayer.SubtitleDisplayPosition
```

자막 출력 위치를 나타내는 열거형입니다. 자세한 설명은 [MediaPlayer.SubtitleDisplayPosition](../../enum/media-player-subtitle-display-position/home.md)에서 확인하세요.

<div align="right">
참고: <a href="../../enum/media-player-subtitle-display-position/home.md">MediaPlayer.SubtitleDisplayPosition</a>
</div>