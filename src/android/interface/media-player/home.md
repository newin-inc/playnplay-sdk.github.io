# interface MediaPlayer

```kotlin
import com.newin.nplayer.sdk.MediaPlayer
```

```kotlin
interface MediaPlayer : Player {

    var autoplay: Boolean
    val buffered: TimeRanges
    val currentSrc: Uri?
    var currentTime: Duration
    var defaultMuted: Boolean
    var defaultPlaybackRate: Float
    val duration: Duration
    val ended: Boolean
    val error: PlaybackException?
    var loop: Boolean
    val mediaItems: List<MediaItem>
    var muted: Boolean
    val paused: Boolean
    var playbackRate: Float
    var preservesPitch: Boolean
    var repeatRange: RepeatRange?
    var resizeMode: @ResizeMode Int
    var seekBackIncrement: Duration
    var seekForwardIncrement: Duration
    val seeking: Boolean
    var deviceVolume: Float

    fun fastSeek(to: Duration)
    fun load(uri: String) 
    fun load(uri: Uri)
    fun load(mediaItem: MediaItem)
    fun load(mediaItems: List<MediaItem>
    fun seekBack()
    fun seekBack(increment: Duration)
    fun seekForward()
    fun seekForward(increment: Duration)
    fun seekTo(position: Duration, force: Boolean)
    fun addEventHandler(handler: EventHandler): EventHandler
    fun removeEventHandler(handler: EventHandler)
    fun addEventListener(listener: EventListener)
    fun removeEventListener(listener: EventListener)

    data class RepeatRange(val start: Duration, val end: Duration) {
        fun withStart(start: Duration) = RepeatRange(start, end)
        fun withEnd(end: Duration) = RepeatRange(start, end)
    }

}
```
<details>
<summary>
    <a href="./details.md#속성">속성</a>
</summary>

- [var autoplay: Boolean](./details.md#autoplay)

- [val buffered: TimeRanges](./details.md#buffered)

- [val currentMediaItem: MediaItem](./details.md#currentmediaitem)

- [val currentMediaItemIndex: Int](./details.md#currentmediaitemindex)

- [val currentSrc: Uri?](./details.md#currentsrc)

- [var currentTime: Duration](./details.md#currenttime)

- [var defaultMuted: Boolean](./details.md#defaultmuted)

- [var defaultPlaybackRate: Float](./details.md#defaultplaybackrate)

- [var deviceVolume: Float](./details.md#devicevolume)

- [val duration: Duration](./details.md#duration)

- [val ended: Boolean](./details.md#ended)

- [val error: PlaybackException?](./details.md#error)

- [var loop: Boolean](./details.md#loop)

- [val mediaItems: List<MediaItem>](./details.md#mediaitems)

- [var muted: Boolean](./details.md#muted)

- [val paused: Boolean](./details.md#paused)

- [var playbackRate: Float](./details.md#playbackrate)

- [var preservesPitch: Boolean](./details.md#preservespitch)

- [var repeatRange: RepeatRange?](./details.md#repeatrange)

- [var resizeMode: @ResizeMode Int](./details.md#resizemode)

- [var seekBackIncrement: Duration](./details.md#seekbackincrement)
    
- [var seekForwardIncrement: Duration](./details.md#seekforwardincrement)

- [val seeking: Boolean](./details.md#seeking)

</details>
<br>

<details>
<summary>
    <a href="./details.md#메서드">메서드</a>
</summary>

- [fun fastSeek(to: Duration)](./details.md#fastseek)

- [fun load(uri: String)](./details.md#load)

- [fun load(uri: Uri)](./details.md#load-1)

- [fun load(mediaItem: MediaItem)](./details.md#load-2)

- [fun load(mediaItems: List<MediaItem>)](./details.md#load-3)

- [fun pause()](./details.md#pause)

- [fun play()](./details.md#play)

- [fun prepare()](./details.md#prepare)

- [fun release()](./details.md#release)

- [fun seekBack()](./details.md#seekback)

- [fun seekBack(increment: Duration)](./details.md#seekback-1)

- [fun seekForward()](./details.md#seekforward)

- [fun seekForward(increment: Duration)](./details.md#seekforward-1)

- [fun seekTo(position: Duration, force: Boolean)](./details.md#seekto)

- [fun addEventHandler(handler: EventHandler): EventHandler](./details.md#addeventhandler)

- [fun removeEventHandler(handler: EventHandler)](./details.md#removeeventhandler)

- [fun addEventListener(listener: EventListener)](./details.md#addeventlistener)

- [fun removeEventListener(listener: EventListener)](./details.md#removeeventlistener)

</details>
<br>

<details>
<summary>
    <a href="./details.md#클래스">클래스</a>
</summary>

- [data class RepeatRange(val start: Duration, val end: Duration)](./details.md#repeatrange-1)

</details>
<br>