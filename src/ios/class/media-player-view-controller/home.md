# MediaPlayerViewController

```swift
class MediaPlayerViewController : UIViewController, UIGestureRecognizerDelegate
```

미디어 플레이어 뷰 컨트롤러입니다. 아래와 같은 속성과 구조체를 제공합니다. <br>
활성화된 미디어 플레이어 뷰 컨트롤러에 접근하는 방법은 [mediaPlayerViewController](../uiviewcontroller/home.md#mediaplayerviewcontroller)를 참고하세요.

<br>

# 속성

## configuration

```swift
private(set) var configuration: MediaPlayerViewController.Configuration
```

|타입|설명|설정|
|:--:|:--:|:--:|
|[MediaPlayerViewController.Configuration](#mediaplayerviewcontrollerconfiguration)|설정 값|불가능|

현재 설정을 나타내는 속성입니다.

<div align="right">
참고: <a href="#mediaplayerviewcontrollerconfiguration">MediaPlayerViewController.Configuration</a>
</div>

## controllerShowTimeout

```swift
var controllerShowTimeout: Duration = .seconds(5)
```

|타입|설명|설정|기본값|
|:--:|:--:|:--:|:--:|
|[Duration](../../struct/duration/home.md)|컨트롤러를 보여줄 최대 시간|가능|5초|

## player

```swift
private(set) var player: MediaPlayer
```

|타입|설명|설정|
|:--:|:--:|:--:|
|[MediaPlayer](../media-player/home.md)|현재 활성화 된 미디어 플레이어|불가능|

미디어 플레이어에 접근할 수 있는 속성입니다.

<br>

# 구조체

## MediaPlayerViewController.Configuration

```swift
struct Configuration
```

미디어 플레이어의 설정을 도와주는 구조체입니다.<br>

<div align="right">
참고: <a href="../../struct/media-player-view-controller-configuration/home.md">MediaPlayerViewController.Configuration</a>
</div>
