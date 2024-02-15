# fastSeekTo(position:)

```swift
func fastSeekTo(position: Duration)
```
입력된 시간으로 빠르게 이동하기 위한 메서드입니다. 언제나 딱 정확한 위치로 가지는 않습니다.
<div align="right">
비교: <a href="#seektoposition">seekTo(position:)</a>
</div>


|파라미터|타입|설명|
|:--:|:--:|--|
|to|[Duration](../../struct/details.md#duration)|재생하고자 하는 위치 값|

사용 예제
```swift
mediaPlayer.fastSeekTo(position: .seconds(50))
```

<br><br><br><br>

--------
# hasNextMediaItem()

```swift
func hasNextMediaItem() -> Bool
```
다음에 재생할 미디어가 있는지를 반환하는 메서드입니다. 목록의 마지막이 아니거나, 전체 반복 모드일 경우 true를 반환합니다.


사용 예제
```swift
if (mediaPlayer.hasNextMediaItem()) {
    displayNextButton()
}
```

<br><br><br><br>

--------
# hasPreviousMediaItem()

```swift
func hasNextMediaItem() -> Bool
```
바로 앞에 재생할 미디어가 있는지를 반환하는 메서드입니다. 목록의 처음이 아니거나, 전체 반복 모드일 경우 true를 반환합니다.

사용 예제
```swift
if (mediaPlayer.hasPreviousMediaItem()) {
    displayPrevioustButton()
}
```

<br><br><br><br>

--------
# load(mediaItem:)

```swift
func load(mediaItem: MediaItem)
```
하나의 미디어를 로드하기 위한 메서드입니다.

|파라미터|타입|설명|
|:--:|:--:|--|
|mediaItem|[MediaItem](../../media_item/home.md)|입력된 미디어 아이템을 로드합니다.|[MediaItem](../../media_item/home.md) 참고|

<br><br><br><br>

--------
# load(mediaItems:startMediaItemIndex:)

```swift
func load(
    mediaItems: [MediaItem],
    startMediaItemIndex: Int = 0
)
```
여러 개의 미디어를 로드하기 위한 메서드입니다. 처음으로 재생할 미디어를 정할 수 있습니다.

|파라미터|타입|설명|
|:--:|:--:|--|
|mediaItems|\[[MediaItem](../../media_item/home.md)\]|[MediaItem](../../media_item/home.md) 참고|
|startMediaItemIndex|Int|목록 중에서 처음 재생할 미디어 아이템의 index|

사용 예제
```swift
mediaPlayer.load(mediaItems: mediaItems)    // 0번째 아이템부터 시작
mediaPlayer.load(mediaItems: mediaItems, 0) // 0번째 아이템부터 시작.위와 동일한 결과
```

<br><br><br><br>

--------
# load(src:)

```swift
func load(src: URL)
```
URL을 사용하여 미디어를 로드하기 위한 메서드입니다.

|파라미터|타입|설명|
|:--:|:--:|--|
|src|[URL](https://developer.apple.com/documentation/foundation/url)|로드할 미디어의 주소|

<br><br><br><br>

--------
# pause()

```swift
func pause()
```
미디어를 일시 정지하기 위한 메서드입니다.

<br><br><br><br>

--------
# play()

```swift
func play()
```
미디어를 재생하기 위한 메서드입니다.

<br><br><br><br>

--------
# prepare()

```swift
func prepare()
```
미디어 관련 기본 설정을 하기 위한 메서드입니다. 이 메서드를 실행하면, [autoplay](../properties/details.md#autoplay), [defaultPlaybackRate](../properties/details.md#defaultplaybackrate), [defaultMuted](../properties/details.md#defaultmuted) 설정을 미디어 플레이어에 적용하고, 미디어를 로딩하는 과정까지 진행합니다.

<br><br><br><br>

--------
# seekBack()

```swift
func seekBack()
```
현재 위치에서 속성 [seekBackIncrement](../properties/details.md#seekbackincrement) 만큼 전으로 이동하기 위한 메서드입니다.


<br><br><br><br>

--------
# seekBack(increment:)

```swift
func seekBack(increment: Duration)
```
현재 위치에서 입력된 시간 전으로 이동하기 위한 메서드입니다.

|파라미터|타입|설명|
|:--:|:--:|--|
|increment|[Duration](../../struct/details.md#duration)|새로운 위치는 현재 위치에서 입력된 파라미터를 뺀 결과입니다.<br>즉, 음수 입력 시, 입력된 파라미터의 절대값만큼 후로 이동합니다.|

사용 예제
```swift
mediaPlayer.seekBack(increment: .seconds(30))
// 미디어의 이동에 관하여는 아래의 코드와 동일한 결과를 가지고 오지만, 
// seekBackIncrement 값은 변하지 않는 게 다른 점입니다.

mediaPlayer.seekBackIncrement = .seconds(30)
mediaPlayer.seekBack()
```

<br><br><br><br>

--------
# seekForward()

```swift
func seekForward()
```
현재 위치에서 속성 [seekForwardIncrement](../properties/details.md#seekforwardincrement) 만큼 후로 이동하기 위한 메서드입니다.

<br><br><br><br>

--------
# seekForward(increment:)

```swift
func seekForward(increment: Duration)
```
현재 위치에서 입력된 시간 후로 이동하기 위한 메서드입니다.

|파라미터|타입|설명|
|:--:|:--:|--|
|increment|[Duration](../../struct/details.md#duration)|새로운 위치는 현재 위치에서 입력된 파라미터를 더한 결과입니다.<br>즉, 음수 입력 시, 입력된 파라미터의 절대값만큼 되돌아갑니다.|

사용 예제
```swift
mediaPlayer.seekForward(increment: .seconds(30))
// 미디어의 이동에 관하여는 아래의 코드와 동일한 결과를 가지고 오지만, 
// seekForwardIncrement 값은 변하지 않는 게 다른 점입니다.

mediaPlayer.seekForwardIncrement = .seconds(30)
mediaPlayer.seekForward()
```

<br><br><br><br>

--------
# seekTo(position:)

```swift
func seekTo(position: Duration)
```
입력된 시간 위치로 정확하게 이동하기 위한 메서드입니다.
<div align="right">
비교: <a href="#fastseektoposition">fastSeekTo(position:)</a>
</div>

|파라미터|타입|설명|
|:--:|:--:|--|
|position|[Duration](../../struct/details.md#duration)|입력된 값으로 재생 위치를 이동합니다.|

사용 예제
```swift
mediaPlayer.seekTo(position: .seconds(30))
```

<br><br><br><br>

--------
# seekTo(mediaItemIndex:position:)

```swift
func seekTo(mediaItemIndex: Int, position: Duration = .indefinite)
```
현재 재생 중인 미디어를 정지하고 다른 미디어를 재생하기 위한 메서드입니다. 재생 목록의 index만 파라미터로 넘겨줄 경우에는, 해당 미디어의 마지막에 재생했던 위치에서 시작합니다.

|파라미터|타입|설명|필수|
|:--:|:--:|--|:--:|
|mediaItemIndex|Int|재생 목록에서 미디어 아이템의 index|O|
|position|[Duration](../../struct/details.md#duration)|해당 미디어에서 재생하고하 하는 위치<br>입력하지 않으면, 마지막에 재생했던 위치에서 시작합니다.|X|

사용 예제
```swift
// 3번째 미디어를 재생하는데, 마지막에 재생했던 위치로 이동합니다.
mediaPlayer.seekTo(mediaItemIndex: 2)

// 4번째 미디어를 재생하는데, 2분 위치에서 재생을 시작합니다.
mediaPlayer.seekTo(mediaItemIndex: 3, position: .seconds(120))
```

<br><br><br><br>

--------
# seekToNext()

```swift
func seekToNext()
```
[seekToNexMediaItemt()](#seektonextmediaitem)와 동일합니다.

<br><br><br><br>

--------
# seekToNextMediaItem()

```swift
func seekToNextMediaItem()
```
다음으로 재생할 미디어가 있을 경우 현재 재생중인 미디어를 정지하고 다음 미디어로 이동하는 메서드입니다. 목록의 맨 뒤에 위치한 미디어이지만 전체 반복 모드일 경우, 목록의 맨 앞으로 이동합니다.

<br><br><br><br>

--------
# seekToPrevious()

```swift
func seekToPrevious()
```
현재 재생 위치가 속성 maxSeekToPreviousPosition보다 앞이면 이전 미디어로 이동합니다.(참고: [seekToPreviousMediaItem()](#seektopreviousmediaitem)) 
그렇지 않으면 현재 미디어의 맨 앞으로 이동합니다.
<div align="right">
참고: <a href="../properties/details.md#maxseektopreviousposition">maxSeekToPreviousPosition</a>
</div>

<br><br><br><br>

--------
# seekToPreviousMediaItem()

```swift
func seekToPreviousMediaItem()
```
앞에 재생할 미디어가 있을 경우 현재 재생중인 미디어를 정지하고 이전 미디어로 이동하는 메서드입니다. 목록의 맨 앞에 위치한 미디어일 경우, 목록의 마지막 미디어로 이동합니다.

<br><br><br><br>

--------
# startPictureInPicture()

```swift
func startPictureInPicture()
```
화면 속 화면 모드를 시작하는 메서드입니다.

<br><br><br><br>

--------
# stopPictureInPicture()

```swift
func stopPictureInPicture()
```
화면 속 화면 모드를 종료하는 메서드입니다.

<br><br><br><br>

--------
# stop()

```swift
func stop()
```
미디어를 완전 종료할 때 부르는 메서드입니다. MediaPlayer가 종료되면 자동으로 호출됩니다. 이 메서드가 호출되면, 미디어를 멈추고, [emptied](../event_handlers/details.md#emptied) 핸들러를 호출하고, [playbackState](../enum/details.md#playbackstate)가 .idle상태로 바뀝니다.

<br><br><br><br>

--------
# addEventHandler(_)

```swift
func addEventHandler(_ handler: MediaPlayer.Handler) -> EventTarget
```
[이벤트 핸들러](../event_handlers/home.md)를 추가하기 위한 메서드입니다.
반환된 target은 이벤트 핸들러를 제거할 목적으로 [removeEventHandler()](#removeeventhandler_)에서 사용할 수 있습니다.

|파라미터|타입|반환 타입|설명|
|:--:|:--:|:--:|--|
|handler|[EventHandler](../event_handlers/home.md)|[EventTarget](../class/details.md#eventtarget)|[이벤트 핸들러](../event_handlers/home.md), [EventTarget](../class/details.md#eventtarget) 참고|

사용 예제
```swift
mediaPlayer.addEventHandler(
    EventHandler.play({
        showPlayText()
    })
)
```

<br><br><br><br>

--------
# removeEventHandler(_)

```swift
func removeEventHandler(target: EventTarget)
```
이벤트 핸들러를 제거하기 위한 메서드입니다.

|파라미터|타입|설명|
|:--:|:--:|--|
|target|[EventTarget](../class/details.md#eventtarget)|[이벤트 핸들러](../event_handlers/home.md) 참고|


사용 예제
```swift
let target = mediaPlayer.addEventHandler(EventHandler.play({ showText() }))

/**
	do something
*/

mediaPlayer.removeEventHandler(target)
```

<br><br><br><br>

--------
# addEventListener(_)

```swift
func addEventListener(_ listener: MediaPlayer.EventListener)
```
[이벤트 리스너](../event_listeners/home.md)를 추가하기 위한 메서드입니다.

|파라미터|타입|설명|
|:--:|:--:|--|
|listener|EventListener|[이벤트 리스너](../event_listeners/home.md) 참고|

사용 예제
```swift
class ComponentListener: MediaPlayer.EventListener { 
    func onPlay() { 
        showPauseIcon()
    } 
}

let compoenentListener = ComponentListener()

mediaPlayer.addEventListener(compoenentListener)
```

<br><br><br><br>

--------
# removeEventListener(_)

```swift
func removeEventListener(_ listener: MediaPlayer.EventListener)
```
[이벤트 리스너](../event_listeners/home.md)를 제거하기 위한 메서드입니다.

|파라미터|타입|설명|
|:--:|:--:|--|
|listener|EventListener|[이벤트 리스너](../event_listeners/home.md) 참고|


사용 예제
```swift
// addEventListener(_)의 사용 예제에 이어서 구현한 내용입니다.

mediaPlayer.removeEventListener(componentListener)
```
