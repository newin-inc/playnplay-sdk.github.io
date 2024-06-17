# MediaPlayerControlViewController

```swift
open class MediaPlayerControlViewController: UIViewController
```

미디어 플레이어 제어 화면을 커스터마이징 하여 사용하려면, 이 오픈 클래스의 확장을 통해 가능합니다. 

직접 구현한 미디어 플레이어 제어 화면을 미디어 플레이어에 적용하기 위해서는 [AppDelegate](../../how-to-use/home.md#appdelegate-설정)를 설정하는 부분, 즉 application 메서드에 아래 코드를 추가하면 됩니다.

```swift
MediaPlayerViewController.defaultControlViewContollerType = <클래스 이름>.self
```

<div align="right">
참고: <a href="../../how-to-use/home.md#appdelegate-설정">AppDelegate 설정</a>
</div>

# 속성

## player

```swift
var player: MediaPlayer! { get }
```

| 타입 | 설명 | 설정 |
|:--:|:--:|:--:|
|[MediaPlayer](../media-player/home.md)|현재 컨트롤러 화면의 미디어 플레이어|불가능|

현재 컨트롤러 화면의 미디어 플레이어에 접근하는 속성입니다. 

<div align="right">
참고: <a href="../media-player/home.md">MediaPlayer</a>
</div>

<br>

# 오픈 클래스 메서드

## newInstance()

```swift
open class func newInstance() -> MediaPlayerControlViewController
```

스토리보드를 사용하여 구성한 제어 화면을 뷰 컨트롤러에 연결할 때 이 메서드를 오버라이드 하여 추가하십시오.
해당 메서드를 구현하지 않으면 동작하지 않습니다.

<div align="right">
참고: <a href="https://developer.apple.com/documentation/uikit/uistoryboard">UIStoryboard</a>
</div>

<br>

# 탐색 관련 오픈 메서드

사용자의 드래그 방향에 따라 미디어 재생 위치를 변경하는 기능이 있습니다. 사용자가 드래그를 하면, 아래 순서대로 메서드를 호출합니다.<br>
사용자가 드래그 하기 위해 화면에 손을 갖다 대면, [onBeginSeekGesture()](#onbeginseekgesture)가 호출됩니다. 화면에서 손을 떼지 않고 드래그를 하는 동안에는 [onContinueSeekGesture(position:)](#oncontinueseekgestureposition)가 호출되고, 드래그의 방향과 정도에 따라 이동하려는 위치 및 위치 차이가 화면에 표시됩니다. 화면에서 손을 때면, [onEndSeekGesture()](#onendseekgesture)가 호출되고 해당 위치로 이동합니다.<br>

## onBeginSeekGesture()

```swift
open func onBeginSeekGesture()
```

사용자가 드래그를 시작할 때 추가로 처리해야 할 작업이 있을 경우에 이 메서드를 오버라이드하여 구현하면 됩니다.

<div align="right">
참고: <a href="#oncontinueseekgestureposition">onContinueSeekGesture(position:)</a><br>
<a href="#onendseekgesture">onEndSeekGesture()</a>
</div>

## onContinueSeekGesture(position:)

```swift
open func onContinueSeekGesture(position: Duration)
```

| 파라미터 | 타입 | 설명 |
|:--:|:--:|:--:|
|position|[Duration](../../struct/duration/home.md)|이동하려는 미디어 위치|

사용자가 드래그를 하는 중 추가로 처리해야 할 작업이 있을 경우에 이 메서드를 오버라이드하여 구현하면 됩니다. 여기서 position 값은 드래그 방향과 정도에 따라 계산된 이동하려는 미디어의 위치입니다.

<div align="right">
참고: <a href="#onbeginseekgesture">onBeginSeekGesture()</a><br>
<a href="#onendseekgesture">onEndSeekGesture()</a>
</div>

## onEndSeekGesture()

```swift
open func onEndSeekGesture()
```

사용자가 드래그를 종료할 때 추가로 처리해야 할 작업이 있을 경우에 이 메서드를 오버라이드하여 구현하면 됩니다.

<div align="right">
참고: <a href="#onbeginseekgesture">onBeginSeekGesture()</a><br>
<a href="#oncontinueseekgestureposition">onContinueSeekGesture(position:)</a>
</div>

<br>

# 메서드

## beginSeekBack()

```swift
func beginSeekBack()
```

빠르게 되감기 할 때 사용하는 메서드입니다. 이 메서드가 호출되면 목표 재생 위치가 화면에 표시되며, 시간이 지남에 따라 화면에 표시된 재생 위치는 지속적으로 감소합니다. [endSeekBack()](#endseekback)이 호출되기 전까지 미디어 재생에는 아무런 영향을 미치지 않으며, [endSeekBack()](#endseekback)이 호출되는 순간, 표시된 위치로 이동합니다.

<div align="right">
참고: <a href="#endseekback">endSeekBack()</a>
</div>

## beginSeekForward()

```swift
func beginSeekForward()
```

빠르게 감기 할 때 사용하는 메서드입니다. 이 메서드가 호출되면 목표 재생 위치가 화면에 표시되며, 시간이 지남에 따라 화면에 표시된 재생 위치는 지속적으로 증가합니다. [endSeekForward()](#endseekforward)가 호출되기 전까지 미디어 재생에는 아무런 영향을 미치지 않으며, [endSeekForward()](#endseekforward)가 호출되는 순간, 미디어는 표시된 위치로 이동합니다.

<div align="right">
참고: <a href="#endseekforward">endSeekForward()</a>
</div>


## dismissMediaPlayerViewController()

```swift
func dismissMediaPlayerViewController()
```

미디어 플레이어를 종료할 때 이 메서드를 사용하십시오.  

## endSeekBack()

```swift
func endSeekBack()
```

빠르게 되감기 할 때 사용하는 메서드입니다. [beginSeekBack()](#beginseekback)을 호출한 이후에 이 메서드를 사용하여, 미디어를 원하는 위치로 이동시킬 수 있습니다.

<div align="right">
참고: <a href="#beginseekback">beginSeekBack()</a>
</div>

## endSeekForward()

```swift
func endSeekForward()
```

빠르게 감기 할 때 사용하는 메서드입니다. [beginSeekForward()](#beginseekforward)를 호출한 이후에 이 메서드를 사용하여, 미디어를 원하는 위치로 이동시킬 수 있습니다.

<div align="right">
참고: <a href="#beginseekforward">beginSeekForward()</a>
</div>

## lockScreen()

```swift
func lockScreen()
```

잠금 화면을 사용할 때 이 메서드를 사용하면 됩니다.

## resetAutoHideControl()

```swift
func resetAutoHideControl()
```

[removeAutoHideControl()](#removeautohidecontrol)를 사용한 이후, 기존의 [컨트롤러 자동 숨김 설정](../../struct/media-player-view-controller-configuration/home.md#controllershowtimeout)으로 되돌아가기 위해서는 이 메서드를 사용하면 됩니다.<br>
[removeAutoHideControl()](#removeautohidecontrol)을 사용하지 않은 경우에는, 이 메서드를 호출한 시점부터 [미디어 플레이어 설정](../../struct/media-player-view-controller-configuration/home.md)의 [controllerShowTimeout](../../struct/media-player-view-controller-configuration/home.md#controllershowtimeout) 설정 시간 후에 컨트롤러는 사라집니다.

<div align="right">
참고: <a href="#removeautohidecontrol">removeAutoHideControl</a>
</div>


## removeAutoHideControl()

```swift
func removeAutoHideControl()
```

[미디어 플레이어 설정](../../struct/media-player-view-controller-configuration/home.md)의 [controllerShowTimeout](../../struct/media-player-view-controller-configuration/home.md#controllershowtimeout) 설정에 따라 일정 시간 후 컨트롤러는 자동으로 사라집니다. 이 메서드를 사용하면 컨트롤러를 일시적으로 계속 켜놓을 수 있습니다. 원래 설정으로 되돌아가려면 [resetAutoHideControl()](#resetautohidecontrol)를 사용하면 됩니다.


## setInterfaceOrientation(_)

```swift
func setInterfaceOrientation(_ interfaceOrientationMask: UIInterfaceOrientationMask)
```

| 파라미터 | 타입 | 설명 |
|:--:|:--:|:--:|
|interfaceOrientationMask|[UIInterfaceOrientationMask](https://developer.apple.com/documentation/uikit/uiinterfaceorientationmask)||

화면 고정 방향을 설정하는 메서드입니다.<br>
화면 고정 방향을 portrait(세로)로 설정할 때는, [UIInterfaceOrientationMask.portrait](https://developer.apple.com/documentation/uikit/uiinterfaceorientationmask/1623065-portrait)를, landscape(가로)로 설정할 때는 [UIInterfaceOrientationMask.landscape](https://developer.apple.com/documentation/uikit/uiinterfaceorientationmask/1623106-landscape)를, 화면 고정을 끄기 위해서는 [UIInterfaceOrientationMask.all](https://developer.apple.com/documentation/uikit/uiinterfaceorientationmask/1623035-all)을 사용하면 됩니다.

<div align="right">
참고: <a href="https://developer.apple.com/documentation/uikit/uiinterfaceorientationmask">UIInterfaceOrientationMask</a>
</div>

## toggleLockInterfaceOrientation()

```swift
func toggleLockInterfaceOrientation()
```

화면 고정 설정/해제를 하는 메서드입니다. 

## unlockScreen()

```swift
func unlockScreen()
```

잠금 화면을 종료할 때 이 메서드를 사용하면 됩니다.