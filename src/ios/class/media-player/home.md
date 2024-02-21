# MediaPlayer

```swift
final public class MediaPlayer {

    final public var audioTracks: [AudioTrack] { get }
    final public var autoplay: Bool { get set }
    final public var buffered: [TimeRange] { get }
    final public var canStartPictureInPictureAutomatically: Bool { get set }
    final public var currentMediaItem: MediaItem? { get }
    final public var currentMediaItemIndex: Int { get }
    final public var currentSrc: URL? { get }
    final public var currentTime: Duration { get set }
    final public var defaultMuted: Bool { get set }
    final public var defaultPlaybackRate: Float { get set }
    final public var duration: Duration { get }
    final public var ended: Bool { get }
    final public var error: (Error)? { get }
    final public var isPictureInPictureActive: Bool { get }
    final public var isPictureInPicturePossible: Bool { get }
    final public var isSeekable: Bool { get }
    final public var isSubtitlesVisible: Bool { get set }
    final public var loop: Bool { get set }
    final public var maxSeekToPreviousPosition: Duration { get set }
    final public var mediaItems: [MediaItem] { get set }
    final public var muted: Bool { get set }
    final public var paused: Bool { get }
    final public var playbackRate: Float { get set }
    final public var playbackState: MediaPlayer.PlaybackState { get }
    final public var preservesPitch: Bool { get set }
    final public var repeatMode: MediaPlayer.RepeatMode { get set }
    final public var repeatRange: MediaPlayer.RepeatRange? { get set }
    final public var seekable: [TimeRange] { get }
    final public var seekBackIncrement: Duration { get set }
    final public var seekForwardIncrement: Duration { get set }
    final public var seeking: Bool { get }
    final public var textTracks: [TextTrack] { get }
    final public var videoSize: CGSize { get }
    final public var videoTracks: [VideoTrack] { get }
    final public var view: UIView { get }
    final public var volume: Float { get set }

    final public func fastSeekTo(position: Duration)
    final public func hasNextMediaItem() -> Bool
    final public func hasPreviousMediaItem() -> Bool
    final public func load(mediaItem: MediaItem)
    final public func load(mediaItems: [MediaItem], startMediaItemIndex: Int = 0)
    final public func load(src: URL)
    final public func pause()
    final public func play()
    final public func prepare()
    final public func seekBack()
    final public func seekBack(increment: Duration)
    final public func seekForward()
    final public func seekForward(increment: Duration)
    final public func seekTo(position: Duration)
    final public func seekTo(mediaItemIndex: Int, position: Duration = .indefinite)
    final public func seekToNext()
    final public func seekToNextMediaItem()
    final public func seekToPrevious()
    final public func seekToPreviousMediaItem()
    final public func startPictureInPicture()
    final public func stop()
    final public func stopPictureInPicture()

    @discardableResult
    final public func addEventHandler(_ handler: EventHandler) -> EventTarget
    final public func removeEventHandler(_ target: EventTarget)
    final public func addEventListener(_ listener: EventListener)
    final public func removeEventListener(_ listener: EventListener)
}
```

<details>
<summary>
    <a href="./details.md#속성">속성</a>
</summary>

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

