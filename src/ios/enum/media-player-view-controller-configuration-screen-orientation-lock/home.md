# MediaPlayerViewController.Configuration.ScreenOrientationLock

```swift
public class MediaPlayerViewController: UIViewController, UIGestureRecognizerDelegate {
    public struct Configuration {

        public enum ScreenOrientationLock: String {
            case portrait = "portrait"
            case landscape = "landscape"
            case off = "off"

            func toInterfaceOrientaion() -> UIInterfaceOrientationMask
        }
    }
}
```

|이름|설명|
|:--:|--|
|portrait|세로 방향으로 고정|
|landscape|가로 방향으로 고정|
|off|고정하지 않음|

화면 방향 고정 상태를 나타내는 열거형입니다.
<div align="right">
참고: <a href="../../struct/media-player-view-controller-configuration/home.md">MediaPlayerViewController.Configuration</a>
</div>

### 사용 예제
미디어 플레이어의 화면 방향을 가로 방향으로 고정하고, 미디어 아이템을 재생하는 예제

```swift
var configuration = MediaPlayerViewController.Configuration.defaultConfiguration()
configuration.screenOrientationLock = .landscape

self.present([mediaItem], configuration)
```
<div align="right">
참고: <a href="../../how-to-use/home.md#presentmediaitemsstartindexconfiguration">present</a>
</div>

## 메서드

### toInterfaceOrientaion()

```swift
func toInterfaceOrientaion() -> UIInterfaceOrientationMask
```
<div align="right">
참고: <a href="https://developer.apple.com/documentation/uikit/uiinterfaceorientationmask">UIInterfaceOrientationMask</a>
</div>

현재 화면 방향 고정 상태를 [UIInterfaceOrientationMask](https://developer.apple.com/documentation/uikit/uiinterfaceorientationmask) 타입으로 나타내는 메서드입니다.<br>
portrait 일 때는, [UIInterfaceOrientationMask.portrait](https://developer.apple.com/documentation/uikit/uiinterfaceorientationmask/1623065-portrait)를, landscape일 때는 [UIInterfaceOrientationMask.landscape](https://developer.apple.com/documentation/uikit/uiinterfaceorientationmask/1623106-landscape)를, 화면 고정을 끄면 [UIInterfaceOrientationMask.all](https://developer.apple.com/documentation/uikit/uiinterfaceorientationmask/1623035-all)을 반환합니다.


