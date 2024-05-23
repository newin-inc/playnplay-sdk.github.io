# MediaPlayer.EventListener (MediaPlayerListener)

```swift
extension MediaPlayer {
    public typealias Listener = MediaPlayerListener
}
```
```swift
protocol MediaPlayerListener : AnyObject
```

EventListener는 이벤트 처리를 위한 프로토콜로, 위와 같은 메서드를 제공합니다. 각각 메서드에 대한 설명은 [메서드](#메서드)를, 사용 방법은 [addEventListener(_)](../../class/media-player/home.md#addeventlistener_)를 참고하시면 됩니다. 이밴트 리스너를 추가한 후, 해당 이벤트 리스너가 더 이상 필요 없을 때는 반드시 [removeEventListener(_)](../../class/media-player/home.md#removeeventlistener_) 메서드를 사용해서 제거하세요.<br>
이벤트 리스너를 대신하여 사용 방법에 따라서 [이벤트 핸들러](../../enum/event-handlers/home.md)를 사용하여 이벤트 처리를 할 수 있습니다. 이벤트 핸들러에서 사용되는 파라미터는 이벤트 리스너의 파라미터와 동일합니다. 이벤트 핸들러의 사용 방법은 [addEventHandler(_)](../../class/media-player/home.md#addeventhandler_)와 [케이스](../../enum/event-handlers/home.md#케이스)를 참고하시면 됩니다.

<br><br>
# 메서드

## onCueChange(textCues:)
```swift
func onCueChange(textCues: [TextTrack.Cue])
```
| 파라미터 이름 | 타입 | 설명 |
|:--:|:--:|:--:|
|textCues|\[[TextTrack.Cue](../../class/text-track/home.md#cue)\]|자막 큐들|

자막 큐가 변경되는 시점에 실행합니다.
<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/home.md#textcuechange">MediaPlayer.EventHandler.textCueChange</a><br>
참고: <a href="../../class/text-track/home.md#texttrackcue">TextTrack.Cue</a>
</div>

<br><br>
## onDurationChange(duration:)
```swift
func onDurationChange(duration: Duration)
```
| 파라미터 이름 | 타입 | 설명 |
|:--:|:--:|:--:|
|duration|[Duration](../../struct/duration/home.md)|미디어 길이|

미디어의 길이(duration)가 변경되는 시점에 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/home.md#durationchange">MediaPlayer.EventHandler.durationChange</a><br>
참고: <a href="../../struct/duration/home.md">Duration</a>
</div>

<br><br>
## onEnded()
```swift
func onEnded()
```
재생 목록의 마지막 미디어의 재생이 완료된 시점에 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/home.md#ended">MediaPlayer.EventHandler.ended</a>
</div>

<br><br>
## onError(error:)
```swift
func onError(error: Error)
```
| 파라미터 이름 | 타입 | 설명 |
|:--:|:--:|:--:|
|error|[Error](https://developer.apple.com/documentation/swift/error)|에러|

에러가 발생할 때 실행합니다.
<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/home.md#error">MediaPlayer.EventHandler.error</a><br>
참고: <a href="https://developer.apple.com/documentation/swift/error">Error</a>, 
<a href="../../enum/media-player-error/home.md">MediaPlayerError</a>
</div>

<br><br>
## onLoadedData()
```swift
func onLoadedData()
```
미디어 아이템이 로드되었을 때 실행합니다.
<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/home.md#loadeddata">MediaPlayer.EventHandler.loadedData</a>
</div>

<br><br>
## onLoadStart()
```swift
func onLoadStart()
```
미디어 리소스를 로딩하기 시작할 때 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/home.md#loadstart">MediaPlayer.EventHandler.loadStart</a>
</div>

<br><br>
## onMediaItemTransition(item:)
```swift
func onMediaItemTransition(item: MediaItem?)
```
| 파라미터 이름 | 타입 | 설명 |
|:--:|:--:|:--:|
|item|[MediaItem](../../struct/media-item/home.md)|교체된 미디어 아이템|

미디어 아이템이 교체 되는 시점에 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/home.md#mediaitemtransition">MediaPlayer.EventHandler.mediaItemTransition</a><br>
참고: <a href="../../struct/media-item/home.md">MediaItem</a>
</div>

<br><br>
## onPause()
```swift
func onPause()
```
미디어가 일시 정지 상태로 진입하는 시점에 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/home.md#pause">MediaPlayer.EventHandler.pause</a><br>
비교: <a href="#onplay">onPlay</a>
</div>

<br><br>
## onPictureInPictureActiveChange(active:)
```swift
func onPictureInPictureActiveChange(active: Bool)
```

| 파라미터 이름 | 타입 | 설명 |
|:--:|:--:|:--:|
|active|Bool|현재 화면 속 화면 모드인 지 여부|

화면 속 화면 모드가 켜지거나 꺼지는 시점에 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/home.md#pictureinpictureactivechange">MediaPlayer.EventHandler.pictureInPictureActiveChange</a><br>
참고: <a href="#onpictureinpicturedidstart">onPictureInPictureDidStart</a>,
<a href="#onpictureinpicturedidstop">onPictureInPictureDidStop</a>,
<a href="#onpictureinpicturewillstart">onPictureInPictureWillStart</a>,   
<a href="#onpictureinpicturewillstop">onPictureInPictureWillStop</a><br>
</div>

## onPictureInPicturePossibleChange(possible:)
```swift
func onPictureInPicturePossibleChange(possible: Bool)
```

| 파라미터 이름 | 타입 | 설명 |
|:--:|:--:|:--:|
|possible|Bool|화면 속 화면 모드 사용 가능 여부|

화면 속 화면 모드를 사용할 수 있을 때, (혹은 반대의 경우에) 실행합니다. 예를 들면, 화면 속 화면 모드 버튼을 활성화 및 비활성화 하기 위해서 필요합니다.

<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/home.md#pictureinpicturepossiblechange">MediaPlayer.EventHandler.pictureInPicturePossibleChange</a>
</div>

<br><br>
## onPictureInPictureDidStart()
```swift
func onPictureInPictureDidStart()
```
화면 속 화면 모드가 시작한 후 실행합니다.<br>
화면 속 화면 모드로 들어가면, [onPictureInPictureWillStart()](#onpictureinpicturewillstart) → [onPictureInPictureActiveChange](#onpictureinpictureactivechangeactive)(true) → [onPictureInPictureDidStart()](#onpictureinpicturedidstart)의 순서대로 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/home.md#pictureinpicturedidstart">MediaPlayer.EventHandler.pictureInPictureDidStart</a>
</div>

<br><br>
## onPictureInPictureDidStop()
```swift
func onPictureInPictureDidStart()
```
화면 속 화면 모드가 끝나면 실행합니다.<br>
화면 속 화면 모드가 종료되면, [onPictureInPictureWillStop()](#onpictureinpicturewillstop) → [onPictureInPictureActiveChange](#onpictureinpictureactivechangeactive)(false) → [onPictureInPictureDidStop()](#onpictureinpicturedidstop)의 순서대로 호출됩니다.

<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/home.md#pictureinpicturedidstop">MediaPlayer.EventHandler.pictureInPictureDidStop</a>
</div>

<br><br>
## onPictureInPictureWillStart()
```swift
func onPictureInPictureWillStart()
```
화면 속 화면 모드가 시작하기 직전에 실행합니다.<br>
화면 속 화면 모드로 들어가면, [onPictureInPictureWillStart()](#onpictureinpicturewillstart) → [onPictureInPictureActiveChange](#onpictureinpictureactivechangeactive)(true) → [onPictureInPictureDidStart()](#onpictureinpicturedidstart)의 순서대로 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/home.md#pictureinpicturewillstart">MediaPlayer.EventHandler.pictureInPictureWillStart</a>
</div>

<br><br>
## onPictureInPictureWillStop()
```swift
func onPictureInPictureWillStop()
```
화면 속 화면 모드가 끝나기 직전애 실행합니다.<br>
화면 속 화면 모드가 종료되면, [onPictureInPictureWillStop()](#onpictureinpicturewillstop) → [onPictureInPictureActiveChange](#onpictureinpictureactivechangeactive)(false) → [onPictureInPictureDidStop()](#onpictureinpicturedidstop)의 순서대로 호출됩니다.

<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/home.md#pictureinpicturewillstop">MediaPlayer.EventHandler.pictureInPictureWillStop</a>
</div>

<br><br>
## onPlay()
```swift
func onPlay()
```
미디어가 일시 정지 상태에서 재생 상태로 변경되는 시점에 실행합니다.
사용자가 재생 버튼을 클릭하거나 mediaPlayer.[play()](../../class/media-player/home.md#play)를 호출하는 등 플레이어에 재생 명령을 내렸을 때 등과 같이 명령을 했을 때 상황에서 이벤트 처리를 여기서 할 수 있습니다.
[onPlay](#onplay)가 실행된 이후에 [onPlaying](#onplaying)는 언제나 호출됩니다.
재생 중에 미디어를 이동하든지 재생 위치를 이동하면, 언제나 [onPause](#onpause) -> [onPlay](#onplay) -> [onPlaying](#onplaying) 순서로 호출됩니다.

<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/home.md#play">MediaPlayer.EventHandler.play</a><br>
비교: <a href="#onpause">onPause</a><br>
참고: <a href="#onplaying">onPlaying</a>
</div>

<br><br>
## onPlaybackFinish(mediaItem:position:duration:reason:)
```swift
public func onPlaybackFinish(
    mediaItem: MediaItem,
    position: Duration,
    duration: Duration?,
    reason: PlaybackFinishReason
)
```

| 파라미터 이름 | 타입 | 설명 |
|:--:|:--:|:--:|
|mediaItem|[MediaItem](../../struct/media-item/home.md)|종료된 미디어 아이템|
|position|[Duration](../../struct/duration/home.md)|마지막 재생 위치|
|duration|[Duration](../../struct/duration/home.md)|미디어 길이|
|reason|[PlaybackFinishReason](../../enum/playback-finish-reason/home.md)|미디어 종료 원인|

미디어가 종료될 때 실행합니다. 이 때 마지막 재생 위치(position)와 미디어의 길이(duration) 값을 사용할 수 있습니다. 주의할 점은, 미디어가 로드된 후에 종료할 때만 실행된다는 것입니다. 만약 미디어가 로드되기 전에 종료되는 상황에도 사용하려면, [onUnload(mediaItem:)](#onunloadmediaitem)를 참고하세요.

<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/home.md#playbackfinish">MediaPlayer.EventHandler.PlaybackFinish</a><br>
참고: <a href="#onunloadmediaitem">onUnload(mediaItem:)</a>, 
<a href="../../struct/media-item/home.md">MediaItem</a>, 
<a href="../../struct/duration/home.md">Duration</a>
</div>

<br><br>
## onPlaybackStateChange(state:)
```swift
func onPlaybackStateChange(state: MediaPlayer.PlaybackState)
```
| 파라미터 이름 | 타입 | 설명 |
|:--:|:--:|:--:|
|state|[MediaPlayer.PlaybackState](../../enum/media-player-playback-state/home.md)|재생 상태|

미디어 로딩 상태에 따라서, 즉, 버퍼링인지 준비가 된 상태인지, 끝이 났는지, 플레이어를 종료하였는지 등의 상황이 발생하면 실행합니다. 상황에 따른 설명은 [playbackState](../../enum/media-player-playback-state/home.md)를 참고하세요.

<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/home.md#playbackstatechange">MediaPlayer.EventHandler.playbackStateChange</a><br>
참고: <a href="../../enum/media-player-playback-state/home.md">MediaPlayer.PlaybackState</a>
</div>

<br><br>
## onPlaying()
```swift
func onPlaying()
```
미디어가 재생 상태로 변한 직후에 실행합니다.
playing과 관련된 이벤트 핸들러는 play 이벤트 이후에 항상 호출됩니다.

<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/home.md#playing">MediaPlayer.EventHandler.playing</a><br>
참고: <a href="#onplay">onPlay</a>
</div>

<br><br>
## onPositionDiscontinuity(oldPosition:newPosition:)
```swift
func onPositionDiscontinuity(oldPosition: Duration, newPosition: Duration)
```
| 파라미터 이름 | 타입 | 설명 |
|:--:|:--:|:--:|
|oldPosition|[Duration](../../struct/duration/home.md)|이전 재생 위치|
|newPosition|[Duration](../../struct/duration/home.md)|바뀐 재생 위치|

재생 위치가 변경되는 시점에 실행합니다. 이전 위치와 이동한 위치 모두 접근이 가능합니다.

<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/home.md#positiondiscontinuity">MediaPlayer.EventHandler.positionDiscontinuity</a><br>
참고: <a href="../../struct/duration/home.md">Duration</a>
</div>

<br><br>
## onProgress()
```swift
func onProgress()
```
플레이어가 리소스를 읽을 때 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/home.md#progress">MediaPlayer.EventHandler.progress</a>
</div>

<br><br>
## onRateChange(rate:)
```swift
func onRateChange(rate: Float)
```
| 파라미터 이름 | 타입 | 설명 |
|:--:|:--:|:--:|
|rate|Float|재생 속도|

재생 속도가 변경되는 시점에 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/home.md#ratechange">MediaPlayer.EventHandler.rateChange</a>
</div>

<br><br>
## onRepeatModeChange(mode:)
```swift
func onRepeatModeChange(mode: MediaPlayer.RepeatMode)
```
| 파라미터 이름 | 타입 | 설명 |
|:--:|:--:|:--:|
|mode|[MediaPlayer.RepeatMode](../../enum/media-player-repeat-mode/home.md)|반복 모드 종류|

반복 모드가 설정되었을 때 실행합니다.
<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/home.md#repeatmodechange">MediaPlayer.EventHandler.repeatModeChange</a><br>
참고: <a href="../../enum/media-player-repeat-mode/home.md">MediaPlayer.RepeatMode</a>
</div>

<br><br>
## onRepeatRangeChange(range:)
```swift
func onRepeatRangeChange(range: MediaPlayer.RepeatRange?)
```
| 파라미터 이름 | 타입 | 설명 |
|:--:|:--:|:--:|
|range|[MediaPlayer.RepeatRange](../../struct/media-player-repeat-range/home.md)?|구간 반복에서의 구간|

구간 반복 모드가 시작되거나 종료되었을 때, 그리고 구간 반복의 시작 위치 또는 종료 위치가 바뀌었을 때 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/home.md#repeatrangechange">MediaPlayer.EventHandler.repeatRangeChange</a><br>
참고: <a href="../../struct/media-player-repeat-range/home.md">MediaPlayer.RepeatRange</a>
</div>

<br><br>
## onScalingModeChange(mode:)
```swift
func onScalingModeChange(mode: MediaPlayer.ScalingMode)
```

| 파라미터 이름 | 타입 | 설명 |
|:--:|:--:|:--:|
|mode|[MediaPlayer.ScalingMode](../../enum/media-player-scaling-mode/home.md)|화면 스케일링 상태|

미디어 화면의 스케일링 상태가 변하는 시점에 실행합니다.
<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/home.md#scalingmodechange">MediaPlayer.EventHandler.scalingModeChange</a><br>
참고: <a href="../../enum/media-player-scaling-mode/home.md">MediaPlayer.ScalingMode</a>
</div>

<br><br>
## onSeeked()
```swift
func onSeeked()
```
seek 작업이 완료된 시점, 또는 재생 위치가 변경되는 시점, 또는 seeking 값이 false로 변경되는 시점에 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/home.md#seeked">MediaPlayer.EventHandler.seeked</a>
</div>

<br><br>
## onSeeking()
```swift
func onSeeking()
```
seek 작업이 시작되는 시점, 또는 seeking 값이 false에서 true로 변경되는 시점에 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/home.md#seeking">MediaPlayer.EventHandler.seeking</a>
</div>

<br><br>
## onTimeUpdate(position:)
```swift
func onTimeUpdate(position: Duration)
```
| 파라미터 이름 | 타입 | 설명 |
|:--:|:--:|:--:|
|position|[Duration](../../struct/duration/home.md)|현재 재생 위치|

[currentTime](../../class/media-player/home.md#currenttime)이 변경되는 시점에 실행합니다. 즉, 미디어가 재생이 되는 동안 수행하려는 작업을 이곳에 구현하시면 됩니다.

<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/home.md#timeupdate">MediaPlayer.EventHandler.timeUpdate</a><br>
참고: <a href="../../struct/duration/home.md">Duration</a>
</div>

<br><br>
## onUnload(mediaItem:)
```swift
func onUnload(mediaItem: MediaItem)
```

| 파라미터 이름 | 타입 | 설명 |
|:--:|:--:|:--:|
|mediaItem|[MediaItem](../../struct/media-item/home.md)|종료된 미디어 아이템|

미디어가 제거된 시점, 즉, 미디어 주소가 변경되기 직전, 기존에 존재하던 미디어를 비울 때를 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/home.md#unload">EventHandler.unload</a><br>
참고: <a href="../../struct/media-item/home.md">MediaItem</a>
</div>

<br><br>
## onVideoSizeChange(size:)
```swift
func onVideoSizeChange(size: CGSize)
```
| 파라미터 이름 | 타입 | 설명 |
|:--:|:--:|:--:|
|size|[CGSize](https://developer.apple.com/documentation/corefoundation/cgsize)|영상 사이즈|

미디어 아이템의 비디오 크기가 달라지는 시점에 실행합니다. 아이템을 교체하는 순간에는 (0.0, 0.0)의 값으로 바뀌는 것도 체크를 하니 참고하시기 바랍니다.

<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/home.md#videosizechange">MediaPlayer.EventHandler.videoSizeChange</a><br>
참고: <a href="https://developer.apple.com/documentation/corefoundation/cgsize">CGSize</a>
</div>

<br><br>
## onVolumeChange(volume:muted:)
```swift
func onVolumeChange(volume: Float, muted: Bool)
```
| 파라미터 이름 | 타입 | 설명 |
|:--:|:--:|:--:|
|volume|Float|디바이스 음량|
|muted|Bool|음소거 여부|

볼륨이 변경되는 시점에 실행합니다. 무음([muted](../../class/media-player/home.md#muted)) 상태가 변경될 때도 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/home.md#volumechange">MediaPlayer.EventHandler.volumeChange</a>
</div>

<br><br>
## onWaiting()
```swift
func onWaiting()
```
일시적인 버퍼 부족, 즉 데이터가 충분히 로딩되지 못하거나 데이터가 없어서 재생이 정지된 시점에 실행됩니다. [playbackState](../../enum/media-player-playback-state/home.md)가 .buffering이 될 때 호출됩니다.

<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/home.md#waiting">MediaPlayer.EventHandler.waiting</a>
</div>
