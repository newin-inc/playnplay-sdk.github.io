# 메서드

## onCueChange(textCues:)
```swift
func onCueChange(textCues: [TextTrack.Cue])
```
자막 큐가 변경되는 시점에 실행합니다.
<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/details.md#textcuechange">EventHandler.textCueChange</a>
</div>

사용 예제
```swift
class ComponentListener: EventListener {
    func onCueChange(textCues: [TextTrack.Cue]) {
        display(textCues)
    }
}

let componentListener = ComponentListener()

mediaPlayer.addEventListener(componentListener)
```
<br><br>
## onDurationChange(duration:)
```swift
func onDurationChange(duration: Duration)
```
미디어의 길이(duration)가 변경되는 시점에 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/details.md#durationchange">EventHandler.durationChange</a>
</div>

사용 예제
```swift
class ComponentListener: EventListener {
    func onDurationChange(duration: Duration) {
        showDurationText(duration)
    }
}

let componentListener = ComponentListener()

mediaPlayer.addEventListener(componentListener)
```
<br><br>
## onEmptied()
```swift
func onEmptied()
```
미디어가 제거된 시점, 즉, 미디어 주소가 변경되기 직전, 기존에 존재하던 미디어를 비울 때를 실행합니다.
<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/details.md#emptied">EventHandler.emptied</a>
</div>

사용 예제
```swift
class ComponentListener: EventListener {
    func onEmptied() {
        hideMedia()
    }
}

let componentListener = ComponentListener()

mediaPlayer.addEventListener(componentListener)
```
<br><br>
## onEnded()
```swift
func onEnded()
```
재생 목록의 마지막 미디어의 재생이 완료된 시점에 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/details.md#ended">EventHandler.ended</a>
</div>

사용 예제
```swift
class ComponentListener: EventListener {
    func onEnded() {
        finish()
    }
}

let componentListener = ComponentListener()

mediaPlayer.addEventListener(componentListener)
```
<br><br>
## onError(error:)
```swift
func onError(error: Error)
```
에러가 발생할 때 실행합니다.
<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/details.md#error">EventHandler.error</a><br>
참고: <a href="https://developer.apple.com/documentation/swift/error">Error</a>
</div>

사용 예제
```swift
class ComponentListener: EventListener {
    func onError(error: Error) {
        handleError(error)
    }
}

let componentListener = ComponentListener()

mediaPlayer.addEventListener(componentListener)
```
<br><br>
## onLoadedData()
```swift
func onLoadedData()
```
미디어 아이템이 로드되었을 때 실행합니다.
<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/details.md#loadeddata">EventHandler.loadedData</a>
</div>

사용 예제
```swift
class ComponentListener: EventListener {
    func onLoadedData() {
        showPath(mediaPlayer.currentSrc)
    }
}

let componentListener = ComponentListener()

mediaPlayer.addEventListener(componentListener)
```
<br><br>
## onLoadStart()
```swift
func onLoadStart()
```
미디어 리소스를 로드하기 시작할 때 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/details.md#loadstart">EventHandler.loadStart</a>
</div>

사용 예제
```swift
class ComponentListener: EventListener {
    func onLoadStart() {
        showLoadingIndicator()
    }
}

let componentListener = ComponentListener()

mediaPlayer.addEventListener(componentListener)
```
<br><br>
## onMediaItemTransition(item:)
```swift
func onMediaItemTransition(item: MediaItem?)
```
미디어 아이템이 교체 되는 시점에 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/details.md#mediaitemtransition">EventHandler.mediaItemTransition</a>
</div>

사용 예제
```swift
class ComponentListener: EventListener {
    func onMediaItemTransition(item: MediaItem?) {
        if let mediaItem = item {
            let title = mediaItem.title
        }
    }
}

let componentListener = ComponentListener()

mediaPlayer.addEventListener(componentListener)
```
<br><br>
## onPause()
```swift
func onPause()
```
미디어가 일시 정지 상태로 진입하는 시점에 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/details.md#pause">EventHandler.pause</a><<br>
비교: <a href="#onplay">onPlay</a>
</div>

사용 예제
```swift
class ComponentListener: EventListener {
    func onPause() {
        displayPlayIcon()
    }
}

let componentListener = ComponentListener()

mediaPlayer.addEventListener(componentListener)
```
<br><br>
## onPictureInPictureActiveChange(active:)
```swift
func onPictureInPictureActiveChange(active: Bool)
```
화면 속 화면 모드가 켜지거나 꺼지는 시점에 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/details.md#pictureinpictureactivechange">EventHandler.pictureInPictureActiveChange</a><br>
참고: <a href="#onpictureinpicturedidstart">onPictureInPictureDidStart</a>,
<a href="#onpictureinpicturedidstop">onPictureInPictureDidStop</a>,
<a href="#onpictureinpicturewillstart">onPictureInPictureWillStart</a>,   
<a href="#onpictureinpicturewillstop">onPictureInPictureWillStop</a><br>
</div>

사용 예제
```swift
class ComponentListener: EventListener {
    func onPictureInPictureActiveChange(active: Bool) {
        if active {
            handleEnterPipMode()
        } else {
            handleExitPipMode()
        }
    }
}

let componentListener = ComponentListener()

mediaPlayer.addEventListener(componentListener)
```
<br><br>
## onPictureInPicturePossibleChange(possible:)
```swift
func onPictureInPicturePossibleChange(possible: Bool)
```
화면 속 화면 모드를 사용할 수 있을 때, (혹은 반대의 경우에) 실행합니다. 예를 들면, 화면 속 화면 모드 버튼을 활성화 및 비활성화 하기 위해서 필요합니다.

<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/details.md#pictureinpicturepossiblechange">EventHandler.pictureInPicturePossibleChange</a>
</div>

사용 예제
```swift
class ComponentListener: EventListener {
    func onPictureInPicturePossibleChange(possible: Bool) {
        if possible {
            showPipButton()	
        }
    }
}

let componentListener = ComponentListener()

mediaPlayer.addEventListener(componentListener)
```
<br><br>
## onPictureInPictureDidStart()
```swift
func onPictureInPictureDidStart()
```
화면 속 화면 모드가 시작한 후 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/details.md#pictureinpicturedidstart">EventHandler.pictureInPictureDidStart</a>
</div>

화면 속 화면 모드로 들어가면, [onPictureInPictureWillStart()](#onpictureinpicturewillstart) → [onPictureInPictureActiveChange](#onpictureinpictureactivechangeactive)(true) → [onPictureInPictureDidStart()](#onpictureinpicturedidstart)의 순서대로 실행합니다.

사용 예제
```swift
class ComponentListener: EventListener {
    func onPictureInPictureDidStart() {
        displayPipModeStartText()
    }
}

let componentListener = ComponentListener()

mediaPlayer.addEventListener(componentListener)
```
<br><br>
## onPictureInPictureDidStop()
```swift
func onPictureInPictureDidStart()
```
화면 속 화면 모드가 끝나면 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/details.md#pictureinpicturedidstop">EventHandler.pictureInPictureDidStop</a>
</div>

화면 속 화면 모드가 종료되면, [onPictureInPictureWillStop()](#onpictureinpicturewillstop) → [onPictureInPictureActiveChange](#onpictureinpictureactivechangeactive)(false) → [onPictureInPictureDidStop()](#onpictureinpicturedidstop)의 순서대로 호출됩니다.

사용 예제
```swift
class ComponentListener: EventListener {
    func onPictureInPictureDidStop() {
        displayPipModeDoneText()
    }
}

let componentListener = ComponentListener()

mediaPlayer.addEventListener(componentListener)
```
<br><br>
## onPictureInPictureWillStart()
```swift
func onPictureInPictureWillStart()
```
화면 속 화면 모드가 시작하기 직전에 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/details.md#pictureinpicturewillstart">EventHandler.pictureInPictureWillStart</a>
</div>

화면 속 화면 모드로 들어가면, [onPictureInPictureWillStart()](#onpictureinpicturewillstart) → [onPictureInPictureActiveChange](#onpictureinpictureactivechangeactive)(true) → [onPictureInPictureDidStart()](#onpictureinpicturedidstart)의 순서대로 실행합니다.

사용 예제
```swift
class ComponentListener: EventListener {
    func onPictureInPictureWillStart() {
        displayWaitForPipModeStart()
    }
}

let componentListener = ComponentListener()

mediaPlayer.addEventListener(componentListener)
```
<br><br>
## onPictureInPictureWillStop()
```swift
func onPictureInPictureWillStop()
```
화면 속 화면 모드가 끝나기 직전애 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/details.md#pictureinpicturewillstop">EventHandler.pictureInPictureWillStop</a>
</div>

화면 속 화면 모드가 종료되면, [onPictureInPictureWillStop()](#onpictureinpicturewillstop) → [onPictureInPictureActiveChange](#onpictureinpictureactivechangeactive)(false) → [onPictureInPictureDidStop()](#onpictureinpicturedidstop)의 순서대로 호출됩니다.

사용 예제
```swift
class ComponentListener: EventListener {
    func onPictureInPictureWillStop() {
        displayWaitForPipModeDone()
    }
}

let componentListener = ComponentListener()

mediaPlayer.addEventListener(componentListener)
```
<br><br>
## onPlay()
```swift
func onPlay()
```
미디어가 일시 정지 상태에서 재생 상태로 변경되는 시점에 실행합니다.
사용자가 재생 버튼을 클릭하거나 mediaPlayer.play()를 호출하는 등 플레이어에 재생 명령을 내렸을 때 등과 같이 명령을 했을 때 상황에서 이벤트 처리를 여기서 할 수 있습니다.
onPlay가 실행된 이후에 playing는 언제나 호출됩니다.
재생 중에 미디어를 이동하든지 재생 위치를 이동하면, 언제나 onPause -> onPlay -> onPlaying 순서로 호출됩니다.

<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/details.md#play">EventHandler.play</a><br>
비교: <a href="#onpause">onPause</a><br>
참고: <a href="#onPlaying">onPlaying</a>
</div>

사용 예제
```swift
class ComponentListener: EventListener {
    func onPlay() {
        displayPauseIcon()
    }
}

let componentListener = ComponentListener()

mediaPlayer.addEventListener(componentListener)
```
<br><br>
## onPlaybackStateChange(state:)
```swift
func onPlaybackStateChange(state: MediaPlayer.PlaybackState)
```
미디어 로딩 상태에 따라서, 즉, 버퍼링인지 준비가 된 상태인지, 끝이 났는지, 플레이어를 종료하였는지 등의 상황이 발생하면 실행합니다. 상황에 따른 설명은 [playbackState](../../enum/media-player-playback-state/home.md)를 참고하세요.

<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/details.md#playbackstatechange">EventHandler.playbackStateChange</a><br>
참고: <a href="../../enum/media-player-playback-state/home.md">PlaybackState</a>
</div>

사용 예제
```swift
class ComponentListener: EventListener {
    func onPlaybackStateChange(state: MediaPlayer.PlaybackState) {
        switch state {
        case .idle: handleIdleState()
        case .ready: handleReadyState()
        case .buffering: handleBufferingState()
        case .ended: handleEndedState()
        }
    }
}

let componentListener = ComponentListener()

mediaPlayer.addEventListener(componentListener)
```
<br><br>
## onPlaying()
```swift
func onPlaying()
```
미디어가 재생 상태로 변한 직후에 실행합니다.
playing과 관련된 이벤트 핸들러는 play 이벤트 이후에 항상 호출됩니다.

<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/details.md#playing">EventHandler.playing</a><br>
참고: <a href="#onPlay">onPlay</a>
</div>

사용 예제
```swift
class ComponentListener: EventListener {
    func onPlaying() {
        removeBufferingText()	// 버퍼링 텍스트 제거
    }
    func onPlay() {
        displayPauseIcon()		// 아이콘 변경
    }
}

let componentListener = ComponentListener()

mediaPlayer.addEventListener(componentListener)

mediaPlayer.play()  // 아이콘을 변경 한 후, 버퍼링 텍스트를 제거합니다.
```
<br><br>
## onPositionDiscontinuity(oldPosition:newPosition:)
```swift
func onPositionDiscontinuity(oldPosition: Duration, newPosition: Duration)
```
재생 위치가 변경되는 시점에 실행합니다. 이전 위치와 이동한 위치 모두 접근이 가능합니다.

<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/details.md#positiondiscontinuity">EventHandler.positionDiscontinuity</a>
</div>

사용 예제
```swift
class ComponentListener: EventListener {
    func onPositionDiscontinuity(oldPosition: Duration, newPosition: Duration) {
        showText("\(oldPosition.seconds) -> \(newPosition.seconds)")
    }
}

let componentListener = ComponentListener()

mediaPlayer.addEventListener(componentListener)
```
<br><br>
## onProgress()
```swift
func onProgress()
```
플레이어가 리소스를 읽을 때 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/details.md#progress">EventHandler.progress</a>
</div>

사용 예제
```swift
class ComponentListener: EventListener {
    func onProgress() {
        showProgressingText()
    }
}

let componentListener = ComponentListener()

mediaPlayer.addEventListener(componentListener)
```
<br><br>
## onRateChange(rate:)
```swift
func onRateChange(rate: Float)
```
재생 속도가 변경되는 시점에 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/details.md#ratechange">EventHandler.rateChange</a>
</div>

사용 예제
```swift
class ComponentListener: EventListener {
    func onRateChange(rate: Float) {
        displayPlaybackRate(rate)
    }
}

let componentListener = ComponentListener()

mediaPlayer.addEventListener(componentListener)
```
<br><br>
## onRepeatModeChange(mode:)
```swift
func onRepeatModeChange(mode: MediaPlayer.RepeatMode)
```
반복 모드가 설정되었을 때 실행합니다.
<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/details.md#repeatmodechange">EventHandler.repeatModeChange</a>
</div>

사용 예제
```swift
class ComponentListener: EventListener {
    func onRepeatModeChange(mode: MediaPlayer.RepeatMode) {
        switch mode {
        case .none: showNoRepeatIcon()
        case .one: showRepeatOneIcon()
        case .all: showRepeatAllIcon()
        }
    }
}

let componentListener = ComponentListener()

mediaPlayer.addEventListener(componentListener)
```
<br><br>
## onRepeatRangeChange(range:)
```swift
func onRepeatRangeChange(range: MediaPlayer.RepeatRange?)
```
구간 반복 모드가 시작되거나 종료되었을 때, 그리고 구간 반복의 시작 위치 또는 종료 위치가 바뀌었을 때 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/details.md#repeatrangechange">EventHandler.repeatRangeChange</a>
</div>

사용 예제
```swift
class ComponentListener: EventListener {
    func onRepeatRangeChange(range: MediaPlayer.RepeatRange?) {
        guard let repeatRange = range else {
            stopRepeatMode()
            return
        }
        resetRepeatMode(repeatRange)
    }
}

let componentListener = ComponentListener()

mediaPlayer.addEventListener(componentListener)
```
<br><br>
## onScalingModeChange(mode:)
```swift
func onScalingModeChange(mode: MediaPlayer.ScalingMode)
```
미디어 화면의 스케일링 상태가 변하는 시점에 실행합니다.
<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/details.md#scalingmodechange">EventHandler.scalingModeChange</a>
</div>

사용 예제
```swift
class ComponentListener: EventListener {
    func onScalingModeChange(mode: MediaPlayer.ScalingMode) {
        switch mode {
        case .aspectFit: asepectFit()
        case .aspectFill: aspectFill()
        case .fill: fill()
        }
    }
}

let componentListener = ComponentListener()

mediaPlayer.addEventListener(componentListener)
```
<br><br>
## onSeeked()
```swift
func onSeeked()
```
seek 작업이 완료된 시점, 또는 재생 위치가 변경되는 시점, 또는 seeking 값이 false로 변경되는 시점에 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/details.md#seeked">EventHandler.seeked</a>
</div>

사용 예제
```swift
class ComponentListener: EventListener {
    private weak var weakPlayer: MediaPlayer?

    init(_ player: MediaPlayer) { self.weakPlayer = player }

    func onSeeked() {
        guard let mediaPlayer = self.weakPlayer else { return }
        assert(!mediaPlayer.seeking)
    }
}

let componentListener = ComponentListener(mediaPlayer)

mediaPlayer.addEventListener(componentListener)
```
<br><br>
## onSeeking()
```swift
func onSeeking()
```
seek 작업이 시작되는 시점, 또는 seeking 값이 false에서 true로 변경되는 시점에 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/details.md#seeking">EventHandler.seeking</a>
</div>

사용 예제
```swift
class ComponentListener: EventListener {
    private weak var weakPlayer: MediaPlayer?

    init(_ player: MediaPlayer) { self.weakPlayer = player }

    func onSeeking() {
        guard let mediaPlayer = self.weakPlayer else { return }
        assert(mediaPlayer.seeking)
    }
}

let componentListener = ComponentListener(mediaPlayer)

mediaPlayer.addEventListener(componentListener)
```
<br><br>
## onTimeUpdate(position:)
```swift
func onTimeUpdate(position: Duration)
```
[currentTime](../../class/media-player/details.md#currenttime)이 변경되는 시점에 실행합니다. 즉, 미디어가 재생이 되는 동안 수행하려는 작업을 이곳에 구현하시면 됩니다.

<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/details.md#timeupdate">EventHandler.timeUpdate</a>
</div>

사용 예제
```swift
class ComponentListener: EventListener {
    func onTimeUpdate(position: Duration) {
        updateTimeBar(position)
        updateTimeLeft(position)
    }
}

let componentListener = ComponentListener()

mediaPlayer.addEventListener(componentListener)
```
<br><br>
## onVideoSizeChange(size:)
```swift
func onVideoSizeChange(size: CGSize)
```
미디어 아이템의 비디오 크기가 달라지는 시점에 실행합니다. 아이템을 교체하는 순간에는 (0.0, 0.0)의 값으로 바뀌는 것도 체크를 하니 참고하시기 바랍니다.

<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/details.md#videosizechange">EventHandler.videoSizeChange</a>
</div>

사용 예제
```swift
class ComponentListener: EventListener {
    func onVideoSizeChange(size: CGSize) {
        if size != .zero {
            let sizeText = "\(size.width)x\(size.height)"
        }
    }
}

let componentListener = ComponentListener()

mediaPlayer.addEventListener(componentListener)
```
<br><br>
## onVolumeChange(volume:muted:)
```swift
func onVolumeChange(volume: Float, muted: Bool)
```
볼륨이 변경되는 시점에 실행합니다.

<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/details.md#volumechange">EventHandler.volumeChange</a>
</div>

사용 예제
```swift
class ComponentListener: EventListener {
    func onVolumeChange(volume: Float, muted: Bool) {
        updateVolumeView(volume, muted)
    }
}

let componentListener = ComponentListener()

mediaPlayer.addEventListener(componentListener)
```
<br><br>
## onWaiting()
```swift
func onWaiting()
```
일시적인 버퍼 부족, 즉 데이터가 충분히 로딩되지 못하거나 데이터가 없어서 재생이 정지된 시점에 실행됩니다. [playbackState](../../enum/media-player-playback-state/home.md)가 .buffering이 될 때 호출됩니다.

<div align="right">
이벤트 핸들러: <a href="../../enum/event-handlers/details.md#waiting">EventHandler.waiting</a>
</div>

사용 예제
```swift
class ComponentListener: EventListener {
    func onWaiting() {
        displayPleaseWait()
    }
}

let componentListener = ComponentListener()

mediaPlayer.addEventListener(componentListener)
```
