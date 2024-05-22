# MediaPlayer

```swift
final class MediaPlayer
```

미디어 플레이어 클래스입니다. 활성화된 미디어 플레이어에 접근하는 방법은 [player](../media-player-view-controller/home.md#player)를 참고하세요.


<details>
<summary>
    <a href="./details.md#속성">속성</a>
</summary>

- [var allowsBackgroundPlayback: Bool](./details.md#allowsBackgroundPlayback)

- [var allowsCellularAccess: Bool](./details.md#allowscellularaccess)

- [var audioTracks: [AudioTrack]](./details.md#audiotracks)

- [var autoplay: Bool](./details.md#autoplay)

- [var buffered: [TimeRange]](./details.md#buffered)

- [var canStartPictureInPictureAutomatically: Bool](./details.md#canstartpictureinpictureautomatically)

- [var currentMediaItem: MediaItem?](./details.md#currentmediaitem)

- [var currentMediaItemIndex: Int](./details.md#currentmediaitemindex)

- [var currentSrc: URL?](./details.md#currentsrc)

- [var currentTime: Duration](./details.md#currenttime)

- [var defaultMuted: Bool](./details.md#defaultmuted)

- [var defaultPlaybackRate: Float](./details.md#defaultplaybackrate)

- [var duration: Duration](./details.md#duration)

- [var ended: Bool](./details.md#ended)

- [var error: Error?](./details.md#error)

- [var isPictureInPictureActive: Bool](./details.md#ispictureinpictureactive)

- [var isPictureInPicturePossible: Bool](./details.md#ispictureinpicturepossible)

- [var isSeekable: Bool](./details.md#isseekable)

- [var isSubtitlesVisible: Bool](./details.md#issubtitlesvisible)

- [var loop: Bool](./details.md#loop)

- [var maxSeekToPreviousPosition: Duration](./details.md#maxseektopreviousposition)

- [var mediaItems: [MediaItem]](./details.md#mediaitems)

- [var muted: Bool](./details.md#muted)

- [var paused: Bool](./details.md#paused)

- [var playbackRate: Float](./details.md#playbackrate)

- [var playbackState: PlaybackState](./details.md#playbackstate)

- [var preservesPitch: Bool](./details.md#preservespitch)

- [var repeatMode: RepeatMode](./details.md#repeatmode)

- [var repeatRange: RepeatRange?](./details.md#repeatrange)

- [var scalingMode: ScalingMode](./details.md#scalingmode)

- [var seekable: [TimeRange]](./details.md#seekable)

- [var seekBackIncrement: Duration](./details.md#seekbackincrement)

- [var seekForwardIncrement: Duration](./details.md#seekforwardincrement)

- [var seeking: Bool](./details.md#seeking)

- [var textTracks: [TextTrack]](./details.md#texttracks)

- [var videoSize: CGSize](./details.md#videosize)

- [var videoTracks: [VideoTrack]](./details.md#videotracks)

- [var view: UIView](./details.md#view)

- [var volume: Float](./details.md#volume)

</details>
<br>

<details>
<summary>
    <a href="./details.md#메서드">메서드</a>
</summary>

- [func fastSeekTo(position: Duration)](./details.md#fastseektoposition)

- [func hasNextMediaItem() -> Bool](./details.md#hasnextmediaitem)

- [func hasPreviousMediaItem()-> Bool](./details.md#haspreviousmediaitem)

- [func load(mediaItem: MediaItem)](./details.md#loadmediaitem)

- [func load(mediaItems: [MediaItem], startMediaItemIndex: Int)](./details.md#loadmediaitemsstartmediaitemindex)

- [func load(src: URL)](./details.md#loadsrc)

- [func pause()](./details.md#pause)

- [func play()](./details.md#play)

- [func prepare()](./details.md#prepare)

- [func seekBack()](./details.md#seekback)

- [func seekBack(increment: Duration)](./details.md#seekbackincrement)

- [func seekForward()](./details.md#seekforward)

- [func seekForward(increment: Duration)](./details.md#seekforwardincrement)

- [func seekTo(position: Duration)](./details.md#seektoposition)

- [func seekTo(mediaItemIndex: Int, position: Duration)](./details.md#seektomediaitemindexposition)

- [func seekToNext()](./details.md#seektonext)

- [func seekToNextMediaItem()](./details.md#seektonextmediaitem)

- [func seekToPrevious()](./details.md#seektoprevious)

- [func seekToPreviousMediaItem()](./details.md#seektopreviousmediaitem)

- [func startPictureInPicture()](./details.md#startpictureinpicture)

- [func stop()](./details.md#stop)

- [func stopPictureInPicture()](./details.md#stoppictureinpicture)

- [func addEventHandler(_ handler: Handler) -> EventTarget](./details.md#addeventhandler_)

- [func removeEventHandler(target: EventTarget)](./details.md#removeeventhandler_)

- [func addEventListener(_ listener: EventListener)](./details.md#addeventlistener_)

- [func removeEventListener(_ listener: EventListener)](./details.md#removeeventlistener_)

</details>
<br>

