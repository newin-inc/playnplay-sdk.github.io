# MediaPlayer

MediaPlayer는 미디어 관련 확장성을 제공하기 위해 [Player](https://developer.android.com/reference/androidx/media3/common/Player)에 속성(Properties)과 메서드(Methods)를 추가한 인터페이스입니다. 추가된 항목은 아래를 참고하십시오.

<details>
<summary>
    <a href="./properties/home.md">속성</a>
</summary>

- [var autoplay: Boolean](./properties/details.md#autoplay)

- [val buffered: TimeRanges](./properties/details.md#buffered)

- [val currentMediaItem: MediaItem](./properties/details.md#currentmediaitem)

- [val currentMediaItemIndex: Int](./properties/details.md#currentmediaitemindex)

- [val currentSrc: Uri?](./properties/details.md#currentsrc)

- [var currentTime: Duration](./properties/details.md#currenttime)

- [var defaultMuted: Boolean](./properties/details.md#defaultmuted)

- [var defaultPlaybackRate: Float](./properties/details.md#defaultplaybackrate)

- [var deviceVolume: Float](./properties/details.md#devicevolume)

- [val duration: Duration](./properties/details.md#duration)

- [val ended: Boolean](./properties/details.md#ended)

- [val error: PlaybackException?](./properties/details.md#error)

- [var loop: Boolean](./properties/details.md#loop)

- [val mediaItems: List<MediaItem>](./properties/details.md#mediaitems)

- [var muted: Boolean](./properties/details.md#muted)

- [val paused: Boolean](./properties/details.md#paused)

- [var playbackRate: Float](./properties/details.md#playbackrate)

- [var preservesPitch: Boolean](./properties/details.md#preservespitch)

- [var repeatRange: RepeatRange?](./properties/details.md#repeatrange)

- [var resizeMode: @ResizeMode Int](./properties/details.md#resizemode)

- [val seeking: Boolean](./properties/details.md#seeking)

</details>
<br>

<details>
<summary>
    <a href="./methods/home.md">메서드</a>
</summary>

- [fun fastSeek(to: Duration)](./methods/details.md#fastseek)

- [fun load(uri: String)](./methods/details.md#load)

- [fun load(uri: Uri)](./methods/details.md#load-1)

- [fun load(mediaItem: MediaItem)](./methods/details.md#load-2)

- [fun load(mediaItems: List<MediaItem>)](./methods/details.md#load-3)

- [fun pause()](./methods/details.md#pause)

- [fun play()](./methods/details.md#play)

- [fun prepare()](./methods/details.md#prepare)

- [fun release()](./methods/details.md#release)

- [fun seekBack(increment: Duration)](./methods/details.md#seekback)

- [fun seekForward(increment: Duration)](./methods/details.md#seekforward)

- [fun seekTo(position: Duration, force: Boolean)](./methods/details.md#seekto)

- [fun addEventHandler(handler: EventHandler): EventHandler](./methods/details.md#addeventhandler)

- [fun removeEventHandler(handler: EventHandler)](./methods/details.md#removeeventhandler)

- [fun addEventListener(listener: EventListener)](./methods/details.md#addeventlistener)

- [fun removeEventListener(listener: EventListener)](./methods/details.md#removeeventlistener)

</details>
<br>

<details>
<summary>
    <a href="./event_handlers/home.md">이벤트 핸들러</a>
</summary>

- [DurationChange](./event_handlers/details.md#durationchange)

- [Emptied](./event_handlers/details.md#emptied)

- [Ended](./event_handlers/details.md#ended)

- [Error](./event_handlers/details.md#error)

- [LoadedData](./event_handlers/details.md#loadeddata)

- [LoadedMetadata](./event_handlers/details.md#loadedmetadata)

- [LoadStart](./event_handlers/details.md#loadstart)

- [MediaItemTransition](./event_handlers/details.md#mediaitemtransition)

- [Pause](./event_handlers/details.md#pause)

- [Play](./event_handlers/details.md#play)

- [PlaybackStateChange](./event_handlers/details.md#playbackstatechange)

- [Playing](./event_handlers/details.md#playing)

- [PositionDiscontinuity](./event_handlers/details.md#positiondiscontinuity)

- [Progress](./event_handlers/details.md#progress)

- [RateChange](./event_handlers/details.md#ratechange)

- [RepeatModeChange](./event_handlers/details.md#repeatmodechange)

- [RepeatRangeChange](./event_handlers/details.md#repeatrangechange)

- [ResizeModeChange](./event_handlers/details.md#resizemodechange)

- [Seeked](./event_handlers/details.md#seeked)

- [Seeking](./event_handlers/details.md#seeking)

- [Suspend](./event_handlers/details.md#suspend)

- [TimeUpdate](./event_handlers/details.md#timeupdate)

- [VideoSizeChange](./event_handlers/details.md#videosizechange)

- [VolumeChange](./event_handlers/details.md#volumechange)

- [Waiting](./event_handlers/details.md#waiting)

</details>
<br>

<details>
<summary>
    <a href="./event_listeners/home.md">이벤트 리스너</a>
</summary>

- [onDurationChange()](./event_listeners/details.md#ondurationchange)

- [onEmptied()](./event_listeners/details.md#onemptied)

- [onEnded()](./event_listeners/details.md#onended)

- [onError()](./event_listeners/details.md#onerror)

- [onLoadedData()](./event_listeners/details.md#onloadeddata)

- [onLoadedMetadata()](./event_listeners/details.md#onloadedmetadata)

- [onLoadStart()](./event_listeners/details.md#onloadstart)

- [onPause()](./event_listeners/details.md#onpause)

- [onPlay()](./event_listeners/details.md#onplay)

- [onPlaying()](./event_listeners/details.md#onplaying)

- [onPositionDiscontinuity()](./event_listeners/details.md#onpositiondiscontinuity)

- [onProgress()](./event_listeners/details.md#onprogress)

- [onRateChange()](./event_listeners/details.md#onratechange)

- [onRepeatRangeChange()](./event_listeners/details.md#onrepeatrangechange)

- [onResizeModeChange()](./event_listeners/details.md#onresizemodechange)

- [onSeeked()](./event_listeners/details.md#onseeked)

- [onSeeking()](./event_listeners/details.md#onseeking)

- [onSuspend()](./event_listeners/details.md#onsuspend)

- [onTimeUpdate()](./event_listeners/details.md#ontimeupdate)

- [onVolumeChange()](./event_listeners/details.md#onvolumechange)

- [onWaiting()](./event_listeners/details.md#onwaiting)

</details>
<br>

<details>
<summary>
    <a href="./etc/home.md">기타 데이터 클래스</a>
</summary>

- [RepeatRange](./etc/details.md#repeatrange)

- [TimeRange](./etc/details.md#timerange)

- [TimeRanges](./etc/details.md#timeranges)

</details>

