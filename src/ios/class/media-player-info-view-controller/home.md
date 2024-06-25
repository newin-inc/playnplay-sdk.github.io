# MediaPlayerInfoViewController

```swift
open class MediaPlayerInfoViewController: UIViewController
```

미디어 플레이어 [제어 화면을 커스터마이징](../media-player-control-view-controller/home.md)할 때, 탐색 위치나 볼륨 등 사용자 제어 값을 기반으로 하는 기능을 추기하고 싶을 때가 있습니다. 이때 [이 클래스](#mediaplayerinfoviewcontroller)를 확장하여 구현하면 됩니다.

직접 구현한 미디어 플레이어 정보 화면을 미디어 플레이어에 적용하기 위해서는 [AppDelegate](../../how-to-use/home.md#appdelegate-설정)를 설정하는 부분, 즉 application 메서드에 아래 코드를 추가하면 됩니다.

```swift
MediaPlayerViewController.defaultInfoViewControllerType = <클래스 이름>.self
```

<div align="right">
참고: <a href="../../how-to-use/home.md#appdelegate-설정">AppDelegate 설정</a><br>
<a href="../media-player-control-view-controller/home.md">MediaPlayerControlViewController</a>
</div>

# 속성

## player

```swift
var player: MediaPlayer! { get }
```

| 타입 | 설명 | 설정 |
|:--:|:--:|:--:|
|[MediaPlayer](../media-player/home.md)|현재 재생 중인 미디어 플레이어|불가능|

현재 재생 중인 미디어 플레이어에 접근하는 속성입니다. 

<div align="right">
참고: <a href="../media-player/home.md">MediaPlayer</a>
</div>

<br>

# 오버라이드 가능한 클래스 메서드

## newInstance()

```swift
open class func newInstance() -> MediaPlayerInfoViewController
```

스토리보드를 사용하여 구성한 정보 화면을 뷰 컨트롤러에 연결할 때 이 메서드를 오버라이드 하여 추가하십시오.
해당 메서드를 구현하지 않으면 동작하지 않습니다.

<div align="right">
참고: <a href="https://developer.apple.com/documentation/uikit/uistoryboard">UIStoryboard</a>
</div>

<br>

# 오버라이드 가능한 메서드

## onBrightnessChange(_)

```swift
open func onBrightnessChange(_ brightness: Float)
```

| 파라미터 | 타입 | 설명 | 범위 |
|:--:|:--:|:--:|:--:|
|brightness|Float|화면 밝기|0.0~1.0|

화면 밝기가 변경될 때, 추가로 처리해야할 작업이 있을 경우에 이 메서드를 오버라이드하면 됩니다.

## onRateChange(_)

```swift
open func onRateChange(_ playbackRate: Float)
```

| 파라미터 | 타입 | 설명 |범위|
|:--:|:--:|:--:|:--:|
|playbackRate|Float|재생 속도|0.1~4.0|

재생 속도가 변경될 때, 추가로 처리해야할 작업이 있을 경우에 이 메서드를 오버라이드하면 됩니다.

## onVolumeChange(_)

```swift
open func onVolumeChange(_ volume: Float)
```

| 파라미터 | 타입 | 설명 | 범위 |
|:--:|:--:|:--:|:--:|
|volume|Float|디바이스 음량|0.0~1.0|

볼륨이 변경될 때, 추가로 처리해야할 작업이 있을 경우에 이 메서드를 오버라이드하면 됩니다.

<br>

# 오버라이드 가능한 탐색 관련 메서드

[탐색을 시작](#onbeginseekgesture)하는 시점부터 [탐색 과정](#oncontinueseekgestureposition), 그리고 [종료](#onendseekgesture)하기 전까지의 모든 단계에 추가적인 작업을 수행할 수 있는 오버라이드 가능한 메서드를 제공합니다. 탐색과 관련하여 보다 더 자세한 설명은 [MediaPlayerControlViewController](../media-player-control-view-controller/home.md)의 [오버라이드 가능한 탐색 관련 메서드](../media-player-control-view-controller/home.md#오버라이드-가능한-탐색-관련-메서드)를 참고하세요.

## onBeginSeekGesture()

```swift
open func onBeginSeekGesture()
```

사용자가 탐색을 시작할 때 추가로 처리해야 할 작업이 있을 경우에 이 메서드를 오버라이드하여 구현하면 됩니다.

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
|position|[Duration](../../struct/duration/home.md)|탐색하려는 미디어 위치|

사용자가 탐색 하는 중 추가로 처리해야 할 작업이 있을 경우에 이 메서드를 오버라이드하여 구현하면 됩니다. 여기서 position 값은 탐색 방향과 정도(드래그 거리, 시간 등)에 따라 계산된 탐색하려는 미디어의 위치입니다.

<div align="right">
참고: <a href="#onbeginseekgesture">onBeginSeekGesture()</a><br>
<a href="#onendseekgesture">onEndSeekGesture()</a>
</div>

## onEndSeekGesture()

```swift
open func onEndSeekGesture()
```

사용자가 탐색을 종료할 때 추가로 처리해야 할 작업이 있을 경우에 이 메서드를 오버라이드하여 구현하면 됩니다.

<div align="right">
참고: <a href="#onbeginseekgesture">onBeginSeekGesture()</a><br>
<a href="#oncontinueseekgestureposition">onContinueSeekGesture(position:)</a>
</div>
