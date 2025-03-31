# MediaPlayerViewController

```swift
class MediaPlayerBaseViewController : UIViewController
```

커스텀 뷰 컨트롤러에서 사용하는 베이스 클래스입니다.<br>
커스텀 뷰 컨트롤러 구현은 샘플을 참고하세요. 

<br>

# 속성

## player

```swift
var player: MediaPlayer
```

|타입|설명|설정|
|:--:|:--:|:--:|
|[MediaPlayer](../media-player/home.md)|미디어 플레이어|불가능|

미디어 플레어 인스턴스입니다.

## interfaceOrientationMask

```swift
var interfaceOrientationMask: UIInterfaceOrientationMask
```

|타입|설명|설정|기본값|
|:--:|:--:|:--:|:--:|
|[UIInterfaceOrientationMask](https://developer.apple.com/documentation/uikit/uiinterfaceorientationmask)|화면 방향|가능|.all|

화면의 방향을 설정합니다.

# 메서드

## load(mediaItems:startMediaItemIndex:)

```swift
func load(
    mediaItems: [MediaItem],
    startMediaItemIndex: Int = 0
)
```

|파라미터|타입|설명|
|:--:|:--:|--|
|mediaItems|\[[MediaItem](../../struct/media-item/home.md)\]|로드하려는 [미디어 아이템](../../struct/media-item/home.md) 목록|
|startMediaItemIndex|Int|목록 중에서 처음 재생할 미디어 아이템의 index|

여러 개의 미디어를 로드하기 위한 메서드입니다. 처음으로 재생할 미디어를 정할 수 있습니다.

<div align="right">
참고: <a href="../../struct/media-item/home.md">MediaItem</a>
</div>

## close()

```swift
func close()
```
뷰 컨트롤러를 닫습니다. [UIViewController](https://developer.apple.com/documentation/uikit/uiviewcontroller)의 [dismiss](https://developer.apple.com/documentation/uikit/uiviewcontroller/dismiss(animated:completion:))를 호출한 것과 동일합니다.
