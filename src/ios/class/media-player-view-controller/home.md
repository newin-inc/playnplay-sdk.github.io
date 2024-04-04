# MediaPlayerViewController

```swift
public class MediaPlayerViewController: UIViewController, UIGestureRecognizerDelegate {

    public private(set) var configuration: Configuration
    public var controllerShowTimeout: Duration = .seconds(5)
    public private(set) var player: MediaPlayer

    public struct Configuration
}
```

미디어 플레이어 뷰 컨트롤러입니다. 아래와 같은 속성과 구조체를 제공합니다. <br>
활성화된 미디어 플레이어 뷰 컨트롤러에 접근하는 방법은 [여기](../uiviewcontroller/details.md#mediaplayerviewcontroller)를 참고하세요.

<br><br>
<details open>
<summary>
    <a href="./details.md#속성">속성</a>
</summary>

* [var configuration: MediaPlayerViewController.Configuration](./details.md#configuration)

* [var controllerShowTimeout: Duration](./details.md#controllerShowTimeout)

* [var player: MediaPlayer](./details.md#player)
  
</details>
<br>

<details open>
<summary>
    <a href="./details.md#구조체">구조체</a>
</summary>

* [struct MediaPlayerViewController.Configuration](./details.md#mediaplayerviewcontrollerconfiguration)

</details>
<br>
