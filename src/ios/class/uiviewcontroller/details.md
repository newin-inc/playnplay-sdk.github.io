# 속성

## mediaPlayerViewController
```swift
var mediaPlayerViewController: MediaPlayerViewController? { get }
```
|타입|설명|설정|
|:--:|--|:--:|
|[MediaPlayerViewController](../../class/media-player-view-controller/home.md)?|현재 뷰 컨트롤러가 제공하는 [미디어 플레이어 뷰 컨트롤러](../../class/media-player-view-controller/home.md)|불가능|

현재 [뷰 컨트롤러](https://developer.apple.com/documentation/uikit/uiviewcontroller)가 제공하는 [미디어 플레이어 뷰 컨트롤러](../../class/media-player-view-controller/home.md) 또는 뷰 컨트롤러 계층 구조에서 그 상위 미디어 플레이어 뷰 컨트롤러 중 하나를 나타내는 속성입니다.

사용 예제: 미디어 컨트롤러 화면을 30초 후에 숨기도록 설정하는 예제
```swift
mediaPlayerViewController?.controllerShowTimeout = .seconds(30)
```
<div align="right">
참고: <a href="../media-player-view-controller/details.md#controllershowtimeout">controllerShowTimeout</a>
</div>

<br><br>
# 메서드

## present(mediaItems:startIndex:configuration:)
```swift
extension UIViewController {
    public func present(
        mediaItems: [MediaItem],
        startIndex: Int = 0,
        configuration: configuration: MediaPlayerViewController.Configuration = .defaultConfiguration()
    )
}
```

|파라미터|타입|설명|기본값|
|:--:|:--:|:--:|:--:|
|mediaItems|\[[MediaItem](../../struct/media-item/home.md)\]|미디어 아이템 목록|없음|
|startIndex|Int|재생할 미디어의 인덱스|0|
|configuration|[MediaPlayerViewController<br>.Configuration](../../struct/media-player-view-controller-configuration/home.md)|설정 값|[.defaultConfiguration()](../../struct/media-player-view-controller-configuration/details.md#defaultconfiguration)|

사용 예제: 화면 방향을 세로로 고정하고, 미디어 아이템 목록에서 인덱스 2의 미디어를 재생하는 예제
```swift
var configuration = MediaPlayerViewController.Configuration.defaultConfiguration()
configuration.screenOrientationLock = .portrait

present(mediaItems, 2, configuration)
```

<div align="right">
참고: <a href="../../struct/media-player-view-controller-configuration/home.md">MediaPlayerViewController.Configuration</a>
</div>

<br><br>
present(mediaItems:startIndex:configuration:)는 아래와 같이 구현되어 있으니 참고하여 확장해서 사용하십시오.

```swift
public func present(mediaItems: [MediaItem], startIndex: Int = 0, configuration: configuration: MediaPlayerViewController.Configuration = .defaultConfiguration()) {
    if let playerViewController = self.mediaPlayerViewController {
        playerViewController.player.load(
            mediaItems: mediaItems,
            startMediaItemIndex: startIndex
        )
    }

    let playerViewController = MediaPlayerViewController.new(configuration: configuration))

    self.present(playerViewController, animated: true) {
        let player = playerViewController.player
        player.addEventHandler(
            .ended({ [weak self] in
                self?.dismiss(animated: true) })
            )
        player.addEventHandler(
            .error({ [weak playerViewController] error in
                let alert = UIAlertController(
                    title: nil,
                    message: error.localizedDescription,
                    preferredStyle: .alert
                )
                alert.addAction(
                    UIAlertAction.init(
                        title: "Close",
                        style: .default
                    ) { [weak self] _ in
                        self?.dismiss(animated: true)
                    }
                )
                playerViewController?.present(alert, animated: true)
            })
        )
        player.load(
            mediaItems: mediaItems,
            startMediaItemIndex: startIndex
        )
    }
}
```
<div align="right">
참고: <a href="https://developer.apple.com/documentation/uikit/uiviewcontroller/1621380-present">present(_:animated:completion:)</a>
</div>
