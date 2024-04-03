# UIViewController

```swift
extension UIViewController { 
    public func present(
        mediaItems: [MediaItem],
        startIndex: Int = 0,
        configuration: configuration: MediaPlayerViewController.Configuration = .defaultConfiguration()
    )

    public var mediaPlayerViewController: MediaPlayerViewController? { get }
}
```

## present(mediaItems:startIndex:configuration:)
|파라미터|타입|설명|
|:--:|:--:|--|
|mediaItems|\[[MediaItem]\]|미디어 아이템 목록|
|startIndex|Int|재생할 미디어의 인덱스|
|configuration|[MediaPlayerViewController.Configuration](../../struct/media-player-view-controller-configuration/home.md)|설정 값|

## mediaPlayerViewController
```swift
var mediaPlayerViewController: MediaPlayerViewController? { get }
```
|타입|설명|설정|
|:--:|--|:--:|
|[MediaPlayerViewController](../../class/media-player-view-controller/home.md)|이 뷰 컨트롤러가 제공하는 [미디어 뷰 컨트롤러](../../class/media-player-view-controller/home.md)|불가능

이 [뷰 컨트롤러](https://developer.apple.com/documentation/uikit/uiviewcontroller)가 제공하는 [미디어 뷰 컨트롤러](../../class/media-player-view-controller/home.md) 또는 뷰 컨트롤러 계층 구조에서 그 상위 미디어 뷰 컨트롤러 중 하나입니다.
