# MediaPlayer

```swift
class MediaPlayer
```

미디어 플레이어 클래스입니다. 활성화된 미디어 플레이어에 접근하는 방법은 [player](../media-player-view-controller/home.md#player)를 참고하세요.

<br>

# 속성

## allowsBackgroundPlayback

```swift
var allowsBackgroundPlayback: Bool { get set }
```

|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|Bool|백그라운드 재생을 허용할 지 여부|가능|false|

백그라운드 재생을 허용할 지 여부를 나타내는 속성입니다.

## allowsCellularAccess

```swift
var allowsCellularAccess: Bool { get set }
```

|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|Bool|동영상 재생 시, 셀룰러 데이터 사용 여부|가능|true|

동영상을 재생(스트리밍)할 때, 셀룰러 데이터를 사용할 지 여부를 나타내는 속성입니다.

## allowsPictureInPicturePlayback

```swift
var allowsPictureInPicturePlayback: Bool { get set }
```

|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|Bool|화면 속 화면 모드를 허용할 지 여부|가능|true|

화면 속 화면 모드를 허용할 지 여부를 나타내는 속성입니다.

## audioTracks

```swift
var audioTracks: [AudioTrack] { get }
```

|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|\[[AudioTrack](../audio-track/home.md)\]|오디오 트랙 리스트|불가능|[]|

오디오 트랙 리스트를 반환하는 속성입니다.

<div align="right">
참고: <a href="../audio-track/home.md">AudioTrack</a>
</div>

## autoplay

```swift
var autoplay: Bool { get set }
```

|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|Bool|미디어가 로드되었을 때, 즉 미디어가 준비가 된 즉시 재생할 것인지 결정하는 값|가능|true|

미디어가 로드되었을 때, 즉시 재생이 시작되어야 하는지를 나타내는 속성입니다. true면 자동 재생합니다.

## buffered

```swift
var buffered: [TimeRange] { get }
```

|타입|설명|설정|
|:--:|--|:--:|
|\[[TimeRange](../../struct/time-range/home.md)\]|현재 버퍼에 담고 있는 미디어 리소스의 범위 데이터|불가능|

버퍼에 있는 미디어 리소스의 범위를 반환합니다.

<div align="right">
참고: <a href="../../struct/time-range/home.md">TimeRange</a>
</div>

## canStartPictureInPictureAutomatically

```swift
var canStartPictureInPictureAutomatically: Bool { get set }
```

|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|Bool|백그라운드에서 화면 속 화면 모드를 자동으로 시작할 지 여부|가능|true|

앱이 백그라운드에 있을 때, 화면 속 화면 모드를 자동으로 시작할 수 있는지 여부를 의미하는 속성입니다.

## currentMediaItem

```swift
var currentMediaItem: MediaItem? { get }
```

|타입|설명|설정|
|:--:|--|:--:|
|[MediaItem](../../struct/media-item/home.md)?|현재 재생 중인 미디어 아이템|불가능|

현재 재생 중인 미디어 아이템을 반환하는 속성입니다.

<div align="right">
참고: <a href="../../struct/media-item/home.md">MediaItem</a>
</div>

## currentMediaItemIndex

```swift
var currentMediaItemIndex: Int { get }
```

|타입|설명|설정|
|:--:|--|:--:|
|Int|현재 재생 중인 미디어 아이템의 index|불가능|

현재 재생 중인 미디어 아이템의 index를 반환하는 속성입니다.

## currentSrc

```swift
var currentSrc: URL? { get }
```

|타입|설명|설정|
|:--:|--|:--:|
|[URL](https://developer.apple.com/documentation/foundation/url)?|현재 선택된 미디어 아이템의 [URL](https://developer.apple.com/documentation/foundation/url)|불가능|

미디어 리소스의 uri를 반환하는 속성입니다.

## currentTime

```swift
var currentTime: Duration { get set }
```

|타입|설명|설정|
|:--:|--|:--:|
|[Duration](../../struct/duration/home.md)|설정 시, 재생하고 싶은 특정 위치 ([seekTo](#seektoposition)와 같은 동작)<br>반환 시, 현재 재생 시점|가능|

현재 재생 위치를 [Duration](../../struct/duration/home.md) 단위로 나타내는 속성입니다.

## defaultMuted

```swift
var defaultMuted: Bool { get set }
```

|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|Bool|음소거 기본 설정 상태|가능|false|

오디오의 음소거 기본 설정을 나타내는 속성입니다.

## defaultPlaybackRate

```swift
var defaultPlaybackRate: Float { get set }
```

|타입|설명|설정|범위|기본값|
|:--:|--|:--:|:--:|:--:|
|Float|미디어의 기본 재생 속도|가능|0.1~4.0|1.0|

미디어의 기본 재생 속도를 나타내는 속성입니다.

## duration

```swift
var duration: Duration { get }
```

|타입|설명|설정|
|:--:|--|:--:|
|[Duration](../../struct/duration/home.md)|현재 미디어의 전체 길이|불가능|

현재 미디어 길이를 반환하는 속성입니다. 재생 가능한 미디어가 없을 경우 0에 해당하는 [Duration](../../struct/duration/home.md)을 반환합니다.

## ended

```swift
var ended: Bool { get }
```

|타입|설명|설정|
|:--:|--|:--:|
|Bool|재생 목록에서 마지막 미디어의 재생 완료 여부를 반환|불가능|

미디어 재생 완료 여부를 반환하는 속성입니다.

## error

```swift
var error: Error? { get }
```

|타입|설명|설정|
|:--:|--|:--:|
|[Error](https://developer.apple.com/documentation/swift/error)?|에러를 반환|불가능|

최근 발생한 에러를 반환하는 속성입니다.

<div align="right">
참고: <a href="https://developer.apple.com/documentation/swift/error">Error</a><br>
<a href="../../enum/media-player-error/home.md">MediaPlayerError</a>
</div>

## isFlippedHorizontally

```swift
var isFlippedHorizontally: Bool { get } 
```

|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|Bool|화면이 좌우 반전 상태인지 여부|불가능|false|

현재 재생 중인 미디어 화면이 좌우 반전 상태인지 여부를 반환하는 속성입니다
<div align="right">
참고: <a href="#fliphorizontal">flipHorizontal()</a>
</div>

## isFlippedVerticaly

```swift
var isFlippedVerticaly: Bool { get }
```

|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|Bool|화면이 상하 반전 상태인지 여부|불가능|false|

현재 재생 중인 미디어 화면이 상하 반전 상태인지 여부를 반환하는 속성입니다.
<div align="right">
참고: <a href="#flipvertical">flipVertical()</a>
</div>

## isPictureInPictureActive

```swift
var isPictureInPictureActive: Bool { get }
```

|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|Bool|화면 속 화면 모드인지 여부|불가능|false|

현재 재생되는 미디어가 화면 속 화면 모드인지를 반환하는 속성입니다.

## isPictureInPicturePossible

```swift
var isPictureInPicturePossible: Bool { get }
```

|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|Bool|현재 화면 속 화면 모드로 전환할 수 있는지 여부|불가능|false|

미디어가 화면 속 모드로 전환할 수 있는지 여부를 반환하는 속성입니다.
 
## isSeekable

```swift
var isSeekable: Bool { get }
```

|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|Bool|미디어 아이템에서 위치를 이동할 수 있는지 여부|불가능|false|

미디어에서 seek을 사용할 수 있는지 여부를 반환하는 속성입니다. 미디어의 길이가 파악이 될 경우 true를 반환합니다.

## isSubtitlesVisible

```swift
var isSubtitlesVisible: Bool { get set }
```

|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|Bool|화면에 자막 표시 여부|가능|true|

화면에 자막 표시 여부. true나 false값을 넣어서 자막을 켜고 끌 수 있습니다.

## loop

```swift
var loop: Bool { get set }
```

|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|Bool|미디어 반복 재생 여부를 결정하는 값|가능|false|

미디어 재생이 끝났을 때 다시 처음부터 재생할 지 여부를 나타내는 속성입니다.

## maxSeekToPreviousPosition

```swift
var maxSeekToPreviousPosition: Duration { get set }
```

|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|[Duration](../../struct/duration/home.md)|하단 인터페이스의 이전 버튼을 클릭하였을 때, 이전 미디어로 갈 것인지 현재 미디어의 맨 앞으로 갈 것인지에 대한 기준 값. 이 값보다 작으면 이전 미디어로 이동하고, 그렇지 않으면 현재 미디어의 맨 앞으로 이동합니다.|가능|3초|

이전 버튼을 눌렀을 때, 이전 미디어로 갈 수 있는 최대 허용 위치를 나타내는 속성입니다. 메서드 [seekToPrevious()](#seektoprevious)에서 사용됩니다.

<div align="right">
참고: <a href="#seektoprevious">seekToPrevious()</a>
</div>

## mediaItems

```swift
var mediaItems: [MediaItem] { get set }
```

|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|\[[MediaItem](../../struct/media-item/home.md)\]|현재 재생 목록에 있는 미디어 아이템들|가능|[]|

미디어 아이템들의 목록을 나타내는 속성입니다.

<div align="right">
참고: <a href="../../struct/media-item/home.md">MediaItem</a>
</div>

## muted

```swift
var muted: Bool { get set }
```

|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|Bool|오디오 음소거 여부|가능|false|

음소거 여부를 나타내는 속성입니다. 음소거면 true, 아니면 false입니다.

## paused

```swift
var paused: Bool { get }
```

|타입|설명|설정|
|:--:|--|:--:|
|Bool|미디어 일시 정지 여부|불가능|

미디어가 일시 정지 상태인지 반환하는 속성입니다.

## playbackRate

```swift
var playbackRate: Float { get set }
```

|타입|설명|설정|범위|기본값|
|:--:|--|:--:|:--:|:--:|
|Float|재생 속도|가능|0.1~4.0|1.0|

미디어의 재생 속도를 나타내는 속성입니다. 정상 속도는 1.0이고, 1보다 작을 때는 느리게, 1보다 클 때는 빠르게 재생합니다. 이 때, 오디오 피치 유지 여부는 [preservesPitch](#preservespitch)의 값으로 제어할 수 있습니다.

## playbackState
```swift
var playbackState: MediaPlayer.PlaybackState { get }
```

|타입|설명|설정|
|:--:|--|:--:|
|[MediaPlayer.PlaybackState](../../enum/media-player-playback-state/home.md)|미디어의 현재 상태를 나타냅니다.|불가능|

미디어의 현재 상태를 반환하는 속성입니다.

<div align="right">
참고: <a href="../../enum/media-player-playback-state/home.md">MediaPlayer.PlaybackState</a>
</div>

## preservesPitch

```swift
var preservesPitch: Bool { get set }
```

|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|Bool|오디오 피치 유지 여부|가능|true|

재생 속도에 따른 오디오 피치 유지 여부를 나타내는 속성입니다. 값이 true면 재생 속도가 변해도 오디오 피치는 변함 없으며, false일 경우 재생 속도에 따라 오디오 피치가 변합니다.

## repeatMode

```swift
var repeatMode: MediaPlayer.RepeatMode { get set }
```

|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|[MediaPlayer.RepeatMode](../../enum/media-player-repeat-mode/home.md)|오디오 반복 모드 상태|가능|none|

반복 모드를 나타내는 속성입니다.

<div align="right">
참고: <a href="../../enum/media-player-repeat-mode/home.md">MediaPlayer.RepeatMode</a>
</div>

## repeatRange

```swift
var repeatRange: MediaPlayer.RepeatRange? { get set }
```

|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|[MediaPlayer.RepeatRange](../../struct/media-player-repeat-range/home.md)?|반복 구간 범위|가능|nil|

반복 구간 범위를 나타내는 속성입니다.

<div align="right">
참고: <a href="../../struct/media-player-repeat-range/home.md">MediaPlayer.RepeatRange</a>
</div>

## scalingMode

```swift
var scalingMode: ScalingMode { get set }
```

|타입|설명|설정|
|:--:|--|:--:|
|[ScalingMode](../../enum/media-player-scaling-mode/home.md)|화면 스케일링 상태|가능|

현대 미디어 화면의 스케일링 상태를 나타내는 속성입니다.

<div align="right">
참고: <a href="../../enum/media-player-scaling-mode/home.md">ScalingMode</a>
</div>

## seekable

```swift
var seekable: [TimeRange] { get }
```

|타입|설명|설정|
|:--:|--|:--:|
|\[[TimeRange](../../struct/time-range/home.md)\]|미디어 내 탐색 가능한 구간 범위|불가능|

미디어 내에서 탐색(seek)이 가능한 구간 범위를 반환하는 속성입니다.

<div align="right">
참고: <a href="../../struct/time-range/home.md">TimeRange</a>
</div>

## seekBackIncrement

```swift
var seekBackIncrement: Duration { get set }
```

|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|[Duration](../../struct/duration/home.md)|현재 위치에서 전으로 이동하는 시간의 크기|가능|10초|

[seekBack()](#seekback)을 호출하여 이동할 때, 현재 위치에서 전으로 이동하는 시간 정도를 나타내는 속성입니다.
왼쪽 방향키를 입력 받거나 하단 인터페이스의 되감기 버튼을 클릭했을 때 이 속성을 사용합니다.

<div align="right">
참고: <a href="#seekback">seekBack()</a>
</div>

## seekForwardIncrement

```swift
var seekForwardIncrement: Duration { get set }
```

|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|[Duration](../../struct/duration/home.md)|현재 위치에서 후로 이동하는 시간의 크기|가능|10초|

[seekForward()](#seekforward)을 호출하여 이동할 때, 현재 위치에서 후로 이동하는 시간 정도를 나타내는 속성입니다.
오른쪽 방향키를 입력 받거나 하단 인터페이스의 빨리 감기 버튼을 클릭했을 때 이 속성을 사용합니다.

<div align="right">
참고: <a href="#seekforward">seekForward()</a>
</div>

## seeking

```swift
var seeking: Bool { get }
```

|타입|설명|설정|
|:--:|--|:--:|
|Bool|현재 미디어가 새로운 위치로 이동하고 있는지(탐색 중인지) 여부|불가능|

미디어가 탐색 중인지를 반환하는 속성입니다. 현재 미디어가 새로운 위치로 이동하고 있거나 탐색중이면 true를 반환합니다.

## subtitleDisplayPosition

```swift
var subtitleDisplayPosition: SubtitleDisplayPosition { get set }
```

|타입|설명|설정|
|:--:|--|:--:|
|[SubtitleDisplayPosition](../../enum/media-player-subtitle-display-position/home.md)|현재 미디어의 자막 출력 위치|가능|

현재 미디어의 자막 출력 위치를 나타내는 속성입니다.

<div align="right">
참고: <a href="../../enum/media-player-subtitle-display-position/home.md">SubtitleDisplayPosition</a>
</div>

## subtitleTextSize

```swift
 var subtitleTextSize: Double { get set }
```

|타입|설명|설정|
|:--:|--|:--:|
|Double|자막 텍스트 크기|가능|

현재 미디어의 자막 텍스트 크기를 나타내는 속성입니다.

## textTracks

```swift
var textTracks: [TextTrack] { get }
```

|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|\[[TextTrack](../text-track/home.md)\]|자막 리스트|불가능|[]|

자막 리스트를 반환하는 속성입니다.

<div align="right">
참고: <a href="../text-track/home.md">TextTrack</a>
</div>

## videoPan

```swift
var videoPan: CGPoint { get }
```

|타입|설명|설정|
|:--:|--|:--:|
|[CGPoint](https://developer.apple.com/documentation/corefoundation/cgpoint)|미디어 화면의 이동 정도|불가능|

현재 미디어 화면이 이동된 정도를 나타내는 속성입니다.

## videoSize

```swift
var videoSize: CGSize { get }
```

|타입|설명|설정|
|:--:|--|:--:|
|[CGSize](https://developer.apple.com/documentation/corefoundation/cgsize)|width와 height를 속성으로 가지는 구조체|불가능|

현재 재생 중인 미디어의 원래 크기를 반환하는 속성입니다. 

<div align="right">
참고: <a href="https://developer.apple.com/documentation/corefoundation/cgsize">CGSize</a>
</div>

## videoTracks

```swift
var videoTracks: [VideoTrack] { get }
```

|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|\[[VideoTrack](../video-track/home.md)\]|비디오 트랙 리스트|불가능|[]|

비디오 트랙 리스트를 반환하는 속성입니다.

<div align="right">
참고: <a href="../video-track/home.md">VideoTrack</a>
</div>

## videoZoom

```swift
var videoZoom: Double { get }
```

|타입|설명|설정|
|:--:|--|:--:|
|Double|비디오 확대/축소 비율|불가능|

현재 비디오의 확대/축소 비율을 나타내는 속성입니다.

## view

```swift
var view: UIView { get }
```

|타입|설명|설정|
|:--:|--|:--:|
|[UIView](https://developer.apple.com/documentation/uikit/uiview)|[미디어 플레이어 화면](../../medi-player-view/home.md) 참고|불가능|

미디어 플레이어 뷰를 반환하는 속성입니다.

## volume

```swift
var volume: Float { get set }
```

|타입|설명|범위|설정|
|:--:|--|:--:|:--:|
|Float|현재 미디어의 음량|0.0~1.0|가능|

미디어 플레이어의 음량을 나타내는 속성입니다.

<br>

# 메서드

## addEventHandler(_)

```swift
func addEventHandler(_ handler: MediaPlayer.EventHandler) -> MediaPlayer.EventTarget
```

|파라미터|타입|반환 타입|설명|
|:--:|:--:|:--:|--|
|handler|[MediaPlayer.EventHandler](../../enum/event-handlers/home.md)|[MediaPlayer.EventTarget](../../class/event-target/home.md)|[이벤트 핸들러](../../enum/event-handlers/home.md), [이벤트 타겟](../../class/event-target/home.md) 참고|

[이벤트 핸들러](../../enum/event-handlers/home.md)를 추가하기 위한 메서드입니다.
반환된 [이벤트 타겟](../../class/event-target/home.md)은 이벤트 핸들러를 제거할 목적으로 [removeEventHandler(_)](#removeeventhandler_)에서 사용할 수 있습니다. 이벤트 핸들러를 추가한 후, 해당 이벤트 핸들러가 더 이상 필요 없을 때는 반드시 [removeEventHandler(_)](#removeeventhandler_) 메서드를 사용해서 제거하세요.

## addEventListener(_)

```swift
func addEventListener(_ listener: MediaPlayer.EventListener)
```

|파라미터|타입|설명|
|:--:|:--:|--|
|listener|[MediaPlayer.EventListener](../../protocol/event-listeners/home.md)|[이벤트 리스너](../../protocol/event-listeners/home.md) 참고|

[이벤트 리스너](../../protocol/event-listeners/home.md)를 추가하기 위한 메서드입니다. 이밴트 리스너를 추가한 후, 해당 이벤트 리스너가 더 이상 필요 없을 때는 반드시 [removeEventListener(_)](#removeeventlistener_) 메서드를 사용해서 제거하세요.<br>

## containsPointInSubtitleTextBounds(_) 

```swift
func containsPointInSubtitleTextBounds(_ point: CGPoint) -> Bool
```

|파라미터|타입|설명|
|:--:|:--:|--|
|point|[CGPoint](https://developer.apple.com/documentation/corefoundation/cgpoint)|미디어 화면 내 확인할 위치|

현재 미디어 화면에서 지정된 위치가 자막 영역에 포함되는지 여부를 반환하는 메서드입니다. 

## fastSeekTo(position:)

```swift
func fastSeekTo(position: Duration)
```

|파라미터|타입|설명|
|:--:|:--:|--|
|position|[Duration](../../struct/duration/home.md)|재생하고자 하는 위치 값|

입력된 시간으로 빠르게 이동하기 위한 메서드입니다. 언제나 딱 정확한 위치로 가지는 않습니다.
<div align="right">
비교: <a href="#seektoposition">seekTo(position:)</a>
</div>

## flipHorizontal()

```swift
func flipHorizontal()
```

현재 미디어 화면을 좌우 반전시키는 메서드입니다.
<div align="right">
참고: <a href="#isflippedhorizontally">isFlippedHorizontally</a>
</div>

## flipVertical()

```swift
func flipVertical()
```

현재 미디어 화면을 상하 반전시키는 메서드입니다.
<div align="right">
참고: <a href="#isflippedverticaly">isFlippedVerticaly</a>
</div>

## hasNextMediaItem()

```swift
func hasNextMediaItem() -> Bool
```
다음에 재생할 미디어가 있는지를 반환하는 메서드입니다. 목록의 마지막이 아니거나, 전체 반복 모드일 경우 true를 반환합니다.


## hasPreviousMediaItem()

```swift
func hasNextMediaItem() -> Bool
```

바로 앞에 재생할 미디어가 있는지를 반환하는 메서드입니다. 목록의 처음이 아니거나, 전체 반복 모드일 경우 true를 반환합니다.

## load(mediaItem:)

```swift
func load(mediaItem: MediaItem)
```

|파라미터|타입|설명|
|:--:|:--:|--|
|mediaItem|[MediaItem](../../struct/media-item/home.md)|로드하려는 [미디어 아이템](../../struct/media-item/home.md)|

하나의 미디어를 로드하기 위한 메서드입니다.

<div align="right">
참고: <a href="../../struct/media-item/home.md">MediaItem</a>
</div>

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

## load(src:)

```swift
func load(src: URL)
```

|파라미터|타입|설명|
|:--:|:--:|--|
|src|[URL](https://developer.apple.com/documentation/foundation/url)|로드하려는 미디어의 주소|

URL을 사용하여 미디어를 로드하기 위한 메서드입니다.

## pause()

```swift
func pause()
```

미디어를 일시 정지하기 위한 메서드입니다.

## play()

```swift
func play()
```

미디어를 재생하기 위한 메서드입니다.

## prepare()

```swift
func prepare()
```

미디어 관련 기본 설정을 하기 위한 메서드입니다. 이 메서드를 실행하면, [autoplay](#autoplay), [defaultPlaybackRate](#defaultplaybackrate), [defaultMuted](#defaultmuted) 설정을 미디어 플레이어에 적용하고, 미디어를 로딩하는 과정까지 진행합니다.

## removeEventHandler(_)

```swift
func removeEventHandler(target: MediaPlayer.EventTarget)
```

|파라미터|타입|설명|
|:--:|:--:|--|
|target|[MediaPlayer.EventTarget](../../class/event-target/home.md)|[이벤트 핸들러](../../enum/event-handlers/home.md), [이벤트 타겟](../../class/event-target/home.md) 참고|

[addEventHandler(_)](#addeventhandler_)로 추가된 [이벤트 핸들러](../../enum/event-handlers/home.md)를 제거하기 위한 메서드입니다.

## removeEventListener(_)

```swift
func removeEventListener(_ listener: MediaPlayer.EventListener)
```

|파라미터|타입|설명|
|:--:|:--:|--|
|listener|[MediaPlayer.EventListener](../../protocol/event-listeners/home.md)|[이벤트 리스너](../../protocol/event-listeners/home.md) 참고|

[addEventListener(_)](#addeventlistener_)로 추가된 [이벤트 리스너](../../protocol/event-listeners/home.md)를 제거하기 위한 메서드입니다.

## seekBack()

```swift
func seekBack()
```

현재 위치에서 속성 [seekBackIncrement](#seekbackincrement) 만큼 전으로 이동하기 위한 메서드입니다.

## seekBack(increment:)

```swift
func seekBack(increment: Duration)
```

|파라미터|타입|설명|
|:--:|:--:|--|
|increment|[Duration](../../struct/duration/home.md)|새로운 위치는 현재 위치에서 입력된 파라미터를 뺀 결과입니다.<br>즉, 음수 입력 시, 입력된 파라미터의 절대값만큼 후로 이동합니다.|

현재 위치에서 입력된 시간 전으로 이동하기 위한 메서드입니다.

## seekForward()

```swift
func seekForward()
```
현재 위치에서 속성 [seekForwardIncrement](#seekforwardincrement) 만큼 후로 이동하기 위한 메서드입니다.

## seekForward(increment:)

```swift
func seekForward(increment: Duration)
```

|파라미터|타입|설명|
|:--:|:--:|--|
|increment|[Duration](../../struct/duration/home.md)|새로운 위치는 현재 위치에서 입력된 파라미터를 더한 결과입니다.<br>즉, 음수 입력 시, 입력된 파라미터의 절대값만큼 되돌아갑니다.|

현재 위치에서 입력된 시간 후로 이동하기 위한 메서드입니다.

## seekTo(position:)

```swift
func seekTo(position: Duration)
```

|파라미터|타입|설명|
|:--:|:--:|--|
|position|[Duration](../../struct/duration/home.md)|입력된 값으로 재생 위치를 이동합니다.|

입력된 시간 위치로 정확하게 이동하기 위한 메서드입니다.

<div align="right">
비교: <a href="#fastseektoposition">fastSeekTo(position:)</a>
</div>

## seekTo(mediaItemIndex:position:)

```swift
func seekTo(mediaItemIndex: Int, position: Duration = .indefinite)
```

|파라미터|타입|설명|필수|
|:--:|:--:|--|:--:|
|mediaItemIndex|Int|재생 목록에서 미디어 아이템의 index|O|
|position|[Duration](../../struct/duration/home.md)|해당 미디어에서 재생하고하 하는 위치<br>입력하지 않으면, 마지막에 재생했던 위치에서 시작합니다.|X|

현재 재생 중인 미디어를 정지하고 다른 미디어를 재생하기 위한 메서드입니다. 재생 목록의 index만 파라미터로 넘겨줄 경우에는, 해당 미디어의 마지막에 재생했던 위치에서 시작합니다.

## seekToNext()

```swift
func seekToNext()
```
[seekToNexMediaItemt()](#seektonextmediaitem)와 동일합니다.

## seekToNextMediaItem()

```swift
func seekToNextMediaItem()
```

다음으로 재생할 미디어가 있을 경우 현재 재생중인 미디어를 정지하고 다음 미디어로 이동하는 메서드입니다. 목록의 맨 뒤에 위치한 미디어이지만 전체 반복 모드일 경우, 목록의 맨 앞으로 이동합니다.

## seekToPrevious()

```swift
func seekToPrevious()
```

현재 재생 위치가 속성 maxSeekToPreviousPosition보다 앞이면 이전 미디어로 이동합니다.(참고: [seekToPreviousMediaItem()](#seektopreviousmediaitem)) 
그렇지 않으면 현재 미디어의 맨 앞으로 이동합니다.

<div align="right">
참고: <a href="#maxseektopreviousposition">maxSeekToPreviousPosition</a>
</div>

## seekToPreviousMediaItem()

```swift
func seekToPreviousMediaItem()
```

앞에 재생할 미디어가 있을 경우 현재 재생중인 미디어를 정지하고 이전 미디어로 이동하는 메서드입니다. 목록의 맨 앞에 위치한 미디어일 경우, 목록의 마지막 미디어로 이동합니다.

## startPictureInPicture()

```swift
func startPictureInPicture()
```

화면 속 화면 모드를 시작하는 메서드입니다.

## stop()

```swift
func stop()
```

미디어를 완전 종료할 때 부르는 메서드입니다. MediaPlayer가 종료되면 자동으로 호출됩니다.

## stopPictureInPicture()

```swift
func stopPictureInPicture()
```

화면 속 화면 모드를 종료하는 메서드입니다.

## zoomVideo(_)

```swift
func zoomVideo(_ zoom: Double)
```

|파라미터|타입|설명|
|:--:|:--:|--|
|zoom|Double|비디오 확대/축소 비율|

비디오 확대/축소할 때 사용하는 메서드입니다.

<div align="right">
참고: <a href="#zoomvideo_pivot">zoomVideo(_:pivot:)</a>
</div>

## zoomVideo(_:pivot:)

```swift
func zoomVideo(_ zoom: Double, pivot: CGPoint)
```

|파라미터|타입|설명|필수|
|:--:|:--:|--|:--:|
|zoom|Double|비디오 확대/축소 비율|O|
|pivot|[CGPoint](https://developer.apple.com/documentation/corefoundation/cgpoint)|중심 좌표|O|

비디오 확대/축소가 적용될 중심이 되는 좌표를 지정하여 확대/축소할 때 사용하는 메서드입니다. 

<div align="right">
참고: <a href="#zoomvideo_">zoomVideo(_)</a>
</div>

<br>

# 열거형

## PlaybackState
```swift
enum PlaybackState
```

현재 미디어 상태를 나타내는 열거형입니다.

<div align="right">
참고: <a href="../../enum/media-player-playback-state/home.md">MediaPlayer.PlaybackState</a>
</div>

## RepeatMode
```swift
enum RepeatMode
```

현재 미디어의 반복 모드 상태를 나타내는 열거형입니다.

<div align="right">
참고: <a href="../../enum/media-player-repeat-mode/home.md">MediaPlayer.RepeatMode</a>
</div>

## ScalingMode
```swift
enum ScalingMode
```

현재 미디어 화면의 스케일링 상태를 나타냅니다.

<div align="right">
참고: <a href="../../enum/media-player-scaling-mode/home.md">MediaPlayer.ScalingMode</a>
</div>

## SubtitleDisplayPosition
```swift
enum SubtitleDisplayPosition
```

현재 미디어의 자막 출력 위치를 나타냅니다.

<div align="right">
참고: <a href="../../enum/media-player-subtitle-display-position/home.md">MediaPlayer.SubtitleDisplayPosition</a>
</div>

<br>

# 구조체

## RepeatRange
```swift
struct RepeatRange: Equatable
```

반복 모드에서 사용되는 구조체입니다.

<div align="right">
참고: <a href="../../struct/media-player-repeat-range/home.md">MediaPlayer.RepeatRange</a>
</div>
