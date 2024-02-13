# 사용 방법

## AppDelegate 설정

미디어 재생 서비스를 설정하는 부분을 func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions:  [UIApplication.LaunchOptionsKey: Any]?)에 추가합니다. 여기서 [오디오세션](https://developer.apple.com/documentation/avfaudio/avaudiosession)을 구성하고, 앱 아이디를 사용하여 Drm 기본 설정을 합니다.

```swift
func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions:
    [UIApplication.LaunchOptionsKey: Any]?
) -> Bool {
    MediaPlaybackService.initialize(appId: "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxx")

    return true
}
```

## 뷰 컨트롤러 구성

### 하나의 미디어 열기

```swift
func openTestMedia() {
    // DRM 설정을 합니다.
    let drmConfiguration = DrmConfiguration.Builder(
        appId: "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxx",
        userId: "사용자 아이디"
    ).build()

    // 미디어 파일을 구성하며, DRM 설정을 합니다.
    let mediaItem = MediaItem.from(url: URL(string: "미디어주소.mp4")!)
        .buildUpon()
        .drmConfiguration(drmConfiguration)
        .build()
	
    // 미디어를 엽니다. 
    let playerViewController = MediaPlayerViewController.new()
    self.present(playerViewController, animated: animated) {
        playerViewController.player.load(
        mediaItem: mediaItem
        )
    }
}
```

### 재생 목록으로 열기
iOS SDK에서 제공하는 present(mediaItems:startIndex:) 함수를 사용하면, 쉽게 재생 목록을 열 수 있습니다.

```swift
let mediaItems: [MediaItem] = [ mediaItem1, mediaItem2, mediaItem3, ...]

self.present(mediaItems: mediaItems, startIndex: 0)
```

### present(mediaItems:startIndex:)
위 재생 목록 열기에서 사용한 present(mediaItems:startIndex:)는 아래와 같이 구현되어 있으니 참고하여 확장해서 사용하십시오.

```swift
public func present(mediaItems: [MediaItem], startIndex: Int = 0) {
    if case .some(let playerViewController) = 
        self.presentedViewController as? MediaPlayerViewController {
            playerViewController.player.load(
                mediaItems: mediaItems,
                startMediaItemIndex: startIndex
            )
            return
        }

    let playerViewController = MediaPlayerViewController.new()

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


## 구성 관련 코드 설명

### DRM 설정

#### DrmConfiguration.Builder(appId:userId:) -> DrmConfiguration.Builder
DRM 구성을 위해 초기 설정을 합니다. 제공받은 앱 ID와 사용자 아이디(User ID)를 입력하면 됩니다. .build() 를 호출하여야 구성이 완료됩니다.

|파라미터|타입|설명|필수|
|:--:|:--:|--|:--:|
|appId|String|앱 ID|O|
|userId|String|사용자 ID|O|

#### .build()
추가로 입력 받은 정보로 DRM을 최종 구성합니다.

### 미디어 아이템 구성

#### MediaItem.from(url:)
미디어 주소를 파라미터로 입력하여 미디어 아이템을 구성합니다.
<div align="right">
참고: <a href="../media_item/home.md#fromurl---mediaitem">from(url:)</a>
</div>

#### .buildUpon()
Builder를 사용하여 초기 설정을 완료합니다.
<div align="right">
참고: <a href="../media_item/home.md#buildupon---builder">buildUpon()</a>
</div>

#### .drmConfiguration(_)
앞에서 만든 DRM설정값을 넘겨줍니다.
<div align="right">
참고: <a href="../media_item/home.md#drmconfiguration_---builder">drmConfiguration(_)</a>
</div>

#### .build()
앞에서 입력받은 정보를 바탕으로 미디어 아이템을 만듭니다.
<div align="right">
참고: <a href="../media_item/home.md#build---mediaitem">build()</a>
</div>

### 미디어뷰 컨트롤러 구성

#### MediaPlayerViewController.new()
뷰컨트롤러를 만듭니다.

#### UIViewController.present(_:animated:completion:)
화면에 뷰컨트롤러를 표시합니다. [재생 목록 열기](#재생-목록으로-열기)에서 사용한 present(mediaItems:startIndex:)를 활용하시면 좋습니다.
<div align="right">
참고: <a href="https://developer.apple.com/documentation/uikit/uiviewcontroller/1621380-present">present()</a>
</div>

|파라미터|타입|설명|
|:--:|:--:|--|
|viewControllerToPresent|UIViewController|화면에 보여줄 뷰컨트롤러입니다.|
|flag|Bool|화면에 보일 때, 애니메이션을 추가할 지 여부입니다.|
|completion|(() -> Void)?|뷰컨트롤러가 화면에 보인 후 실행할 블록입니다. 위의 예제에서는 미디어를 읽어옵니다.|

#### MediaPlayerViewController.player: MediaPlayer
뷰컨트롤러에 있는 미디어 플레이어입니다.
<div align="right">
참고: <a href="../media_player/home.md">MediaPlayer</a>
</div>

#### player.load(mediaItem:)
미디어를 로드하기 위한 메서드입니다.
<div align="right">
참고: <a href="../media_player/methods/details.md#loadmediaitem">MediaPlayer.load(mediaItem:)</a>
</div>

### 제목 설정
제목을 설정하는 기능 제공합니다.
```swift
let mediaItem = MediaItem.Builder(url: URL(string: "미디어주소.mp4")!)
    .metadataConfiguration(
        MetadataConfiguration.Builder().title("제목").build()
    )
    .drmConfiguration(drmConfiguration)
    .build()
```

#### MediaItem.Builder(url:)
제목을 설정하기 위해 Builder()를 사용합니다.
<div align="right">
참고: <a href="../media_item/home.md#mediaitembuilder">MediaItem.Builder</a>
</div>

#### .metadataConfiguration(_)
제목 정보를 넘겨줍니다.
<div align="right">
참고: <a href="../media_item/home.md#metadataconfiguration_---builder">metadataConfiguration(_)</a>
</div>

#### .drmConfiguration(_)
DRM설정값을 넘겨줍니다.
<div align="right">
참고: <a href="../media_item/home.md#drmconfiguration_---builder">drmConfiguration(_)</a>
</div>

#### .build()
앞에서 입력받은 정보를 바탕으로 미디어 아이템을 만듭니다.
<div align="right">
참고: <a href="../media_item/home.md#build---mediaitem">build()</a>
</div>
