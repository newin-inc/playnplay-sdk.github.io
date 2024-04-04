# UIViewController

```swift
extension UIViewController { 

    public var mediaPlayerViewController: MediaPlayerViewController? { get }

    public func present(
        mediaItems: [MediaItem],
        startIndex: Int = 0,
        configuration: MediaPlayerViewController.Configuration = .defaultConfiguration()
    )
}
```

뷰 컨트롤러에서 [미디어 플레이어 뷰 컨트롤러](../media-player-view-controller/home.md)에 접근할 수 있는 속성과 미디어를 재생하는 메서드를 제공합니다.

<details open>
<summary>
    <a href="./details.md#속성">속성</a>
</summary>

* [var mediaPlayerViewController](./details.md#mediaplayerviewcontroller)
    
</details>
<br>

<details open>
<summary>
    <a href="./details.md#메서드">메서드</a>
</summary>

* [func present(mediaItems: [MediaItem], startIndex: Int, configuration: MediaPlayerViewController.Configuration)](./details.md#presentmediaitemsstartindexconfiguration)
    
</details>
<br>
