# durationChange

EventHandler.durationChange는 미디어의 길이(duration)가 변경되었을 때를 처리하기 위한 핸들러입니다.
<div aligh="right">
이벤트 리스너: <a href="../event_listeners/details.md#ondurationchange">onDurationChange(duration:)</a>
</div>

```swift
case durationChange((_ duration: Duration) -> Void)
```

사용 예제
```swift
mediaPlayer.addEventHandler(
    EventHandler.durationChange({ duration in 
        showDurationText(duration)
    }
)
```

<br><br><br><br>

--------
# emptied

EventHandler.emptied는 미디어가 제거된 시점, 즉, 미디어 주소가 변경되기 직전, 기존에 존재하던 미디어를 비울 때를 처리하기 위한 핸들러입니다.
<div aligh="right">
이벤트 리스너: <a href="../event_listeners/details.md#onemptied">onEmptied()</a>
</div>

```swift
case emptied(() -> Void)
```

사용 예제
```swift
mediaPlayer.addEventHandler(
    EventHandler.emptied({
        hideMedia()
    })
)
```

<br><br><br><br>

--------
# ended

EventHandler.ended는 재생 목록의 마지막 미디어의 재생이 완료된 시점에 사용하기 위한 핸들러입니다.
<div aligh="right">
이벤트 리스너: <a href="../event_listeners/details.md#onended">onEnded()</a>
</div>

```swift
case ended(() -> Void)
```

사용 예제
```swift
mediaPlayer.addEventHandler(
    EventHandler.ended({
        finish()
    })
)
```

<br><br><br><br>

--------
# error

EventHandler.error는 에러가 발생할 때 사용하기 위한 핸들러입니다. 
<div aligh="right">
이벤트 리스너: <a href="../event_listeners/details.md#onerror">onError(error:)</a><br>
참고: <a href="https://developer.apple.com/documentation/swift/error">Error</a>
</div>

```swift
case error((_ error: Error) -> Void)
```

사용 예제
```swift
mediaPlayer.addEventHandler(
    EventHandler.error({ error in
        handleError(error)
    })
)
```

<br><br><br><br>

--------
# loadedData

EventHandler.loadedData는 미디어 아이템이 로드되었을 때 사용하기 위한 핸들러입니다.
<div aligh="right">
이벤트 리스너: <a href="../event_listeners/details.md#onloadeddata">onLoadedData()</a>
</div>

```swift
case loadedData(() -> Void)
```

사용 예제
```swift
mediaPlayer.addEventHandler(
    EventHandler.loadedData({
        showPath(mediaPlayer.currentSrc)
    })
)
```

<br><br><br><br>

--------
# loadStart

EventHandler.loadStart는 미디어 리소스를 로드하기 시작할 때 사용하기 위한 핸들러입니다.
<div aligh="right">
이벤트 리스너: <a href="../event_listeners/details.md#onloadstart">onLoadStart()</a>
</div>

```swift
case loadStart(() -> Void)
```

사용 예제
```swift
mediaPlayer.addEventHandler(
    EventHandler.loadStart({
        showLoadingIndicator()
    })
)
```

<br><br><br><br>

--------
# mediaItemTransition

EventHandler.mediaItemTransition는 미디어 아이템이 교체 되는 시점에 사용하기 위한 핸들러입니다.
<div aligh="right">
이벤트 리스너: <a href="../event_listeners/details.md#onmediaitemtransitionitem">onMediaItemTransition(item:)</a>
</div>

```swift
case mediaItemTransition((_ item: MediaItem?) -> Void)
```

사용 예제
```swift
mediaPlayer.addEventHandler(
    EventHandler.mediaItemTransition({ item in
        if let mediaItem = item {
            let title = mediaItem.title
        }
    })
)
```

<br><br><br><br>

--------
# pause

EventHandler.pause는 미디어가 일시 정지 상태로 진입하는 시점에 사용하기 위한 핸들러입니다.
<div aligh="right">
이벤트 리스너: <a href="../event_listeners/details.md#onpause">onPause()</a>
비교: <a href="#play">play</a>
</div>

```swift
case pause(() -> Void)
```

사용 예제
```swift
mediaPlayer.addEventHandler(
    EventHandler.pause({
        displayPlayIcon()
    })
)
```

<br><br><br><br>

--------
# pictureInPictureActiveChange

EventHandler.pictureInPictureActiveChange는 화면 속 화면 모드가 켜지거나 꺼지는 시점에 사용하기 위한 핸들러입니다.
<div aligh="right">
이벤트 리스너: <a href="../event_listeners/details.md#onpictureinpictureactivechangeactive">onPictureInPictureActiveChange(active:)</a><br>
참고: <a href="#pictureinpicturedidwillstartstop">pictureInPictureDid(Will)Start(Stop)</a>
</div>

```swift
case pictureInPictureActiveChange((_ active: Bool) -> Void)
```

사용 예제
```swift
mediaPlayer.addEventHandler(
    EventHandler.pictureInPictureActiveChange({ active in
        if active {
        handleEnterPipMode()
        } else {
            handleExitPipMode()
        }
    })
)
```

<br><br><br><br>

--------
# pictureInPicturePossibleChange

EventHandler.pictureInPicturePossibleChange는 화면 속 화면 모드를 사용할 수 있을 때, (혹은 반대의 경우에) 사용하기 위한 핸들러입니다. 예를 들면, 화면 속 화면 모드 버튼을 활성화 및 비활성화 하기 위해서는 이 핸들러가 필요합니다.
<div aligh="right">
이벤트 리스너: <a href="../event_listeners/details.md#onpictureinpicturepossiblechangepossible">onPictureInPicturePossibleChange(possible:)</a>
</div>

```swift
case pictureInPicturePossibleChange((_ possible: Bool) -> Void)
```

사용 예제
```swift
mediaPlayer.addEventHandler(
    EventHandler.pictureInPicturePossibleChange({ possible in
        if possible {
            showPipButton()	
        }
    })
)
```

<br><br><br><br>

--------
# pictureInPictureDid(Will)Start(Stop)

EventHandler.pictureInPictureDidStart, EventHandler.pictureInPictureDidStop, EventHandler.pictureInPictureWillStart, EventHandler.pictureInPictureWillStop은 화면 속 화면 모드 전환 과정에 좀더 세분화하여 사용하기 위한 핸들러입니다.
<div aligh="right">
이벤트 리스너: <a href="../event_listeners/details.md#onpictureinpicturedidwillstartstop">onPictureInPictureDid(Will)Start(Stop)()</a>
</div>

```swift
case pictureInPictureDidStart(() -> Void)
case pictureInPictureDidStop(() -> Void)
case pictureInPictureWillStart(() -> Void)
case pictureInPictureWillStop(() -> Void
```

화면 속 화면 모드로 들어가면, pictureInPictureWillStart → [pictureInPictureActiveChange](#pictureinpictureactivechange)(true) → pictureInPictureDidStart의 순서대로, 화면 속 화면 모드가 종료되면, pictureInPictureWillStop → [pictureInPictureActiveChange](#pictureinpictureactivechange)(false) → pictureInPictureDidStop의 순서대로 호출됩니다.

<br><br><br><br>

--------
# play

EventHandler.play는 미디어가 일시 정지 상태에서 재생 상태로 변경되는 시점에 사용하기 위한 핸들러입니다.
사용자가 재생 버튼을 클릭하거나 mediaPlayer.play()를 호출하는 등 플레이어에 재생 명령을 내렸을  때 등과 같이 명령을 했을 때 상황에서 이벤트 처리를 여기서 할 수 있습니다.
play와 관련된 이벤트 핸들러가 호출된 이후에 playing 이벤트 핸들러는 언제나 호출됩니다.
재생 중에 미디어를 이동하든지 재생 위치를 이동하면, 언제나 pause -> play -> playing 순서로 호출됩니다.
<div aligh="right">
이벤트 리스너: <a href="">onPlay()</a>
비교: <a href="">pause</a>
참고: <a href="">playing</a>
</div>

```swift
case play(() -> Void)
```

사용 예제
```swift
mediaPlayer.addEventHandler(
EventHandler.play({
	displayPauseIcon()
})
)
```

<br><br><br><br>

--------
# playbackStateChange

EventHandler.playbackStateChange는 미디어 로딩 상태에 따른 처리, 즉, 버퍼링인지 준비가 된 상태인지, 끝이 났는지, 플레이어를 종료하였는지 등의 상황에 따라 처리하기 위한 핸들러입니다.
<div aligh="right">
이벤트 리스너: <a href="">onPlaybackStateChange(state:)</a>
참고: <a href="">PlaybackState</a>
</div>

```swift
case playbackStateChange((_ state: MediaPlayer.PlaybackState) -> Void)
```

사용 예제
```swift
mediaPlayer.addEventHandler(
EventHandler.playbackStateChange({ state in
switch state {
case .idle: handleIdleState()
case .ready: handleReadyState()
case .buffering: handleBufferingState()
case .ended: handleEndedState()
}
})
)
```

<br><br><br><br>

--------
# playing

EventHandler.playing은 미디어가 재생 상태로 변한 직후에 사용하기 위한 핸들러입니다.
playing과 관련된 이벤트 핸들러는 play 이벤트 이후에 항상 호출됩니다.
<div aligh="right">
이벤트 리스너: <a href="">onPlaying()</a>
참고: <a href="">play</a>
</div>

```swift
case playing(() -> Void)
```

사용 예제
```swift
mediaPlayer.addEventHandler(
EventHandler.playing({
	removeBufferingText()	// 버퍼링 텍스트 제거
})
)

mediaPlayer.addEventHandler(
EventHandler.play({
	displayPauseIcon()		// 아이콘 변경
})
)

mediaPlayer.play() 			// 아이콘을 변경 한 후, 버퍼링 텍스트를 제거합니다.
```

<br><br><br><br>

--------
# positionDiscontinuity

EventHandler.positionDiscontinuity는 재생 위치가 변경되는 시점에 사용하기 위한 핸들러입니다. 이전 위치와 이동한 위치 모두 접근이 가능합니다.
<div aligh="right">
이벤트 리스너: <a href="">onPositionDiscontinuity(oldPosition:newPosition:)</a>
</div>

```swift
case positionDiscontinuity(
(_ oldPosition: Duration, _ newPosition: Duration) -> Void
)
```

사용 예제
```swift
mediaPlayer.addEventHandler(
EventHandler.positionDiscontinuity({ oldPosition, newPosition in
showText("\(oldPosition.seconds) -> \(newPosition.seconds)")
})
)
```

<br><br><br><br>

--------
# progress

EventHandler.progress는 플레이어가 리소스를 읽을 때 사용하기 위한 핸들러입니다. 
<div aligh="right">
이벤트 리스너: <a href="">onProgress()</a>
</div>

```swift
case progress(() -> Void)
```

사용 예제
```swift
mediaPlayer.addEventHandler(
EventHandler.progress({
	showProgressingText()
})
)
```

<br><br><br><br>

--------
# rateChange

EventHandler.rateChange는 재생 속도가 변경되는 시점에 사용하기 위한 핸들러입니다.
<div aligh="right">
이벤트 리스너: <a href="">onRateChange(rate:)</a>
</div>

```swift
case rateChange((_ rate: Float) -> Void)
```

사용 예제
```swift
mediaPlayer.addEventHandler(
EventHandler.rateChange({ rate in
displayPlaybackRate(rate)
})
)
```

<br><br><br><br>

--------
# repeatModeChange

EventHandler.repeatModeChange 반복 모드가 설정되었을 때 처리하기 위한 핸들러입니다.
<div aligh="right">
이벤트 리스너: <a href="">onRepeatModeChange(mode:)</a>
참고: <a href="">RepeatMode</a>
</div>

```swift
case repeatModeChange((_ mode: MediaPlayer.RepeatMode) -> Void)
```

사용 예제
```swift
mediaPlayer.addEventHandler(
EventHandler.repeatModeChange({ mode in
switch mode {
case .none: showNoRepeatIcon()
case .one: showRepeatOneIcon()
case .all: showRepeatAllIcon()
}
})
)
```

<br><br><br><br>

--------
# repeatRangeChange

EventHandler.repeatRangeChange는 구간 반복 모드가 시작되거나 종료되었을 때, 그리고 구간 반복의 시작 위치 또는 종료 위치가 바뀌었을 때를 처리하기 위한 핸들러입니다.
<div aligh="right">
이벤트 리스너: <a href="">onRepeatRangeChange(range:)</a>
참고: <a href="">RepeatRange</a>
</div>

```swift
case repeatRangeChange((_ range: MediaPlayer.RepeatRange?) -> Void)
```

사용 예제
```swift
mediaPlayer.addEventHandler(
EventHandler.repeatRangeChange({ range in 
guard let repeatRange = range else {
stopRepeatMode()
return
}
resetRepeatMode(repeatRange)
})
)
```

<br><br><br><br>

--------
# scalingModeChange

EventHandler.scalingModeChange는 미디어 화면의 스케일링 상태가 변하는 시점에 사용하기 위한 핸들러입니다.
<div aligh="right">
이벤트 리스너: <a href="">onScalingModeChange(mode:)</a>
참고: <a href="">ScalingMode</a>
</div>

```swift
case scalingModeChange((_ mode: MediaPlayer.ScalingMode) -> Void)
```

사용 예제
```swift
mediaPlayer.addEventHandler(
    EventHandler.scalingModeChange({ mode in
        switch mode {
            case .aspectFit: asepectFit()
            case .aspectFill: aspectFill()
            case .fill: fill()
        }
    })
)
```

<br><br><br><br>

--------
# seeked

EventHandler.seeked는 seek 작업이 완료된 시점, 또는 재생 위치가 변경되는 시점, 또는 seeking 값이 false로 변경되는 시점에 사용하기 위한 핸들러입니다.
<div aligh="right">
이벤트 리스너: <a href="../event_listeners/details.md#onseeked">onSeeked()</a>
비교: <a href="#seeking">seeking</a>
</div>

```swift
case seeked(() -> Void)
```

사용 예제
```swift
mediaPlayer.addEventHandler(
    EventHandler.seeked({
        assert(!mediaPlayer.seeking)
    })
)
```

<br><br><br><br>

--------
# seeking

EventHandler.seeking은 seek 작업이 시작되는 시점, 또는 seeking 값이 false에서 true로 변경되는 시점에 사용하기 위한 핸들러입니다.
<div aligh="right">
이벤트 리스너: <a href="../event_listeners/details.md#onseeking">onSeeking()</a>
비교: <a href="#seeked">seeked</a>
</div>

```swift
case seeking(() -> Void)
```

사용 예제
```swift
mediaPlayer.addEventHandler(
    EventHandler.seeking({
        assert(mediaPlayer.seeking)
    })
)
```

<br><br><br><br>

--------
# timeUpdate

EventHandler.timeUpdate는 currentTime이 변경되는 시점에 사용하기 위한 핸들러입니다. 즉, 미디어가 재생이 되는 동안 수행하려는 작업을 이곳에 구현하시면 됩니다.
<div aligh="right">
이벤트 리스너: <a href="../event_listeners/details.md#ontimeupdateposition">onTimeUpdate(position:)</a>
</div>

```swift
case timeUpdate((_ position: Duration) -> Void)
```

사용 예제
```swift
mediaPlayer.addEventHandler(
    EventHandler.timeUpdate({ position
        updateTimeBar(position)
        updateTimeLeft(position)
    })
)
```

<br><br><br><br>

--------
# videoSizeChange

EventHandler.videoSizeChange는 미디어 아이템의 비디오 크기가 달라지는 시점에 사용하기 위한 핸들러입니다. 아이템을 교체하는 순간에는 (0.0, 0.0)의 값으로 바뀌는 것도 체크를 하니 참고하시기 바랍니다.
<div aligh="right">
이벤트 리스너: <a href="../event_listeners/details.md#onvideosizechangesize">onVideoSizeChange(size:)</a>
</div>

```swift
case videoSizeChange((_ size: CGSize) -> Void)
```

사용 예제
```swift
mediaPlayer.addEventHandler(
    EventHandler.videoSizeChange({ size in
        if size != .zero {
            let sizeText = "\(size.width)x\(size.height)"
        }
    })
)
```

<br><br><br><br>

--------
# volumeChange

EventHandler.volumeChange는 볼륨이 변경되는 시점에 사용하기 위한 핸들러입니다.
<div aligh="right">
이벤트 리스너: <a href="../event_listeners/details.md#onvolumechangevolumemuted">onVolumeChange(volume:muted:)</a>
</div>

```swift
case volumeChange((_ volume: Float, _ muted: Bool) -> Void)
```

사용 예제
```swift
mediaPlayer.addEventHandler(
    EventHandler.volumeChange({ volume, muted in
        updateVolumeView(volume, muted)
    })
)
```

<br><br><br><br>

--------
# waiting

EventHandler.waiting은 일시적인 버퍼 부족, 즉 데이터가 충분히 로딩되지 못하거나 데이터가 없어서 재생이 정지된 시점에 사용하기 위한 핸들러입니다. playbackState가 .buffering이 될 때 호출됩니다.
<div aligh="right">
이벤트 리스너: <a href="../event_listeners/details.md#onwaiting">onWaiting()</a>
</div>

```swift
case waiting(() -> Void)
```

사용 예제
```swift
mediaPlayer.addEventHandler(
    EventHandler.waiting({
	    displayPleaseWait()
    })
)
```
