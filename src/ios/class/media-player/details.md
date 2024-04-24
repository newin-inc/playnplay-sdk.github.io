# 속성

## allowsBackgroundPlayback
```swift
var allowsBackgroundPlayback: Bool { get set }
```
|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|Bool|백그라운드 재생을 허용할 지 여부|가능|false|

백그라운드 재생을 허용할 지 여부를 나타내는 속성입니다.

<br><br>
## allowsCellularAccess
```swift
var allowsCellularAccess: Bool { get set }
```
|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|Bool|동영상 재생 시, 셀룰러 데이터 사용 여부|가능|true|

동영상을 재생(스트리밍)할 때, 셀룰러 데이터를 사용할 지 여부를 나타내는 속성입니다.

<br><br>
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

사용 예제
```swift
if !mediaPlayer.audioTracks.isEmpty,
    let sampleRate = mediaPlayer.audioTracks[index].sampleRate {
        displaySampleRate(sampleRate) // 44100.0
} 
```

<br><br>
## autoplay

```swift
var autoplay: Bool { get set }
```
|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|Bool|미디어가 로딩되었을 때, 즉 미디어가 준비가 된 즉시 재생할 것인지 결정하는 값|가능|true|

미디어가 로딩되었을 때, 즉시 재생이 시작되어야 하는지를 나타내는 속성입니다. true면 자동 재생합니다.

사용 예제
```swift
mediaPlayer.autoplay = false    // 다음 미디어로 이동 시, 자동 재생 하지 않습니다.
```

<br><br>
## buffered

```swift
var buffered: [TimeRange] { get }
```
|타입|설명|설정|
|:--:|--|:--:|
|\[[TimeRange](../../struct/time-range/home.md)\]|현재 버퍼에 담고 있는 미디어 리소스의 범위 데이터|불가능|

버퍼에 있는 미디어 리소스의 범위를 반환합니다.

사용 예제
```swift
let buffered = mediaPlayer.buffered
    // [__C.CMTimeRange(start: __C.CMTime(value: 218625, timescale: 600, flags: __C.CMTimeFlags(rawValue: 1), epoch: 0), duration: __C.CMTime(value: 2034, timescale: 600, flags: __C.CMTimeFlags(rawValue: 1), epoch: 0))]
let start = buffered[0].start	// 첫 번째 버퍼의 시작 위치
let end = buffered[0].end		// 첫 번째 버퍼의 종료 위치
```

<br><br>
## canStartPictureInPictureAutomatically

```swift
var canStartPictureInPictureAutomatically: Bool { get set }
```
|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|Bool|백그라운드에서 화면 속 화면 모드를 자동으로 시작할 지 여부|가능|true|

앱이 백그라운드에 있을 때, 화면 속 화면 모드를 자동으로 시작할 수 있는지 여부를 의미하는 속성입니다.

<br><br>
## currentMediaItem

```swift
var currentMediaItem: MediaItem? { get }
```
|타입|설명|설정|
|:--:|--|:--:|
|[MediaItem](../../struct/media-item/home.md)?|현재 재생 중인 미디어 아이템|불가능|

현재 재생 중인 미디어 아이템을 반환하는 속성입니다.

<br><br>
## currentMediaItemIndex

```swift
var currentMediaItemIndex: Int { get }
```
|타입|설명|설정|
|:--:|--|:--:|
|Int|현재 재생 중인 미디어 아이템의 index|불가능|

현재 재생 중인 미디어 아이템의 index를 반환하는 속성입니다.

<br><br>
## currentSrc

```swift
var currentSrc: URL? { get }
```
|타입|설명|설정|
|:--:|--|:--:|
|[URL](https://developer.apple.com/documentation/foundation/url)?|현재 선택된 미디어 아이템의 [URL](https://developer.apple.com/documentation/foundation/url)|불가능|

미디어 리소스의 uri를 반환하는 속성입니다.

<br><br>
## currentTime

```swift
var currentTime: Duration { get set }
```
|타입|설명|설정|
|:--:|--|:--:|
|[Duration](../../struct/duration/home.md)|설정 시, 재생하고 싶은 특정 위치 ([seekTo](#seektoposition)와 같은 동작)<br>반환 시, 현재 재생 시점|가능|

현재 재생 위치를 [Duration](../../struct/duration/home.md) 단위로 나타내는 속성입니다.

사용 예제
```swift
let duration: Duration = .seconds(60)

mediaPlayer.currentTime = duration  // 60초로 가기

let currentTime = mediaPlayer.currentTime   // 60초
```

<br><br>
## defaultMuted

```swift
var defaultMuted: Bool { get set }
```
|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|Bool|음소거 기본 설정 상태|가능|false|

오디오의 음소거 기본 설정을 나타내는 속성입니다.

<br><br>
## defaultPlaybackRate

```swift
var defaultPlaybackRate: Float { get set }
```
|타입|설명|설정|범위|기본값|
|:--:|--|:--:|:--:|:--:|
|Float|미디어의 기본 재생 속도|가능|0.1~4.0|1.0|

미디어의 기본 재생 속도를 나타내는 속성입니다.

사용 예제
```swift
mediaPlayer.defaultPlaybackRate = 2
```

<br><br>
## duration

```swift
var duration: Duration { get }
```
|타입|설명|설정|
|:--:|--|:--:|
|[Duration](../../struct/duration/home.md)|현재 미디어의 전체 길이|불가능|

현재 미디어 길이를 반환하는 속성입니다. 재생 가능한 미디어가 없을 경우 0에 해당하는 [Duration](../../struct/duration/home.md)을 반환합니다.

사용 예제
```swift
let duration = mediaPlayer.duration 
    // CMTime(value: 532799, timescale: 600, flags: __C.CMTimeFlags(rawValue: 1), epoch: 0)
```

<br><br>
## ended

```swift
var ended: Bool { get }
```
|타입|설명|설정|
|:--:|--|:--:|
|Bool|재생 목록에서 마지막 미디어의 재생 완료 여부를 반환|불가능|

미디어 재생 완료 여부를 반환하는 속성입니다.

사용 예제
```swift
if (mediaPlayer.ended) {
    dismiss()
}
```

<br><br>
## error

```swift
var error: Error? { get }
```
|타입|설명|설정|
|:--:|--|:--:|
|[Error](https://developer.apple.com/documentation/swift/error)?|에러를 반환|불가능|

최근 발생한 에러를 반환하는 속성입니다.

사용 예제
```swift
let errorString = mediaPlayer.error?.localizedDescription
```

<br><br>
## isPictureInPictureActive

```swift
var isPictureInPictureActive: Bool { get }
```
|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|Bool|화면 속 화면 모드인지 여부|불가능|false|

현재 재생되는 미디어가 화면 속 화면 모드인지를 반환하는 속성입니다.

<br><br>
## isPictureInPicturePossible

```swift
var isPictureInPicturePossible: Bool { get }
```
|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|Bool|현재 화면 속 화면 모드로 전환할 수 있는지 여부|불가능|false|

미디어가 화면 속 모드로 전환할 수 있는지 여부를 반환하는 속성입니다.
 
<br><br>
## isSeekable

```swift
var isSeekable: Bool { get }
```
|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|Bool|미디어 아이템에서 위치를 이동할 수 있는지 여부|불가능|false|

미디어에서 seek을 사용할 수 있는지 여부를 반환하는 속성입니다. 미디어의 길이가 파악이 될 경우 true를 반환합니다.

사용 예제
```swift
if (mediaPlayer.isSeekable) {
	mediaPlayer.seekTo(position: .seconds(30))
}
```

<br><br>
## isSubtitlesVisible

```swift
var isSubtitlesVisible: Bool { get set }
```

|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|Bool|화면에 자막 표시 여부|가능|true|

화면에 자막 표시 여부. true나 false값을 넣어서 자막을 켜고 끌 수 있습니다.

사용 예제
```swift
if (mediaPlayer.isSubtitlesVisible) {
    displaySubtitles()
} else {
    hideSubtitles()
}
```

<br><br>
## loop

```swift
var loop: Bool { get set }
```
|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|Bool|미디어 반복 재생 여부를 결정하는 값|가능|false|

미디어 재생이 끝났을 때 다시 처음부터 재생할 지 여부를 나타내는 속성입니다.

<br><br>
## maxSeekToPreviousPosition

```swift
var maxSeekToPreviousPosition: Duration { get set }
```
|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|[Duration](../../struct/duration/home.md)|하단 인터페이스의 이전 버튼을 클릭하였을 때, 이전 미디어로 갈 것인지 현재 미디어의 맨 앞으로 갈 것인지에 대한 기준 값. 이 값보다 작으면 이전 미디어로 이동하고, 그렇지 않으면 현재 미디어의 맨 앞으로 이동합니다.|가능|3초|

이전 버튼을 눌렀을 때, 이전 미디어로 갈 수 있는 최대 허용 위치를 나타내는 속성입니다. 메서드 [seekToPrevious()](#seektoprevious)에서 사용됩니다.

사용 예제
```swift
mediaPlayer.maxSeekToPreviousPosition = .seconds(5)
    // 이전 버튼을 클릭했을 때,
    // 현재 재생 위치가 5초 보다 작고 이전 미디어가 있으면, 이전 미디어로 이동합니다.
	// 그렇지 않으면, 현재 미디어의 맨 앞으로 이동합니다.
```

<br><br>
## mediaItems

```swift
var mediaItems: [MediaItem] { get set }
```
|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|\[[MediaItem](../../struct/media-item/home.md)\]|현재 재생 목록에 있는 미디어 아이템들|가능|[]|

미디어 아이템들의 목록을 나타내는 속성입니다.

사용 예제
```swift
let mediaItems = mediaPlayer.mediaItems // 현재 미디어 아이템들을 나타냅니다.

mediaPlayer.mediaItems = Array(mediaItems.prefix(4)) 
    // 현재 미디어 아이템 중 앞에 있는 4개의 미디어 아이템만 잘라내어서 다시 설정합니다.
```

<br><br>
## muted

```swift
var muted: Bool { get set }
```
|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|Bool|오디오 음소거 여부|가능|false|

음소거 여부를 나타내는 속성입니다. 음소거면 true, 아니면 false입니다.

사용 예제
```swift
Button {
    mediaPlayer.muted = true
} label: {
    Text("Mute")
}
```

<br><br>
## paused

```swift
var paused: Bool { get }
```
|타입|설명|설정|
|:--:|--|:--:|
|Bool|미디어 일시 정지 여부|불가능|

미디어가 일시 정지 상태인지 반환하는 속성입니다.

사용 예제
```swift
if (mediaPlayer.paused) {
	displayPlayButton()
}
```

<br><br>
## playbackRate

```swift
var playbackRate: Float { get set }
```
|타입|설명|설정|범위|기본값|
|:--:|--|:--:|:--:|:--:|
|Float|재생 속도|가능|0.1~4.0|1.0|

미디어의 재생 속도를 나타내는 속성입니다. 정상 속도는 1.0이고, 1보다 작을 때는 느리게, 1보다 클 때는 빠르게 재생합니다. 이 때, 오디오 피치 유지 여부는 MediaPlayer.preservesPitch의 값으로 제어할 수 있습니다.

사용 예제
```swift
mediaPlayer.playbackRate = 2
```

<br><br>
## playbackState
```swift
var playbackState: MediaPlayer.PlaybackState { get }
```
|타입|설명|설정|
|:--:|--|:--:|
|[MediaPlayer.PlaybackState](../../enum/media-player-playback-state/home.md)|미디어의 현재 상태를 나타냅니다.|불가능|

미디어의 현재 상태를 반환하는 속성입니다.

<div align="right">
참고: <a href="../../enum/media-player-playback-state/home.md">PlaybackState</a>
</div>

사용 예제
```swift
switch mediaPlayer.playbackState {
    case .idle: handleIdleState()
    case .ready: handleReadyState()
    case .buffering: handleBufferingState()
    case .ended: handleEndedState()
}
```

<br><br>
## preservesPitch

```swift
var preservesPitch: Bool { get set }
```
|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|Bool|오디오 피치 유지 여부|가능|true|

재생 속도에 따른 오디오 피치 유지 여부를 나타내는 속성입니다. 값이 true면 재생 속도가 변해도 오디오 피치는 변함 없으며, false일 경우 재생 속도에 따라 오디오 피치가 변합니다.

사용 예제
```swift
mediaPlayer.preservesPitch = false // 재생 속도에 따라 오디오 피치가 변하게 됨
```

<br><br>
## repeatMode

```swift
var repeatMode: MediaPlayer.RepeatMode { get set }
```
|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|[MediaPlayer.RepeatMode](../../enum/media-player-repeat-mode/home.md)|오디오 반복 모드 상태|가능|none|

반복 모드를 나타내는 속성입니다.

사용 예제
```swift
mediaPlayer.repeatMode = .none  // 반복 모드 끄기
mediaPlayer.repeatMode = .one   // 하나의 미디어 아이템만 반복 하기
mediaPlayer.repeatMode = .all   // 전체 목록 반복 하기
```

<br><br>
## repeatRange

```swift
var repeatRange: MediaPlayer.RepeatRange? { get set }
```
|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|[MediaPlayer.RepeatRange](../../struct/media-player-repeat-range/home.md)?|반복 구간 범위|가능|nil|

반복 구간 범위를 나타내는 속성입니다.

사용 예제 
```swift
let repeatRange = MediaPlayer.RepeatRange(
    start: .zero,
    end: .seconds(30)
)
mediaPlayer.repeatRange = repeatRange   // 0초 ~ 30초 구간을 반복
```

<br><br>
## scalingMode

```swift
var scalingMode: ScalingMode { get set }
```
|타입|설명|설정|
|:--:|--|:--:|
|[ScalingMode](../../enum/media-player-scaling-mode/home.md)|화면 스케일링 상태|가능|

현대 미디어 화면의 스케일링 상태를 나타내는 속성입니다.

사용 예제: 미디어를 화면에 빈 틈이 없이 가득 채우는 예제
```swift
mediaPlayer.scalingMode = .fill
```

<br><br>
## seekable

```swift
var seekable: [TimeRange] { get }
```
|타입|설명|설정|
|:--:|--|:--:|
|\[[TimeRange](../../struct/time-range/home.md)\]|미디어 내 탐색 가능한 구간 범위|불가능|

미디어 내에서 탐색(seek)이 가능한 구간 범위를 반환하는 속성입니다.

사용 예제
```swift
if (mediaPlayer.seekable.count > 0) {
    updateTimeRange(mediaPlayer.seekable)
}
```

<br><br>
## seekBackIncrement

```swift
var seekBackIncrement: Duration { get set }
```
|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|[Duration](../../struct/duration/home.md)|현재 위치에서 전으로 이동하는 시간의 크기|가능|10초|

[seekBack()](#seekback)을 호출하여 이동할 때, 현재 위치에서 전으로 이동하는 시간 정도를 나타내는 속성입니다.
왼쪽 방향키를 입력 받거나 하단 인터페이스의 되감기 버튼을 클릭했을 때 이 속성을 사용합니다.

사용 예제
```swift
mediaPlayer.seekBackIncrement = .seconds(3)
```

<br><br>
## seekForwardIncrement

```swift
var seekForwardIncrement: Duration { get set }
```
|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|[Duration](../../struct/duration/home.md)|현재 위치에서 후로 이동하는 시간의 크기|가능|10초|

[seekForward()](#seekforward)을 호출하여 이동할 때, 현재 위치에서 후로 이동하는 시간 정도를 나타내는 속성입니다.
오른쪽 방향키를 입력 받거나 하단 인터페이스의 빨리 감기 버튼을 클릭했을 때 이 속성을 사용합니다.

사용 예제
```swift
mediaPlayer.seekForwardIncrement = .seconds(20)
```

<br><br>
## seeking

```swift
var seeking: Bool { get }
```
|타입|설명|설정|
|:--:|--|:--:|
|Bool|현재 미디어가 새로운 위치로 이동하고 있는지(탐색 중인지) 여부|불가능|

미디어가 탐색 중인지를 반환하는 속성입니다. 현재 미디어가 새로운 위치로 이동하고 있거나 탐색중이면 true를 반홥합니다.

사용 예제
```swift
if (mediaPlayer.seeking) {
    mediaPlayer.pause()
}
```

<br><br>
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

사용 예제
```swift
if !mediaPlayer.textTracks.isEmpty,
    let language = mediaPlayer.textTracks[index].language {
        showLanguage(language) // en
    }
```

<br><br>
## videoSize

```swift
var videoSize: CGSize { get }
```
|타입|설명|설정|
|:--:|--|:--:|
|[CGSize](https://developer.apple.com/documentation/corefoundation/cgsize)|width와 height를 속성으로 가지는 구조체|불가능|

현재 재생 중인 미디어의 원래 크기를 반환하는 속성입니다.

사용 예제
```swift
let sizeText = "\(Int(player.videoSize.width))x\(Int(player.videoSize.height))"
    // 예: 1920x1080
```

<br><br>
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

사용 예제
```swift
if !mediaPlayer.videoTracks.isEmpty,
    let width = mediaPlayer.videoTracks[index].width,
    let height = mediaPlayer.videoTracks[index].height {
        showText("\(width)x\(height)")  // 1280x546
    } 
```

<br><br>
## view
```swift
var view: UIView { get }
```
|타입|설명|설정|
|:--:|--|:--:|
|[UIView](https://developer.apple.com/documentation/uikit/uiview)|[미디어 플레이어 화면](../../medi-player-view/home.md) 참고|불가능|

미디어 플레이어 뷰를 반환하는 속성입니다.

사용 예제
```swift
mediaPlayer.view.backgroundColor = .green
```

<br><br>
## volume
```swift
var volume: Float { get set }
```
|타입|설명|범위|설정|
|:--:|--|:--:|:--:|
|Float|현재 미디어의 음량|0.0~1.0|가능|

미디어 플레이어의 음량을 나타내는 속성입니다.

사용 예제
```swift
let currentVolume = "\(Int(mediaPlayer.volume * 100))%"
```

<br><br><br>
------
------
# 메서드

## fastSeekTo(position:)

```swift
func fastSeekTo(position: Duration)
```
입력된 시간으로 빠르게 이동하기 위한 메서드입니다. 언제나 딱 정확한 위치로 가지는 않습니다.
<div align="right">
비교: <a href="#seektoposition">seekTo(position:)</a>
</div>


|파라미터|타입|설명|
|:--:|:--:|--|
|to|[Duration](../../struct/duration/home.md)|재생하고자 하는 위치 값|

사용 예제
```swift
mediaPlayer.fastSeekTo(position: .seconds(50))
```

<br><br>
## hasNextMediaItem()

```swift
func hasNextMediaItem() -> Bool
```
다음에 재생할 미디어가 있는지를 반환하는 메서드입니다. 목록의 마지막이 아니거나, 전체 반복 모드일 경우 true를 반환합니다.


사용 예제
```swift
if (mediaPlayer.hasNextMediaItem()) {
    displayNextButton()
}
```

<br><br>
## hasPreviousMediaItem()

```swift
func hasNextMediaItem() -> Bool
```
바로 앞에 재생할 미디어가 있는지를 반환하는 메서드입니다. 목록의 처음이 아니거나, 전체 반복 모드일 경우 true를 반환합니다.

사용 예제
```swift
if (mediaPlayer.hasPreviousMediaItem()) {
    displayPrevioustButton()
}
```

<br><br>
## load(mediaItem:)

```swift
func load(mediaItem: MediaItem)
```
하나의 미디어를 로드하기 위한 메서드입니다.

|파라미터|타입|설명|
|:--:|:--:|--|
|mediaItem|[MediaItem](../../struct/media-item/home.md)|입력된 미디어 아이템을 로드합니다.|[미디어 아이템](../../struct/media-item/home.md) 참고|

<br><br>
## load(mediaItems:startMediaItemIndex:)

```swift
func load(
    mediaItems: [MediaItem],
    startMediaItemIndex: Int = 0
)
```
여러 개의 미디어를 로드하기 위한 메서드입니다. 처음으로 재생할 미디어를 정할 수 있습니다.

|파라미터|타입|설명|
|:--:|:--:|--|
|mediaItems|\[[MediaItem](../../struct/media-item/home.md)\]|[미디어 아이템](../../struct/media-item/home.md) 참고|
|startMediaItemIndex|Int|목록 중에서 처음 재생할 미디어 아이템의 index|

사용 예제
```swift
mediaPlayer.load(mediaItems: mediaItems)    // 0번째 아이템부터 시작
mediaPlayer.load(mediaItems: mediaItems, 0) // 0번째 아이템부터 시작.위와 동일한 결과
```

<br><br>
## load(src:)

```swift
func load(src: URL)
```
URL을 사용하여 미디어를 로드하기 위한 메서드입니다.

|파라미터|타입|설명|
|:--:|:--:|--|
|src|[URL](https://developer.apple.com/documentation/foundation/url)|로드할 미디어의 주소|

<br><br>
## pause()

```swift
func pause()
```
미디어를 일시 정지하기 위한 메서드입니다.

<br><br>
## play()

```swift
func play()
```
미디어를 재생하기 위한 메서드입니다.

<br><br>
## prepare()

```swift
func prepare()
```
미디어 관련 기본 설정을 하기 위한 메서드입니다. 이 메서드를 실행하면, [autoplay](#autoplay), [defaultPlaybackRate](#defaultplaybackrate), [defaultMuted](#defaultmuted) 설정을 미디어 플레이어에 적용하고, 미디어를 로딩하는 과정까지 진행합니다.

<br><br>
## seekBack()

```swift
func seekBack()
```
현재 위치에서 속성 [seekBackIncrement](#seekbackincrement) 만큼 전으로 이동하기 위한 메서드입니다.


<br><br>
## seekBack(increment:)

```swift
func seekBack(increment: Duration)
```
현재 위치에서 입력된 시간 전으로 이동하기 위한 메서드입니다.

|파라미터|타입|설명|
|:--:|:--:|--|
|increment|[Duration](../../struct/duration/home.md)|새로운 위치는 현재 위치에서 입력된 파라미터를 뺀 결과입니다.<br>즉, 음수 입력 시, 입력된 파라미터의 절대값만큼 후로 이동합니다.|

사용 예제
```swift
mediaPlayer.seekBack(increment: .seconds(30))
// 미디어 재생 위치의 이동에 관하여는 아래의 코드와 동일한 결과를 가지고 오지만, 
// seekBackIncrement 값은 변하지 않는 게 다른 점입니다.

mediaPlayer.seekBackIncrement = .seconds(30)
mediaPlayer.seekBack()
```

<br><br>
## seekForward()

```swift
func seekForward()
```
현재 위치에서 속성 [seekForwardIncrement](#seekforwardincrement) 만큼 후로 이동하기 위한 메서드입니다.

<br><br>
## seekForward(increment:)

```swift
func seekForward(increment: Duration)
```
현재 위치에서 입력된 시간 후로 이동하기 위한 메서드입니다.

|파라미터|타입|설명|
|:--:|:--:|--|
|increment|[Duration](../../struct/duration/home.md)|새로운 위치는 현재 위치에서 입력된 파라미터를 더한 결과입니다.<br>즉, 음수 입력 시, 입력된 파라미터의 절대값만큼 되돌아갑니다.|

사용 예제
```swift
mediaPlayer.seekForward(increment: .seconds(30))
// 미디어 재생 위치의 이동에 관하여는 아래의 코드와 동일한 결과를 가지고 오지만, 
// seekForwardIncrement 값은 변하지 않는 게 다른 점입니다.

mediaPlayer.seekForwardIncrement = .seconds(30)
mediaPlayer.seekForward()
```

<br><br>
## seekTo(position:)

```swift
func seekTo(position: Duration)
```
입력된 시간 위치로 정확하게 이동하기 위한 메서드입니다.
<div align="right">
비교: <a href="#fastseektoposition">fastSeekTo(position:)</a>
</div>

|파라미터|타입|설명|
|:--:|:--:|--|
|position|[Duration](../../struct/duration/home.md)|입력된 값으로 재생 위치를 이동합니다.|

사용 예제
```swift
mediaPlayer.seekTo(position: .seconds(30))
```

<br><br>
## seekTo(mediaItemIndex:position:)

```swift
func seekTo(mediaItemIndex: Int, position: Duration = .indefinite)
```
현재 재생 중인 미디어를 정지하고 다른 미디어를 재생하기 위한 메서드입니다. 재생 목록의 index만 파라미터로 넘겨줄 경우에는, 해당 미디어의 마지막에 재생했던 위치에서 시작합니다.

|파라미터|타입|설명|필수|
|:--:|:--:|--|:--:|
|mediaItemIndex|Int|재생 목록에서 미디어 아이템의 index|O|
|position|[Duration](../../struct/duration/home.md)|해당 미디어에서 재생하고하 하는 위치<br>입력하지 않으면, 마지막에 재생했던 위치에서 시작합니다.|X|

사용 예제
```swift
// 3번째 미디어를 재생하는데, 마지막에 재생했던 위치로 이동합니다.
mediaPlayer.seekTo(mediaItemIndex: 2)

// 4번째 미디어를 재생하는데, 2분 위치에서 재생을 시작합니다.
mediaPlayer.seekTo(mediaItemIndex: 3, position: .seconds(120))
```

<br><br>
## seekToNext()

```swift
func seekToNext()
```
[seekToNexMediaItemt()](#seektonextmediaitem)와 동일합니다.

<br><br>
## seekToNextMediaItem()

```swift
func seekToNextMediaItem()
```
다음으로 재생할 미디어가 있을 경우 현재 재생중인 미디어를 정지하고 다음 미디어로 이동하는 메서드입니다. 목록의 맨 뒤에 위치한 미디어이지만 전체 반복 모드일 경우, 목록의 맨 앞으로 이동합니다.

<br><br>
## seekToPrevious()

```swift
func seekToPrevious()
```
현재 재생 위치가 속성 maxSeekToPreviousPosition보다 앞이면 이전 미디어로 이동합니다.(참고: [seekToPreviousMediaItem()](#seektopreviousmediaitem)) 
그렇지 않으면 현재 미디어의 맨 앞으로 이동합니다.
<div align="right">
참고: <a href="#maxseektopreviousposition">maxSeekToPreviousPosition</a>
</div>

<br><br>
## seekToPreviousMediaItem()

```swift
func seekToPreviousMediaItem()
```
앞에 재생할 미디어가 있을 경우 현재 재생중인 미디어를 정지하고 이전 미디어로 이동하는 메서드입니다. 목록의 맨 앞에 위치한 미디어일 경우, 목록의 마지막 미디어로 이동합니다.

<br><br>
## startPictureInPicture()

```swift
func startPictureInPicture()
```
화면 속 화면 모드를 시작하는 메서드입니다.

<br><br>
## stop()

```swift
func stop()
```
미디어를 완전 종료할 때 부르는 메서드입니다. MediaPlayer가 종료되면 자동으로 호출됩니다. 이 메서드가 호출되면, 미디어를 멈추고, [emptied](../../enum/event-handlers/details.md#emptied) 핸들러를 호출하고, [playbackState](../../enum/media-player-playback-state/home.md)가 .idle상태로 바뀝니다.

<br><br>
## stopPictureInPicture()

```swift
func stopPictureInPicture()
```
화면 속 화면 모드를 종료하는 메서드입니다.

<br><br>
## addEventHandler(_)

```swift
func addEventHandler(_ handler: EventHandler) -> EventTarget
```
[이벤트 핸들러](../../enum/event-handlers/home.md)를 추가하기 위한 메서드입니다.
반환된 [이벤트 타겟](../../class/event-target/home.md)은 이벤트 핸들러를 제거할 목적으로 [removeEventHandler()](#removeeventhandler_)에서 사용할 수 있습니다.

|파라미터|타입|반환 타입|설명|
|:--:|:--:|:--:|--|
|handler|[EventHandler](../../enum/event-handlers/home.md)|[EventTarget](../../class/event-target/home.md)|[이벤트 핸들러](../../enum/event-handlers/home.md), [이벤트 타겟](../../class/event-target/home.md) 참고|

사용 예제
```swift
mediaPlayer.addEventHandler(
    .play({
        showPlayText()
    })
)
```

<br><br>
## removeEventHandler(_)

```swift
func removeEventHandler(target: EventTarget)
```
이벤트 핸들러를 제거하기 위한 메서드입니다.

|파라미터|타입|설명|
|:--:|:--:|--|
|target|[EventTarget](../../class/event-target/home.md)|[이벤트 핸들러](../../enum/event-handlers/home.md), [이벤트 타겟](../../class/event-target/home.md) 참고|

사용 예제
```swift
let target = mediaPlayer.addEventHandler(
    .play({ 
        showText() 
    })
)

/**
	do something
*/

mediaPlayer.removeEventHandler(target)
```

<br><br>
## addEventListener(_)

```swift
func addEventListener(_ listener: EventListener)
```
[이벤트 리스너](../../protocol/event-listeners/home.md)를 추가하기 위한 메서드입니다.

|파라미터|타입|설명|
|:--:|:--:|--|
|listener|[EventListener](../../protocol/event-listeners/home.md)|[이벤트 리스너](../../protocol/event-listeners/home.md) 참고|

사용 예제
```swift
class ComponentListener: EventListener { 
    func onPlay() { 
        showPauseIcon()
    } 
}

let compoenentListener = ComponentListener()

mediaPlayer.addEventListener(compoenentListener)
```

<br><br>
## removeEventListener(_)

```swift
func removeEventListener(_ listener: EventListener)
```
[이벤트 리스너](../../protocol/event-listeners/home.md)를 제거하기 위한 메서드입니다.

|파라미터|타입|설명|
|:--:|:--:|--|
|listener|[EventListener](../../protocol/event-listeners/home.md)|[이벤트 리스너](../../protocol/event-listeners/home.md) 참고|


사용 예제
```swift
// addEventListener(_)의 사용 예제에 이어서 구현한 내용입니다.

mediaPlayer.removeEventListener(componentListener)
```
