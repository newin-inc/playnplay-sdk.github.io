# MediaPlayerViewController.Configuration

```swift
public class MediaPlayerViewController {

    public struct Configuration {

        public var allowsPictureInPicturePlayback: Bool = true
        public var controllerShowTimeout: Duration = .seconds(5)
        public var defaultPlaybackRate: Float = 1
        public var seekBackwardIncrement: Duration = .seconds(10)
        public var seekForwardIncrement: Duration = .seconds(10)
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

미디어 플레이어의 설정을 도와주는 데이터 클래스입니다. 아래와 같은 속성, 메서드 및 열거형을 가지고 있습니다.

<br><br>
<details open>
<summary>
    <a href="./details.md#속성">속성</a>
</summary>

* [var controllerShowTimeout: Duration](./details.md#controllershowtimeout)

* [var seekBackwardIncrement: Duration](./details.md#seekbackwardincrement)

* [var seekForwardIncrement: Duration](./details.md#seekforwardincrement)

* [var defaultPlaybackRate: Float](./details.md#defaultplaybackrate)

* [var screenOrientationLock: ScreenOrientationLock](./details.md#screenorientationlock)

* [var allowsPictureInPicturePlayback: Boolean](./details.md#allowspictureinpictureplayback)

</details>
<br>

<details open>
<summary>
    <a href="./details.md#메서드">메서드</a>
</summary>

* [func defaultConfiguration() -> Configuration](./details.md#defaultconfiguration)

</details>
<br>

<details open>
<summary>
    <a href="./details.md#열거형">열거형</a>
</summary>

* [enum class ScreenOrientationLock](./details.md#screenorientationlock-1)
    
</details>
<br>