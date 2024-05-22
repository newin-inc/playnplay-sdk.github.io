# 케이스

## durationChange

```swift
case durationChange((_ duration: Duration) -> Void)
```

| 파라미터 이름 | 타입 | 설명 |
|:--:|:--:|:--:|
|duration|[Duration](../../struct/duration/home.md)|미디어 길이|

미디어의 길이(duration)가 변경되었을 때를 처리하기 위한 핸들러입니다.
<div align="right">
이벤트 리스너: <a href="../../protocol/event-listeners/details.md#ondurationchangeduration">onDurationChange(duration:)</a><br>
참고: <a href="../../struct/duration/home.md">Duration</a>
</div>

<br><br>
## ended

```swift
case ended(() -> Void)
```
재생 목록의 마지막 미디어의 재생이 완료된 시점에 사용하기 위한 핸들러입니다.
<div align="right">
이벤트 리스너: <a href="../../protocol/event-listeners/details.md#onended">onEnded()</a>
</div>

<br><br>
## error

```swift
case error((_ error: Error) -> Void)
```

| 파라미터 이름 | 타입 | 설명 |
|:--:|:--:|:--:|
|error|[Error](https://developer.apple.com/documentation/swift/error)|에러|

에러가 발생할 때 사용하기 위한 핸들러입니다. 
<div align="right">
이벤트 리스너: <a href="../../protocol/event-listeners/details.md#onerrorerror">onError(error:)</a><br>
참고: <a href="https://developer.apple.com/documentation/swift/error">Error</a>, 
<a href="../media-player-error/home.md">MediaPlayerError</a>
</div>

<br><br>
## loadedData

```swift
case loadedData(() -> Void)
```
미디어 아이템이 로드되었을 때 사용하기 위한 핸들러입니다.
<div align="right">
이벤트 리스너: <a href="../../protocol/event-listeners/details.md#onloadeddata">onLoadedData()</a>
</div>

<br><br>
## loadStart

```swift
case loadStart(() -> Void)
```
미디어 리소스를 로딩하기 시작할 때 사용하기 위한 핸들러입니다.
<div align="right">
이벤트 리스너: <a href="../../protocol/event-listeners/details.md#onloadstart">onLoadStart()</a>
</div>

<br><br>
## mediaItemTransition

```swift
case mediaItemTransition((_ item: MediaItem?) -> Void)
```

| 파라미터 이름 | 타입 | 설명 |
|:--:|:--:|:--:|
|item|[MediaItem](../../struct/media-item/home.md)|교체된 미디어 아이템|

미디어 아이템이 교체 되는 시점에 사용하기 위한 핸들러입니다.
<div align="right">
이벤트 리스너: <a href="../../protocol/event-listeners/details.md#onmediaitemtransitionitem">onMediaItemTransition(item:)</a>,
참고: <a href="../../struct/media-item/home.md">MediaItem</a>
</div>

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

<br><br>
## pictureInPictureActiveChange

```swift
case pictureInPictureActiveChange((_ active: Bool) -> Void)
```

| 파라미터 이름 | 타입 | 설명 |
|:--:|:--:|:--:|
|active|Bool|현재 화면 속 화면 모드인 지 여부|

화면 속 화면 모드가 켜지거나 꺼지는 시점에 사용하기 위한 핸들러입니다.
<div align="right">
이벤트 리스너: <a href="../../protocol/event-listeners/details.md#onpictureinpictureactivechangeactive">onPictureInPictureActiveChange(active:)</a><br>
참고: <a href="#pictureinpicturedidstart">pictureInPictureDidStart</a>,
<a href="#pictureinpicturedidstop">pictureInPictureDidStop</a>,
<a href="#pictureinpicturewillstart">pictureInPictureWillStart</a>,   
<a href="#pictureinpicturewillstop">pictureInPictureWillStop</a><br>
</div>

<br><br>
## pictureInPicturePossibleChange

```swift
case pictureInPicturePossibleChange((_ possible: Bool) -> Void)
```

| 파라미터 이름 | 타입 | 설명 |
|:--:|:--:|:--:|
|possible|Bool|화면 속 화면 모드 사용 가능 여부|

화면 속 화면 모드를 사용할 수 있을 때, (혹은 반대의 경우에) 사용하기 위한 핸들러입니다. 예를 들면, 화면 속 화면 모드 버튼을 활성화 및 비활성화 하기 위해서는 이 핸들러가 필요합니다.
<div align="right">
이벤트 리스너: <a href="../../protocol/event-listeners/details.md#onpictureinpicturepossiblechangepossible">onPictureInPicturePossibleChange(possible:)</a>
</div>

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

<br><br>
## playbackFinish

```swift
case playbackFinish(
    (_ mediaItem: MediaItem, _ position: Duration, _ duration: Duration?) -> Void
)
```

| 파라미터 이름 | 타입 | 설명 |
|:--:|:--:|:--:|
|mediaItem|[MediaItem](../../struct/media-item/home.md)|종료된 미디어 아이템|
|position|[Duration](../../struct/duration/home.md)|마지막 재생 위치|
|duration|[Duration](../../struct/duration/home.md)|미디어 길이|

미디어가 종료될 때 사용하기 위한 핸들러입니다. 이 때 마지막 재생 위치(position)와 미디어의 길이(duration) 값을 사용할 수 있습니다. 주의할 점은, 미디어가 로드된 후에 종료될 때만 사용할 수 있다는 것입니다. 만약 미디어가 로드되기 전에 종료되는 상황에도 사용하려면, [Unload](#unload)를 참고하세요.

<div align="right">
이벤트 리스너: <a href="../../protocol/event-listeners/details.md#onplaybackfinishmediaitempositionduration">onPlaybackFinish(mediaItem:position:duration:)</a><br>
참고: <a href="#unload">Unload</a>, 
<a href="../../struct/media-item/home.md">MediaItem</a>, 
<a href="../../struct/duration/home.md">Duration</a>
</div>

<br><br>
## playbackStateChange

```swift
case playbackStateChange((_ state: MediaPlayer.PlaybackState) -> Void)
```

| 파라미터 이름 | 타입 | 설명 |
|:--:|:--:|:--:|
|state|[MediaPlayer.PlaybackState](../media-player-playback-state/home.md)|재생 상태|

미디어 로딩 상태에 따른 처리, 즉, 버퍼링인지 준비가 된 상태인지, 끝이 났는지, 플레이어를 종료하였는지 등의 상황에 따라 처리하기 위한 핸들러입니다. 상황에 따른 설명은 [playbackState](../media-player-playback-state/home.md)를 참고하세요.
<div align="right">
이벤트 리스너: <a href="../../protocol/event-listeners/details.md#onplaybackstatechangestate">onPlaybackStateChange(state:)</a><br>
참고: <a href="../media-player-playback-state/home.md">MediaPlayer.PlaybackState</a>
</div>

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

<br><br>
## positionDiscontinuity

```swift
case positionDiscontinuity(
    (_ oldPosition: Duration, _ newPosition: Duration) -> Void
)
```
| 파라미터 이름 | 타입 | 설명 |
|:--:|:--:|:--:|
|oldPosition|[Duration](../../struct/duration/home.md)|이전 재생 위치|
|newPosition|[Duration](../../struct/duration/home.md)|바뀐 재생 위치|

재생 위치가 변경되는 시점에 사용하기 위한 핸들러입니다. 이전 위치와 이동한 위치 모두 접근이 가능합니다.
<div align="right">
이벤트 리스너: <a href="../../protocol/event-listeners/details.md#onpositiondiscontinuityoldpositionnewposition">onPositionDiscontinuity(oldPosition:newPosition:)</a><br>
참고: <a href="../../struct/duration/home.md">Duration</a>
</div>

<br><br>
## progress

```swift
case progress(() -> Void)
```
플레이어가 리소스를 읽을 때 사용하기 위한 핸들러입니다. 
<div align="right">
이벤트 리스너: <a href="../../protocol/event-listeners/details.md#onprogress">onProgress()</a>
</div>

<br><br>
## rateChange

```swift
case rateChange((_ rate: Float) -> Void)
```
| 파라미터 이름 | 타입 | 설명 |
|:--:|:--:|:--:|
|rate|Float|재생 속도|

재생 속도가 변경되는 시점에 사용하기 위한 핸들러입니다.
<div align="right">
이벤트 리스너: <a href="../../protocol/event-listeners/details.md#onratechangerate">onRateChange(rate:)</a>
</div>

<br><br>
## repeatModeChange

```swift
case repeatModeChange((_ mode: MediaPlayer.RepeatMode) -> Void)
```
| 파라미터 이름 | 타입 | 설명 |
|:--:|:--:|:--:|
|mode|[MediaPlayer.RepeatMode](../media-player-repeat-mode/home.md)|반복 모드 종류|

반복 모드가 설정되었을 때 처리하기 위한 핸들러입니다.
<div align="right">
이벤트 리스너: <a href="../../protocol/event-listeners/details.md#onrepeatmodechangemode">onRepeatModeChange(mode:)</a><br>
참고: <a href="../media-player-repeat-mode/home.md">MediaPlayer.RepeatMode</a>
</div>

<br><br>
## repeatRangeChange

```swift
case repeatRangeChange((_ range: MediaPlayer.RepeatRange?) -> Void)
```
| 파라미터 이름 | 타입 | 설명 |
|:--:|:--:|:--:|
|range|[MediaPlayer.RepeatRange](../../struct/media-player-repeat-range/home.md)?|구간 반복에서의 구간|

구간 반복 모드가 시작되거나 종료되었을 때, 그리고 구간 반복의 시작 위치 또는 종료 위치가 바뀌었을 때를 처리하기 위한 핸들러입니다.
<div align="right">
이벤트 리스너: <a href="../../protocol/event-listeners/details.md#onrepeatrangechangerange">onRepeatRangeChange(range:)</a><br>
참고: <a href="../../struct/media-player-repeat-range/home.md">MediaPlayer.RepeatRange</a>
</div>

<br><br>
## scalingModeChange

```swift
case scalingModeChange((_ mode: MediaPlayer.ScalingMode) -> Void)
```
| 파라미터 이름 | 타입 | 설명 |
|:--:|:--:|:--:|
|mode|[MediaPlayer.ScalingMode](../media-player-scaling-mode/home.md)|화면 스케일링 상태|

미디어 화면의 스케일링 상태가 변하는 시점에 사용하기 위한 핸들러입니다.
<div align="right">
이벤트 리스너: <a href="../../protocol/event-listeners/details.md#onscalingmodechangemode">onScalingModeChange(mode:)</a><br>
참고: <a href="../media-player-scaling-mode/home.md">MediaPlayer.ScalingMode</a>
</div>

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

<br><br>
## textCueChange

```swift
case textCueChange((_ textCues: [TextTrack.Cue]) -> Void)
```
| 파라미터 이름 | 타입 | 설명 |
|:--:|:--:|:--:|
|textCues|\[[TextTrack.Cue](../../class/text-track/home.md#cue)\]|자막 큐들|

자막 큐가 변경되는 시점에 사용하기 위한 핸들러입니다.

<div align="right">
이벤트 리스너: <a href="../../protocol/event-listeners/details.md#oncuechangetextcues">onCueChange(textCues:)</a><br>
참고: <a href="../../class/text-track/home.md#texttrackcue">TextTrack.Cue</a>
</div>

<br><br>
## timeUpdate

```swift
case timeUpdate((_ position: Duration) -> Void)
```
| 파라미터 이름 | 타입 | 설명 |
|:--:|:--:|:--:|
|position|[Duration](../../struct/duration/home.md)|현재 재생 위치|

[currentTime](../../class/media-player/details.md#currenttime)이 변경되는 시점에 사용하기 위한 핸들러입니다. 즉, 미디어가 재생이 되는 동안 수행하려는 작업을 이곳에 구현하시면 됩니다.
<div align="right">
이벤트 리스너: <a href="../../protocol/event-listeners/details.md#ontimeupdateposition">onTimeUpdate(position:)</a><br>
참고: <a href="../../struct/duration/home.md">Duration</a>
</div>

<br><br>
## unload

```swift
case unload((_ mediaItem: MediaItem) -> Void)
)
```

| 파라미터 이름 | 타입 | 설명 |
|:--:|:--:|:--:|
|mediaItem|[MediaItem](../../struct/media-item/home.md)|종료된 미디어 아이템|

미디어가 제거된 시점, 즉, 미디어 주소가 변경되기 직전, 기존에 존재하던 미디어를 비울 때를 처리하기 위한 핸들러입니다.

<div align="right">
이벤트 리스너: <a href="../../protocol/event-listeners/details.md#onunloadmediaitem">onUnload(mediaItem:)</a><br>
참고: <a href="../../struct/media-item/home.md">MediaItem</a>
</div>

<br><br>
## videoSizeChange

```swift
case videoSizeChange((_ size: CGSize) -> Void)
```
| 파라미터 이름 | 타입 | 설명 |
|:--:|:--:|:--:|
|size|[CGSize](https://developer.apple.com/documentation/corefoundation/cgsize)|영상 사이즈|

미디어 아이템의 비디오 크기가 달라지는 시점에 사용하기 위한 핸들러입니다. 아이템을 교체하는 순간에는 (0.0, 0.0)의 값으로 바뀌는 것도 체크를 하니 참고하시기 바랍니다.
<div align="right">
이벤트 리스너: <a href="../../protocol/event-listeners/details.md#onvideosizechangesize">onVideoSizeChange(size:)</a><br>
참고: <a href="https://developer.apple.com/documentation/corefoundation/cgsize">CGSize</a>
</div>

<br><br>
## volumeChange

```swift
case volumeChange((_ volume: Float, _ muted: Bool) -> Void)
```
| 파라미터 이름 | 타입 | 설명 |
|:--:|:--:|:--:|
|volume|Float|디바이스 음량|
|muted|Bool|음소거 여부|

볼륨이 변경되는 시점에 사용하기 위한 핸들러입니다. 무음([muted](../../class/media-player/details.md#muted)) 상태가 변경될 때도 호출됩니다.

<div align="right">
이벤트 리스너: <a href="../../protocol/event-listeners/details.md#onvolumechangevolumemuted">onVolumeChange(volume:muted:)</a>
</div>

<br><br>
## waiting

```swift
case waiting(() -> Void)
```
일시적인 버퍼 부족, 즉 데이터가 충분히 로딩되지 못하거나 데이터가 없어서 재생이 정지된 시점에 사용하기 위한 핸들러입니다. [playbackState](../media-player-playback-state/home.md)가 .buffering이 될 때 호출됩니다.
<div align="right">
이벤트 리스너: <a href="../../protocol/event-listeners/details.md#onwaiting">onWaiting()</a>
</div>
