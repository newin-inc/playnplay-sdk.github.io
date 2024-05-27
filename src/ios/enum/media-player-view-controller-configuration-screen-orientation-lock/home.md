# MediaPlayerViewController.Configuration.ScreenOrientationLock

```swift
enum ScreenOrientationLock : String
```

화면 방향 고정 상태를 나타내는 열거형입니다. 

<div align="right">
참고: <a href="../../struct/media-player-view-controller-configuration/home.md">MediaPlayerViewController.Configuration</a>
</div>

<br> 

# 케이스

## landscape

```swift
case landscape = "landscape"
```

가로 방향으로 고정

## off

```swift
case off = "off"
```

고정하지 않음

## portrait

```swift
case portrait = "portrait"
```

세로 방향으로 고정

<br>

# 메서드

## toInterfaceOrientaion()

```swift
func toInterfaceOrientaion() -> UIInterfaceOrientationMask
```

현재 화면 방향 고정 상태를 [UIInterfaceOrientationMask](https://developer.apple.com/documentation/uikit/uiinterfaceorientationmask) 타입으로 나타내는 메서드입니다.<br>
portrait 일 때는, [UIInterfaceOrientationMask.portrait](https://developer.apple.com/documentation/uikit/uiinterfaceorientationmask/1623065-portrait)를, landscape일 때는 [UIInterfaceOrientationMask.landscape](https://developer.apple.com/documentation/uikit/uiinterfaceorientationmask/1623106-landscape)를, 화면 고정을 끄면 [UIInterfaceOrientationMask.all](https://developer.apple.com/documentation/uikit/uiinterfaceorientationmask/1623035-all)을 반환합니다.

<div align="right">
참고: <a href="https://developer.apple.com/documentation/uikit/uiinterfaceorientationmask">UIInterfaceOrientationMask</a>
</div>
