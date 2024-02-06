# MediaPlayer

MediaPlayer는 미디어 플레이어로 아래의 속성과 메서드를 지원합니다.

<details>
<summary>
    <a href="./properties/home.md">속성</a>
</summary>

- [autoplay](./properties/details.md#autoplay)

- [buffered](./properties/details.md#buffered)

- [canStartPictureInPictureAutomatically](./properties/details.md#canstartpictureinpictureautomatically)

- [currentMediaItem](./properties/details.md#currentmediaitem)

- [currentMediaItemIndex](./properties/details.md#currentmediaitemindex)

- [currentSrc](./properties/details.md#currentsrc)

- [currentTime](./properties/details.md#currenttime)

- [defaultMuted](./properties/details.md#defaultmuted)

- [defaultPlaybackRate](./properties/details.md#defaultplaybackrate)

- [duration](./properties/details.md#duration)

- [ended](./properties/details.md#ended)

- [error](./properties/details.md#error)

- [isPictureInPictureActive](./properties/details.md#ispictureinpictureactive)

- [isPictureInPicturePossible](./properties/details.md#ispictureinpicturepossible)

- [isSeekable](./properties/details.md#isseekable)

- [loop](./properties/details.md#loop)

- [maxSeekToPreviousPosition](./properties/details.md#maxseektopreviousposition)

- [mediaItems](./properties/details.md#mediaitems)

- [muted](./properties/details.md#muted)

- [paused](./properties/details.md#paused)

- [playbackRate](./properties/details.md#playbackrate)

- [playbackState](./properties/details.md#playbackstate)

- [preservesPitch](./properties/details.md#preservespitch)

- [repeatMode](./properties/details.md#repeatmode)

- [repeatRange](./properties/details.md#repeatrange)

- [scalingMode](./properties/details.md#scalingmode)

- [seekable](./properties/details.md#seekable)

- [seekBackIncrement](./properties/details.md#seekbackincrement)

- [seekForwardIncrement](./properties/details.md#seekforwardincrement)

- [seeking](./properties/details.md#seeking)

- [videoSize](./properties/details.md#videosize)

- [view](./properties/details.md#view)

- [volume](./properties/details.md#volume)

</details>
<br>

<details>
<summary>
    <a href="./methods/home.md">메서드</a>
</summary>

- [fastSeekTo(position:)](./methods/details.md#fastseektoposition)

- [hasNextMediaItem()](./methods/details.md#hasnextmediaitem)

- [hasPreviousMediaItem()](./methods/details.md#haspreviousmediaitem)

- [load(mediaItem:)](./methods/details.md#loadmediaitem)

- [load(mediaItems:startMediaItemIndex:)](./methods/details.md#loadmediaitemsstartmediaitemindex)

- [load(src:)](./methods/details.md#loadsrc)

- [pause()](./methods/details.md#pause)

- [play()](./methods/details.md#play)

- [prepare()](./methods/details.md#prepare)

- [seekBack](./methods/details.md#seekback)

- [seekBack(increment:)](./methods/details.md#seekbackincrement)

- [seekForward()](./methods/details.md#seekforward)

- [seekForward(increment:)](./methods/details.md#seekforwardincrement)

- [seekTo(position:)](./methods/details.md#seektoposition)

- [seekTo(mediaItemIndex:position:)](./methods/details.md#seektomediaitemindexposition)

- [seekToNext()](./methods/details.md#seektonext)

- [seekToNextMediaItem()](./methods/details.md#seektonextmediaitem)

- [seekToPrevious()](./methods/details.md#seektoprevious)

- [seekToPreviousMediaItem()](./methods/details.md#seektopreviousmediaitem)

- [startPictureInPicture()](./methods/details.md#startpictureinpicture)

- [stopPictureInPicture()](./methods/details.md#stoppictureinpicture)

- [stop()](./methods/details.md#stop)

- [addEventHandler(_)](./methods/details.md#addeventhandler_)

- [removeEventHandler(_)](./methods/details.md#removeeventhandler_)

- [addEventListener(_)](./methods/details.md#addeventlistener_)

- [removeEventListener(_)](./methods/details.md#removeeventlistener_)

</details>
<br>

<details>
<summary>
    <a href="./event_handlers/home.md">이벤트 핸들러</a>
</summary>

- [durationChange](./event_handlers/details.md#durationchange)

- [emptied](./event_handlers/details.md#emptied)

- [ended](./event_handlers/details.md#ended)

- [error](./event_handlers/details.md#error)

- [loadedData](./event_handlers/details.md#loadeddata)

- [loadStart](./event_handlers/details.md#loadstart)

- [mediaItemTransition](./event_handlers/details.md#mediaitemtransition)

- [pause](./event_handlers/details.md#pause)

- [pictureInPictureActiveChange](./event_handlers/details.md#pictureinpictureactivechange)

- [pictureInPicturePossibleChange](./event_handlers/details.md#pictureinpicturepossiblechange)

- [pictureInPictureDid(Will)Start(Stop)](./event_handlers/details.md#pictureinpicturedidwillstartstop)

- [play](./event_handlers/details.md#play)

- [playbackStateChange](./event_handlers/details.md#playbackstatechange)

- [playing](./event_handlers/details.md#playing)

- [positionDiscontinuity](./event_handlers/details.md#positiondiscontinuity)

- [progress](./event_handlers/details.md#progress)

- [rateChange](./event_handlers/details.md#ratechange)

- [repeatModeChange](./event_handlers/details.md#repeatmodechange)

- [repeatRangeChange](./event_handlers/details.md#repeatrangechange)

- [scalingModeChange](./event_handlers/details.md#scalingmodechange)

- [seeked](./event_handlers/details.md#seeked)

- [seeking](./event_handlers/details.md#seeking)

- [timeUpdate](./event_handlers/details.md#timeupdate)

- [videoSizeChange](./event_handlers/details.md#videosizechange)

- [volumeChange](./event_handlers/details.md#volumechange)

- [waiting](./event_handlers/details.md#waiting)

</details>
<br>

<details>
<summary>
    <a href="./event_listeners/home.md">이벤트 리스너</a>
</summary>

- [onDurationChange(duration:)](./event_listeners/details.md#ondurationchangeduration)

- [onEmptied()](./event_listeners/details.md#onemptied)

- [onEnded()](./event_listeners/details.md#onended)

- [onError(error:)](./event_listeners/details.md#onerrorerror)

- [onLoadedData()](./event_listeners/details.md#onloadeddata)

- [onLoadStart](./event_listeners/details.md#onloadstart)

- [onMediaItemTransition(item:)](./event_listeners/details.md#onmediaitemtransitionitem)

- [onPause()](./event_listeners/details.md#onpause)

- [onPictureInPictureActiveChange(active:)](./event_listeners/details.md#onpictureinpictureactivechangeactive)

- [onPictureInPicturePossibleChange(possible:)](./event_listeners/details.md#onpictureinpicturepossiblechangepossible)

- [onPictureInPictureDid(Will)Start(Stop)()](./event_listeners/details.md#onpictureinpicturedidwillstartstop))

- [onPlay()](./event_listeners/details.md#onplay)

- [onPlaybackStateChange(state:)](./event_listeners/details.md#onplaybackstatechangestate)

- [onPlaying()](./event_listeners/details.md#onplaying)

- [onPositionDiscontinuity(oldPosition:newPosition:)](./event_listeners/details.md#onpositiondiscontinuityoldPositionnewPosition)

- [onProgress()](./event_listeners/details.md#onprogress)

- [onRateChange(rate:)](./event_listeners/details.md#onratechangerate)

- [onRepeatModeChange(mode:)](./event_listeners/details.md#onrepeatmodechangemode)

- [onRepeatRangeChange(range:)](./event_listeners/details.md#onrepeatrangechangerange)

- [onScalingModeChange(mode:)](./event_listeners/details.md#onscalingmodechangemode)

- [onSeeked()](./event_listeners/details.md#onseeked)

- [onSeeking()](./event_listeners/details.md#onseeking)

- [onTimeUpdate(position:)](./event_listeners/details.md#ontimeupdateposition)

- [onVideoSizeChange(size:)](./event_listeners/details.md#onvideosizechangesize)

- [onVolumeChange(volume:muted:)](./event_listeners/details.md#onvolumechangevolumemuted)

- [onWaiting()](./event_listeners/details.md#onwaiting)

</details>
<br>

<details>
<summary>
    <a href="./struct/home.md">구조체</a>
</summary>

- [RepeatRange](./struct/details.md#repeatrange)

</details>
<br>

<details>
<summary>
    <a href="./enum/home.md">목록</a>
</summary>

- [EventHandler](./enum/details.md#eventhandler)

- [PlaybackState](./enum/details.md#playbackstate)

- [RepeatMode](./enum/details.md#repeatmode)

- [ScalingMode](./enum/details.md#scalingmode)

</details>
<br>

<details>
<summary>
    <a href="./class/home.md">클래스</a>
</summary>

- [EventTarget](./class/details.md#eventtarget)

</details>
