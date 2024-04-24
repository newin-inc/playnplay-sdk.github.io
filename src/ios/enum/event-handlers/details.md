# 케이스

## durationChange

```swift
case durationChange((_ duration: Duration) -> Void)
```
미디어의 길이(duration)가 변경되었을 때를 처리하기 위한 핸들러입니다.
<div align="right">
이벤트 리스너: <a href="../../protocol/event-listeners/details.md#ondurationchangeduration">onDurationChange(duration:)</a>
</div>

사용 예제
```swift
mediaPlayer.addEventHandler(
    .durationChange({ duration in 
        showDurationText(duration)
    })
)
```

<br><br>
## emptied

```swift
case emptied(() -> Void)
```
미디어가 제거된 시점, 즉, 미디어 주소가 변경되기 직전, 기존에 존재하던 미디어를 비울 때를 처리하기 위한 핸들러입니다.
<div align="right">
이벤트 리스너: <a href="../../protocol/event-listeners/details.md#onemptied">onEmptied()</a>
</div>

사용 예제
```swift
mediaPlayer.addEventHandler(
    .emptied({
        hideMedia()
    })
)
```

<br><br>
## ended

```swift
case ended(() -> Void)
```
재생 목록의 마지막 미디어의 재생이 완료된 시점에 사용하기 위한 핸들러입니다.
<div align="right">
이벤트 리스너: <a href="../../protocol/event-listeners/details.md#onended">onEnded()</a>
</div>

사용 예제
```swift
mediaPlayer.addEventHandler(
    .ended({
        finish()
    })
)
```

<br><br>
## error

```swift
case error((_ error: Error) -> Void)
```
에러가 발생할 때 사용하기 위한 핸들러입니다. 
<div align="right">
이벤트 리스너: <a href="../../protocol/event-listeners/details.md#onerrorerror">onError(error:)</a><br>
참고: <a href="https://developer.apple.com/documentation/swift/error">Error</a>, 
<a href="../../enum/media-player-error/home.md">MediaPlayerError</a>
</div>

사용 예제
```swift
mediaPlayer.addEventHandler(
    .error({ error in
        handleError(error)
    })
)
```

<br><br>
## loadedData

```swift
case loadedData(() -> Void)
```
미디어 아이템이 로드되었을 때 사용하기 위한 핸들러입니다.
<div align="right">
이벤트 리스너: <a href="../../protocol/event-listeners/details.md#onloadeddata">onLoadedData()</a>
</div>

사용 예제
```swift
mediaPlayer.addEventHandler(
    .loadedData({
        showPath(mediaPlayer.currentSrc)
    })
)
```

<br><br>
## loadStart

```swift
case loadStart(() -> Void)
```
미디어 리소스를 로드하기 시작할 때 사용하기 위한 핸들러입니다.
<div align="right">
이벤트 리스너: <a href="../../protocol/event-listeners/details.md#onloadstart">onLoadStart()</a>
</div>

사용 예제
```swift
mediaPlayer.addEventHandler(
    .loadStart({
        showLoadingIndicator()
    })
)
```

<br><br>
## mediaItemTransition

```swift
case mediaItemTransition((_ item: MediaItem?) -> Void)
```
미디어 아이템이 교체 되는 시점에 사용하기 위한 핸들러입니다.
<div align="right">
이벤트 리스너: <a href="../../protocol/event-listeners/details.md#onmediaitemtransitionitem">onMediaItemTransition(item:)</a>
</div>

사용 예제
```swift
mediaPlayer.addEventHandler(
    .mediaItemTransition({ item in
        if let mediaItem = item {
            let title = mediaItem.title
        }
    })
)
```

<br><br>
## pause

```swift
case pause(() -> Void)
```
미디어가 일시 정지 상태로 진입하는 시점에 사용하기 위한 핸들러입니다.
<div align="right">
이벤트 리스너: <a href="../../protocol/event-listeners/details.md#onpause">onPause()</a><br>
비교: <a href="#play">play</a>
</div>

사용 예제
```swift
mediaPlayer.addEventHandler(
    .pause({
        displayPlayIcon()
    })
)
```

<br><br>
## pictureInPictureActiveChange

```swift
case pictureInPictureActiveChange((_ active: Bool) -> Void)
```
화면 속 화면 모드가 켜지거나 꺼지는 시점에 사용하기 위한 핸들러입니다.
<div align="right">
이벤트 리스너: <a href="../../protocol/event-listeners/details.md#onpictureinpictureactivechangeactive">onPictureInPictureActiveChange(active:)</a><br>
참고: <a href="#pictureinpicturedidstart">pictureInPictureDidStart</a>,
<a href="#pictureinpicturedidstop">pictureInPictureDidStop</a>,
<a href="#pictureinpicturewillstart">pictureInPictureWillStart</a>,   
<a href="#pictureinpicturewillstop">pictureInPictureWillStop</a><br>
</div>

사용 예제
```swift
mediaPlayer.addEventHandler(
    .pictureInPictureActiveChange({ active in
        if active {
            handleEnterPipMode()
        } else {
            handleExitPipMode()
        }
    })
)
```

<br><br>
## pictureInPicturePossibleChange

```swift
case pictureInPicturePossibleChange((_ possible: Bool) -> Void)
```
화면 속 화면 모드를 사용할 수 있을 때, (혹은 반대의 경우에) 사용하기 위한 핸들러입니다. 예를 들면, 화면 속 화면 모드 버튼을 활성화 및 비활성화 하기 위해서는 이 핸들러가 필요합니다.
<div align="right">
이벤트 리스너: <a href="../../protocol/event-listeners/details.md#onpictureinpicturepossiblechangepossible">onPictureInPicturePossibleChange(possible:)</a>
</div>

사용 예제
```swift
mediaPlayer.addEventHandler(
    .pictureInPicturePossibleChange({ possible in
        if possible {
            showPipButton()	
        }
    })
)
```

<br><br>
## pictureInPictureDidStart

```swift
case pictureInPictureDidStart(() -> Void)
```
화면 속 화면 모드가 시작한 후 사용하기 위한 핸들러입니다.
<div align="right">
이벤트 리스너: <a href="../../protocol/event-listeners/details.md#onpictureinpicturedidstart">onPictureInPictureDidStart()</a>
</div>

화면 속 화면 모드로 들어가면, [pictureInPictureWillStart](#pictureinpicturewillstart) → [pictureInPictureActiveChange](#pictureinpictureactivechange)(true) → [pictureInPictureDidStart](#pictureinpicturedidstart)의 순서대로 호출됩니다.

사용 예제
```swift
mediaPlayer.addEventHandler(
    .pictureInPictureDidStart({
        displayPipModeStartText()
    })
)
```

<br><br>
## pictureInPictureDidStop

```swift
case pictureInPictureDidStop(() -> Void)
```
화면 속 화면 모드가 끝나고 난 후 사용하기 위한 핸들러입니다.
<div align="right">
이벤트 리스너: <a href="../../protocol/event-listeners/details.md#onpictureinpicturedidstop">onPictureInPictureDidStop()</a>
</div>

화면 속 화면 모드가 종료되면, [pictureInPictureWillStop](#pictureinpicturewillstop) → [pictureInPictureActiveChange](#pictureinpictureactivechange)(false) → [pictureInPictureDidStop](#pictureinpicturedidstop)의 순서대로 호출됩니다.

사용 예제
```swift
mediaPlayer.addEventHandler(
    .pictureInPictureDidStop({
        displayPipModeDoneText()
    })
)
```

<br><br>
## pictureInPictureWillStart

```swift
case pictureInPictureWillStart(() -> Void)
```
화면 속 화면 모드가 시작하기 직전에 사용하기 위한 핸들러입니다.
<div align="right">
이벤트 리스너: <a href="../../protocol/event-listeners/details.md#onpictureinpicturewillstart">onPictureInPictureWillStart()</a>
</div>

화면 속 화면 모드로 들어가면, [pictureInPictureWillStart](#pictureinpicturewillstart) → [pictureInPictureActiveChange](#pictureinpictureactivechange)(true) → [pictureInPictureDidStart](#pictureinpicturedidstart)의 순서대로 호출됩니다.

사용 예제
```swift
mediaPlayer.addEventHandler(
    .pictureInPictureWillStart({
        displayWaitForPipModeStart()
    })
)
```

<br><br>
## pictureInPictureWillStop

```swift
case pictureInPictureWillStop(() -> Void)
```
화면 속 화면 모드가 끝나기 직전애 사용하기 위한 핸들러입니다.
<div align="right">
이벤트 리스너: <a href="../../protocol/event-listeners/details.md#onpictureinpicturewillstop">onPictureInPictureWillStop()</a>
</div>

화면 속 화면 모드가 종료되면, [pictureInPictureWillStop](#pictureinpicturewillstop) → [pictureInPictureActiveChange](#pictureinpictureactivechange)(false) → [pictureInPictureDidStop](#pictureinpicturedidstop)의 순서대로 호출됩니다.

사용 예제
```swift
mediaPlayer.addEventHandler(
    .pictureInPictureWillStop({
        displayWaitForPipModeDone()
    })
)
```

<br><br>
## play

```swift
case play(() -> Void)
```
미디어가 일시 정지 상태에서 재생 상태로 변경되는 시점에 사용하기 위한 핸들러입니다.
사용자가 재생 버튼을 클릭하거나 mediaPlayer.play()를 호출하는 등 플레이어에 재생 명령을 내렸을 때 등과 같이 명령을 했을 때 상황에서 이벤트 처리를 여기서 할 수 있습니다.
play와 관련된 이벤트 핸들러가 호출된 이후에 playing 이벤트 핸들러는 언제나 호출됩니다.
재생 중에 미디어를 이동하든지 재생 위치를 이동하면, 언제나 pause -> play -> playing 순서로 호출됩니다.
<div align="right">
이벤트 리스너: <a href="../../protocol/event-listeners/details.md#onplay">onPlay()</a><br>
비교: <a href="#pause">pause</a><br>
참고: <a href="#playing">playing</a>
</div>

사용 예제
```swift
mediaPlayer.addEventHandler(
    .play({
        displayPauseIcon()
    })
)
```

<br><br>
## playbackStateChange

```swift
case playbackStateChange((_ state: MediaPlayer.PlaybackState) -> Void)
```
미디어 로딩 상태에 따른 처리, 즉, 버퍼링인지 준비가 된 상태인지, 끝이 났는지, 플레이어를 종료하였는지 등의 상황에 따라 처리하기 위한 핸들러입니다.
<div align="right">
이벤트 리스너: <a href="../../protocol/event-listeners/details.md#onplaybackstatechangestate">onPlaybackStateChange(state:)</a><br>
참고: <a href="../../enum/media-player-playback-state/home.md">PlaybackState</a>
</div>

사용 예제
```swift
mediaPlayer.addEventHandler(
    .playbackStateChange({ state in
        switch state {
        case .idle: handleIdleState()
        case .ready: handleReadyState()
        case .buffering: handleBufferingState()
        case .ended: handleEndedState()
        }
    })
)
```

<br><br>
## playing

```swift
case playing(() -> Void)
```
미디어가 재생 상태로 변한 직후에 사용하기 위한 핸들러입니다.
playing과 관련된 이벤트 핸들러는 play 이벤트 이후에 항상 호출됩니다.
<div align="right">
이벤트 리스너: <a href="../../protocol/event-listeners/details.md#onplaying">onPlaying()</a><br>
참고: <a href="#play">play</a>
</div>

사용 예제
```swift
mediaPlayer.addEventHandler(
    .playing({
        removeBufferingText()   // 버퍼링 텍스트 제거
    })
)

mediaPlayer.addEventHandler(
    .play({
        displayPauseIcon()  // 아이콘 변경
    })
)

mediaPlayer.play()  // 아이콘을 변경 한 후, 버퍼링 텍스트를 제거합니다.
```

<br><br>
## positionDiscontinuity

```swift
case positionDiscontinuity(
    (_ oldPosition: Duration, _ newPosition: Duration) -> Void
)
```
재생 위치가 변경되는 시점에 사용하기 위한 핸들러입니다. 이전 위치와 이동한 위치 모두 접근이 가능합니다.
<div align="right">
이벤트 리스너: <a href="../../protocol/event-listeners/details.md#onpositiondiscontinuityoldpositionnewposition">onPositionDiscontinuity(oldPosition:newPosition:)</a>
</div>

사용 예제
```swift
mediaPlayer.addEventHandler(
    .positionDiscontinuity({ oldPosition, newPosition in
        showText("\(oldPosition.seconds) -> \(newPosition.seconds)")
    })
)
```

<br><br>
## progress

```swift
case progress(() -> Void)
```
플레이어가 리소스를 읽을 때 사용하기 위한 핸들러입니다. 
<div align="right">
이벤트 리스너: <a href="../../protocol/event-listeners/details.md#onprogress">onProgress()</a>
</div>

사용 예제
```swift
mediaPlayer.addEventHandler(
    .progress({
        showProgressingText()
    })
)
```

<br><br>
## rateChange

```swift
case rateChange((_ rate: Float) -> Void)
```
재생 속도가 변경되는 시점에 사용하기 위한 핸들러입니다.
<div align="right">
이벤트 리스너: <a href="../../protocol/event-listeners/details.md#onratechangerate">onRateChange(rate:)</a>
</div>

사용 예제
```swift
mediaPlayer.addEventHandler(
    .rateChange({ rate in
        displayPlaybackRate(rate)
    })
)
```

<br><br>
## repeatModeChange

```swift
case repeatModeChange((_ mode: MediaPlayer.RepeatMode) -> Void)
```
반복 모드가 설정되었을 때 처리하기 위한 핸들러입니다.
<div align="right">
이벤트 리스너: <a href="../../protocol/event-listeners/details.md#onrepeatmodechangemode">onRepeatModeChange(mode:)</a><br>
참고: <a href="../../enum/media-player-repeat-mode/home.md">RepeatMode</a>
</div>

사용 예제
```swift
mediaPlayer.addEventHandler(
    .repeatModeChange({ mode in
        switch mode {
        case .none: showNoRepeatIcon()
        case .one: showRepeatOneIcon()
        case .all: showRepeatAllIcon()
        }
    })
)
```

<br><br>
## repeatRangeChange

```swift
case repeatRangeChange((_ range: MediaPlayer.RepeatRange?) -> Void)
```
구간 반복 모드가 시작되거나 종료되었을 때, 그리고 구간 반복의 시작 위치 또는 종료 위치가 바뀌었을 때를 처리하기 위한 핸들러입니다.
<div align="right">
이벤트 리스너: <a href="../../protocol/event-listeners/details.md#onrepeatrangechangerange">onRepeatRangeChange(range:)</a><br>
참고: <a href="../../struct/media-player-repeat-range/home.md">RepeatRange</a>
</div>

사용 예제
```swift
mediaPlayer.addEventHandler(
    .repeatRangeChange({ range in 
        guard let repeatRange = range else {
            stopRepeatMode()
            return
        }
        resetRepeatMode(repeatRange)
    })
)
```

<br><br>
## scalingModeChange

```swift
case scalingModeChange((_ mode: MediaPlayer.ScalingMode) -> Void)
```
미디어 화면의 스케일링 상태가 변하는 시점에 사용하기 위한 핸들러입니다.
<div align="right">
이벤트 리스너: <a href="../../protocol/event-listeners/details.md#onscalingmodechangemode">onScalingModeChange(mode:)</a><br>
참고: <a href="../../enum/media-player-scaling-mode/home.md">ScalingMode</a>
</div>

사용 예제
```swift
mediaPlayer.addEventHandler(
    .scalingModeChange({ mode in
        switch mode {
        case .aspectFit: asepectFit()
        case .aspectFill: aspectFill()
        case .fill: fill()
        }
    })
)
```

<br><br>
## seeked

```swift
case seeked(() -> Void)
```
seek 작업이 완료된 시점, 또는 재생 위치가 변경되는 시점, 또는 seeking 값이 false로 변경되는 시점에 사용하기 위한 핸들러입니다.
<div align="right">
이벤트 리스너: <a href="../../protocol/event-listeners/details.md#onseeked">onSeeked()</a><br>
비교: <a href="#seeking">seeking</a>
</div>

사용 예제
```swift
mediaPlayer.addEventHandler(
    .seeked({
        assert(!mediaPlayer.seeking)
    })
)
```

<br><br>
## seeking

```swift
case seeking(() -> Void)
```
seek 작업이 시작되는 시점, 또는 seeking 값이 false에서 true로 변경되는 시점에 사용하기 위한 핸들러입니다.
<div align="right">
이벤트 리스너: <a href="../../protocol/event-listeners/details.md#onseeking">onSeeking()</a><br>
비교: <a href="#seeked">seeked</a>
</div>

사용 예제
```swift
mediaPlayer.addEventHandler(
    .seeking({
        assert(mediaPlayer.seeking)
    })
)
```

<br><br>
## textCueChange

```swift
case textCueChange((_ textCues: [TextTrack.Cue]) -> Void)
```
자막 큐가 변경되는 시점에 사용하기 위한 핸들러입니다.

<div align="right">
이벤트 리스너: <a href="../../protocol/event-listeners/details.md#oncuechangetextcues">onCueChange(textCues:)</a>
</div>

사용 예제
```swift
mediaPlayer.addEventHandler(
    .textCueChange({ textCues in
        display(textCues)
    })
)
```

<br><br>
## timeUpdate

```swift
case timeUpdate((_ position: Duration) -> Void)
```
[currentTime](../../class/media-player/details.md#currenttime)이 변경되는 시점에 사용하기 위한 핸들러입니다. 즉, 미디어가 재생이 되는 동안 수행하려는 작업을 이곳에 구현하시면 됩니다.
<div align="right">
이벤트 리스너: <a href="../../protocol/event-listeners/details.md#ontimeupdateposition">onTimeUpdate(position:)</a>
</div>

사용 예제
```swift
mediaPlayer.addEventHandler(
    .timeUpdate({ position
        updateTimeBar(position)
        updateTimeLeft(position)
    })
)
```

<br><br>
## videoSizeChange

```swift
case videoSizeChange((_ size: CGSize) -> Void)
```
미디어 아이템의 비디오 크기가 달라지는 시점에 사용하기 위한 핸들러입니다. 아이템을 교체하는 순간에는 (0.0, 0.0)의 값으로 바뀌는 것도 체크를 하니 참고하시기 바랍니다.
<div align="right">
이벤트 리스너: <a href="../../protocol/event-listeners/details.md#onvideosizechangesize">onVideoSizeChange(size:)</a>
</div>

사용 예제
```swift
mediaPlayer.addEventHandler(
    .videoSizeChange({ size in
        if size != .zero {
            let sizeText = "\(size.width)x\(size.height)"
        }
    })
)
```

<br><br>
## volumeChange

```swift
case volumeChange((_ volume: Float, _ muted: Bool) -> Void)
```
볼륨이 변경되는 시점에 사용하기 위한 핸들러입니다.
<div align="right">
이벤트 리스너: <a href="../../protocol/event-listeners/details.md#onvolumechangevolumemuted">onVolumeChange(volume:muted:)</a>
</div>

사용 예제
```swift
mediaPlayer.addEventHandler(
    .volumeChange({ volume, muted in
        updateVolumeView(volume, muted)
    })
)
```

<br><br>
## waiting

```swift
case waiting(() -> Void)
```
일시적인 버퍼 부족, 즉 데이터가 충분히 로딩되지 못하거나 데이터가 없어서 재생이 정지된 시점에 사용하기 위한 핸들러입니다. [playbackState](../../enum/media-player-playback-state/home.md)가 .buffering이 될 때 호출됩니다.
<div align="right">
이벤트 리스너: <a href="../../protocol/event-listeners/details.md#onwaiting">onWaiting()</a>
</div>


사용 예제
```swift
mediaPlayer.addEventHandler(
    .waiting({
	    displayPleaseWait()
    })
)
```
