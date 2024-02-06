# autoplay

MediaPlayer.autoplay는 미디어가 로딩되었을 때, 즉시 재생이 시작되어야 하는지를 나타내는 속성입니다. true면 자동 재생합니다.

|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|Bool|미디어가 로딩되었을 때, 즉 미디어가 준비가 된 즉시 재생할 것인지 결정하는 값|가능|true|

사용 예제
```swift
mediaPlayer.autoplay = false    // 다음 미디어로 이동 시, 자동 재생 하지 않습니다.
```

<br><br><br><br>

--------
# buffered

MediaPlayer.buffered는 버퍼에 있는 미디어 리소스의 범위를 반환합니다.

|타입|설명|설정|
|:--:|--|:--:|
|\[[TimeRange](../../struct/details.md#timerange)\]|현재 버퍼에 담고 있는 미디어 리소스의 범위 데이터|불가능|


사용 예제
```swift
let buffered = mediaPlayer.buffered
    // [__C.CMTimeRange(start: __C.CMTime(value: 218625, timescale: 600, flags: __C.CMTimeFlags(rawValue: 1), epoch: 0), duration: __C.CMTime(value: 2034, timescale: 600, flags: __C.CMTimeFlags(rawValue: 1), epoch: 0))]
let start = buffered[0].start	// 첫 번째 버퍼의 시작 위치
let end = buffered[0].end		// 첫 번째 버퍼의 종료 위치
```

<br><br><br><br>

--------
# canStartPictureInPictureAutomatically

MediaPlayer.canStartPictureInPictureAutomatically는 앱이 백그라운드에 있을 때, 화면 속 화면 모드를 자동으로 시작할 수 있는지 여부를 의미하는 속성입니다.

|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|Bool|백그라운드에서 화면 속 화면 모드를 자동으로 시작할 지 여부|가능|true|

<br><br><br><br>

--------
# currentMediaItem

MediaPlayer.currentMediaItem는 현재 재생 중인 미디어 아이템을 의미하는 속성입니다.

|타입|설명|설정|
|:--:|--|:--:|
|[MediaItem](../../media_item/home.md)?|현재 재생 중인 미디어 아이템|불가능|

<br><br><br><br>

--------
# currentMediaItemIndex

MediaPlayer.currentMediaItemIndex 현재 재생 중인 미디어 아이템의 index를 의미하는 속성입니다.

|타입|설명|설정|
|:--:|--|:--:|
|Int|현재 재생 중인 미디어 아이템의 index|불가능|

<br><br><br><br>

--------
# currentSrc

MediaPlayer.currentSrc는 미디어 리소스의 uri를 의미하는 속성입니다.

|타입|설명|설정|
|:--:|--|:--:|
|[URL](https://developer.apple.com/documentation/foundation/url)?|현재 선택된 미디어 아이템의 [URL](https://developer.apple.com/documentation/foundation/url)|불가능|

<br><br><br><br>

--------
# currentTime

MediaPlayer.currentTime은 현재 재생 위치를 [Duration](../../struct/details.md#duration) 단위로 지정합니다.

|타입|설명|설정|
|:--:|--|:--:|
|[Duration](../../struct/details.md#duration)|설정 시, 재생하고 싶은 특정 위치 ([seekTo](../methods/details.md#seektoposition)와 같은 동작)<br>반환 시, 현재 재생 시점|가능|

사용 예제
```swift
let duration: Duration = .seconds(60)

mediaPlayer.currentTime = duration		// 60초로 가기

let currentTime = mediaPlayer.currentTime 	// 60초
```

<br><br><br><br>

--------
# defaultMuted

MediaPlayer.defaultMuted는 오디오의 음소거 기본 설정을 나타내는 속성입니다.

|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|Bool|음소거 기본 설정 상태|가능|false|

<br><br><br><br>

--------
# defaultPlaybackRate

MediaPlayer.defaultPlaybackRate는 미디어의 기본 재생 속도를 나타내는 속성입니다.

|타입|설명|설정|범위|기본값|
|:--:|--|:--:|:--:|:--:|
|Float|미디어의 기본 재생 속도|가능|0.1~4.0|1.0|

사용 예제
```swift
mediaPlayer.defaultPlaybackRate = 2
```

<br><br><br><br>

--------
# duration

MediaPlayer.duration은 현재 미디어 길이를 나타냅니다. 재생 가능한 미디어가 없을 경우 0에 해당하는 [Duration](../../struct/details.md#duration)을 반환합니다.

|타입|설명|설정|
|:--:|--|:--:|
|[Duration](../../struct/details.md#duration)|현재 미디어의 전체 길이|불가능|

사용 예제
```swift
let duration = mediaPlayer.duration 
    // CMTime(value: 532799, timescale: 600, flags: __C.CMTimeFlags(rawValue: 1), epoch: 0)
```

<br><br><br><br>

--------
# ended

MediaPlayer.ended는 미디어 재생 완료 여부를 나타내는 속성입니다.

|타입|설명|설정|
|:--:|--|:--:|
|Bool|재생 목록에서 마지막 미디어의 재생 완료 여부를 반환|불가능|

사용 예제
```swift
if (mediaPlayer.ended) {
    dismiss()
}
```

<br><br><br><br>

--------
# error

MediaPlayer.error는 최근 발생한 에러를 나타내는 속성입니다.

|타입|설명|설정|
|:--:|--|:--:|
|[Error](https://developer.apple.com/documentation/swift/error)?|에러를 반환|불가능|

사용 예제
```swift
let errorString = mediaPlayer.error?.localizedDescription
```

<br><br><br><br>

--------
# isPictureInPictureActive

MediaPlayer.isPictureInPictureActive는 현재 재생되는 미디어가 화면 속 화면 모드인지를 나타내는 속성입니다.

|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|Bool|화면 속 화면 모드인지 여부|불가능|false|

<br><br><br><br>

--------
# isPictureInPicturePossible

MediaPlayer.isPictureInPicturePossible은 미디어가 화면 속 모드로 전환할 수 있는지 여부를 나타내는 속성입니다.
 
|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|Bool|현재 화면 속 화면 모드로 전환할 수 있는지 여부|불가능|false|


<br><br><br><br>

--------
# isSeekable

MediaPlayer.isSeekable은 미디어에서 seek을 사용할 수 있는지 여부를 나타내는 속성입니다. 미디어의 길이가 파악이 될 경우 true를 반환합니다.

|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|Bool|미디어 아이템에서 위치를 이동할 수 있는지 여부|불가능|false|

사용 예제
```swift
if (mediaPlayer.isSeekable) {
	mediaPlayer.seekTo(position: .seconds(30))
}
```

<br><br><br><br>

--------
# loop

MediaPlayer.loop는 미디어 재생이 끝났을 때 다시 처음부터 재생할 지 여부를 나타내는 속성입니다.

|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|Bool|미디어 반복 재생 여부를 결정하는 값|가능|false|

<br><br><br><br>

--------
# maxSeekToPreviousPosition

MediaPlayer.maxSeekToPreviousPosition는 이전 버튼을 눌렀을 때, 이전 미디어로 갈 수 있는 최대 허용 위치를 나타내는 속성입니다. 메서드 [seekToPrevious()](../methods/details.md#seektoprevious)에서 사용됩니다.

|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|[Duration](../../struct/details.md#duration)|하단 인터페이스의 이전 버튼을 클릭하였을 때, 이전 미디어로 갈 것인지 현재 미디어의 맨 앞으로 갈 것인지에 대한 기준 값. 이 값보다 작으면 이전 미디어로 이동하고, 그렇지 않으면 현재 미디어의 맨 앞으로 이동합니다.|가능|3초|

사용 예제
```swift
mediaPlayer.maxSeekToPreviousPosition = .seconds(5)
    // 이전 버튼을 클릭했을 때,
    // 현재 재생 위치가 5초 보다 작고 이전 미디어가 있으면, 이전 미디어로 이동합니다.
	// 그렇지 않으면, 현재 미디어의 맨 앞으로 이동합니다.
```

<br><br><br><br>

--------
# mediaItems

MediaPlayer.mediaItems는 미디어 아이템들의 목록을 나타내는 속성입니다.

|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|\[[MediaItem](../../media_item/home.md)\]|현재 재생 목록에 있는 미디어 아이템들|가능|[]|

사용 예제
```swift
let mediaItems = mediaPlayer.mediaItems // 현재 미디어 아이템들을 나타냅니다.

mediaPlayer.mediaItems = Array(mediaItems.prefix(4)) 
    // 현재 미디어 아이템 중 앞에 있는 4개의 미디어 아이템만 잘라내어서 다시 설정합니다.
```

<br><br><br><br>

--------
# muted

MediaPlayer.muted는 음소거 여부를 나타내는 속성입니다. 음소거면 true, 아니면 false입니다.

|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|Bool|오디오 음소거 여부|가능|false|

사용 예제
```swift
Button {
    mediaPlayer.muted = true
} label: {
    Text("Mute")
}
```

<br><br><br><br>

--------
# paused

MediaPlayer.paused는 미디어가 일시 정지 상태인지 나타내는 속성입니다.

|타입|설명|설정|
|:--:|--|:--:|
|Bool|미디어 일시 정지 여부|불가능|

사용 예제
```swift
if (mediaPlayer.paused) {
	displayPlayButton()
}
```

<br><br><br><br>

--------
# playbackRate

MediaPlayer.playbackRate는 미디어가 재생 속도를 나타내는 속성입니다. 정상 속도는 1.0이고, 1보다 작을 때는 느리게, 1보다 클 때는 빠르게 재생합니다. 이 때, 오디오 피치 유지 여부는 MediaPlayer.preservesPitch의 값으로 제어할 수 있습니다.

|타입|설명|설정|범위|기본값|
|:--:|--|:--:|:--:|:--:|
|Float|재생 속도|가능|0.1~4.0|1.0|

사용 예제
```swift
mediaPlayer.playbackRate = 2
```

<br><br><br><br>

--------
# playbackState

MediaPlayer.playbackState는 미디어의 현재 상태를 나타냅니다.

<div align="right">
참고: <a href="../enum/details.md#playbackstate">PlaybackState</a>
</div>

|타입|설명|설정|
|:--:|--|:--:|
|[PlaybackState](../enum/details.md#playbackstate)|미디어의 현재 상태를 나타냅니다.|불가능|


사용 예제
```swift
switch mediaPlayer.playbackState {
    case .idle: handleIdleState()
    case .ready: handleReadyState()
    case .buffering: handleBufferingState()
    case .ended: handleEndedState()
}
```

<br><br><br><br>

--------
# preservesPitch

MediaPlayer.preservesPitch는 재생 속도에 따른 오디오 피치 유지 여부를 나타내는 속성입니다. 값이 true면 재생 속도가 변해도 오디오 피치는 변함 없으며, false일 경우 재생 속도에 따라 오디오 피치가 변합니다.

|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|Bool|오디오 피치 유지 여부|가능|true|

사용 예제
```swift
mediaPlayer.preservesPitch = false // 재생 속도에 따라 오디오 피치가 변하게 됨
```

<br><br><br><br>

--------
# repeatMode

MediaPlayer.repeatRange는 반복 모드를 나타내는 속성입니다.

|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|[RepeatMode](../enum/details.md#repeatmode)|오디오 반복 모드 상태|가능|none|

사용 예제
```swift
mediaPlayer.repeatMode = .none		// 반복 모드 끄기
mediaPlayer.repeatMode = .one		// 하나의 미디어 아이템만 반복 하기
mediaPlayer.repeatMode = .all		// 전체 목록 반복 하기
```

<br><br><br><br>

--------
# repeatRange

MediaPlayer.repeatRange는 반복 구간 범위를 나타내는 속성입니다.

|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|[RepeatRange](../struct/details.md#repeatrange)?|반복 구간 범위|가능|nil|

사용 예제 
```swift
let repeatRange = MediaPlayer.RepeatRange(
    start: .zero,
    end: .seconds(30)
)
mediaPlayer.repeatRange = repeatRange		// 0초 ~ 30초 구간을 반복
```

<br><br><br><br>

--------
# scalingMode

MediaPlayer.scalingMode는 화면 스케일링 상태를 나타내는 속성입니다.

|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|[ScalingMode](../enum/details.md#scalingmode)|화면 스케일링 상태|가능|aspectFit|

사용 예제
```swift
mediaPlayer.scalingMode = .aspectFit	// 화면비 유지하며, 화면에 꼭 맞게
mediaPlayer.scalingMode = .aspectFill	// 화면비 유지하며, 화면에 가득 채우기
mediaPlayer.scalingMode = .fill		// 화면비 무시하며, 화면에 가득 채우기
```

<br><br><br><br>

--------
# seekable

MediaPlayer.seekable은 미디어 내에서 탐색(seek)이 가능한 구간 범위를 나타내는 속성입니다.

|타입|설명|설정|
|:--:|--|:--:|
|\[[TimeRange](../../struct/details.md#timerange)\]|미디어 내 탐색 가능한 구간 범위|불가능|

사용 예제
```swift
if (mediaPlayer.seekable.count > 0) {
    updateTimeRange(mediaPlayer.seekable)
}
```

<br><br><br><br>

--------
# seekBackIncrement

MediaPlayer.seekBackIncrement는 왼쪽 방향키를 입력 받거나 하단 인터페이스의 되감기 버튼을 클릭했을 때, 현재 위치에서 전으로 이동하는 시간 정도를 나타내는 속성입니다.

|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|[Duration](../../struct/details.md#duration)|현재 위치에서 전으로 이동하는 시간의 크기|O|10초|

사용 예제
```swift
mediaPlayer.seekBackIncrement = .seconds(3)
```

<br><br><br><br>

--------
# seekForwardIncrement

MediaPlayer.seekForwardIncrement는 오른쪽 방향키를 입력 받거나 하단 인터페이스의 빨리 감기 버튼을 클릭했을 때, 현재 위치에서 후로 이동하는 시간 정도를 나타내는 속성입니다.

|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|[Duration](../../struct/details.md#duration)|현재 위치에서 후로 이동하는 시간의 크기|O|10초|

사용 예제
```swift
mediaPlayer.seekForwardIncrement = .seconds(20)
```

<br><br><br><br>

--------
# seeking

MediaPlayer.seeking은 미디어가 탐색 중이지를 나타내는 속성입니다. 현재 미디어가 새로운 위치로 이동하고 있거나 탐색중이면 true를 반홥합니다.

|타입|설명|설정|
|:--:|--|:--:|
|Bool|현재 미디어가 새로운 위치로 이동하고 있는지(탐색 중인지) 여부|불가능|

사용 예제
```swift
if (mediaPlayer.seeking) {
    mediaPlayer.pause()
}
```

<br><br><br><br>

--------
# videoSize

MediaPlayer.videoSize는 현재 재생 중인 미디어의 원래 크기를 나타내는 속성입니다.

|타입|설명|설정|
|:--:|--|:--:|
|[CGSize](https://developer.apple.com/documentation/corefoundation/cgsize)|width와 height를 속성으로 가지는 구조체|불가능|

사용 예제
```swift
let sizeText = "\(Int(player.videoSize.width))x\(Int(player.videoSize.height))"
    // 예: 1920x1080
```

<br><br><br><br>

--------
# view

MediaPlayer.view는 미디어 플레이어 뷰를 나타내는 속성입니다.

|타입|설명|설정|
|:--:|--|:--:|
|[UIView](https://developer.apple.com/documentation/uikit/uiview)|[MediaPlayerView](../../media_player_view/home.md) 참고|불가능|

사용 예제
```swift
mediaPlayer.view.backgroundColor = .green
```

<br><br><br><br>

--------
# volume

MediaPlayer.volume은 미디어 플레이어의 음량을 나타내는 속성입니다.

|타입|설명|범위|설정|
|:--:|--|:--:|:--:|
|Float|현재 미디어의 음량|0.0~1.0|가능|

사용 예제
```swift
let currentVolume = "\(Int(mediaPlayer.volume * 100))%"
```