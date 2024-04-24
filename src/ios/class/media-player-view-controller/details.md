# 속성

## configuration
```swift
public private(set) var configuration: MediaPlayerViewController.Configuration
```
|타입|설명|설정|
|:--:|--|:--:|
|[MediaPlayerViewController.Configuration](#mediaplayerviewcontrollerconfiguration)|설정 값|불가능|

현재 설정을 나타내는 속성입니다.

사용 예제: 현재 미디어 플레이어의 기본 재생 속도가 2배속인지 확인하는 예제
```swift
if (mediaPlayerViewController?.configuration.defaultPlaybackRate == 2.0) {
    ...
}
```
<div align="right">
참고: <a href="#mediaplayerviewcontrollerconfiguration">MediaPlayerViewController.Configuration</a>
</div>

## controllerShowTimeout
```swift
public var controllerShowTimeout: Duration = .seconds(5)
```
|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|[Duration](../../struct/duration/home.md)|컨트롤러를 보여줄 최대 시간|가능|5초|

사용 예제: 컨트롤러를 계속 항상 켜두게 하는 예제
```swift
mediaPlayerViewController?.controllerShowTimeout = .zero
```

## player
```swift
public private(set) var player: MediaPlayer
```
|타입|설명|설정|
|:--:|--|:--:|
|[MediaPlayer](../media-player/home.md)|현재 활성화 된 미디어 플레이어|불가능|

미디어 플레이어에 접근할 수 있는 속성입니다.

사용 예제: 현재 재생되는 미디어를 일시 정지하는 예제
```swift
mediaPlayerViewController?.player?.pause()
```

<br><br>
# 구조체

## MediaPlayerViewController.Configuration

```swift
public class MediaPlayerViewController: UIViewController, UIGestureRecognizerDelegate {

    public struct Configuration {
        public var allowsPictureInPicturePlayback: Bool = true
        public var controllerShowTimeout: Duration = .seconds(5)
        public var defaultPlaybackRate: Float = 1
        public var seekForwardIncrement: Duration = .seconds(10)
        public var seekBackwardIncrement: Duration = .seconds(10)
        public var screenOrientationLock: ScreenOrientationLock = .off

        public static func defaultConfiguration() -> Self { Self() }

        public enum ScreenOrientationLock: String {
            case portrait = "portrait"
            case landscape = "landscape"
            case off = "off"

            func toInterfaceOrientaion() -> UIInterfaceOrientationMask
        }

    }
}
```
미디어 플레이어의 설정을 도와주는 구조체입니다. 보다 더 자세한 설명은 [MediaPlayerViewController.Configuration](../../struct/media-player-view-controller-configuration/home.md)를 참고하세요.
