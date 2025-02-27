# MediaItem.Builder

```kotlin
import androidx.media3.common.MediaItem.Builder
```

[MediaItem.Builder](https://developer.android.com/reference/androidx/media3/common/MediaItem.Builder) 클래스를 확장하여, Seek 기능에 대한 메서드를 제공합니다.

<div align="right">
참고: <a href="https://developer.android.com/reference/androidx/media3/common/MediaItem.Builder">MediaItem.Builder</a>
</div>

<br>

# 메서드

## setBookmarks

```kotlin
fun MediaItem.Builder.setBookmarks(bookmarks: List<BookmarkItem>): MediaItem.Builder
```
|파라미터|타입|설명|필수|
|:--:|:--:|:--:|:--:|
|bookmarks|List\<[BookmarkItem](../bookmark-item/home.md)\>|북마크 설정|O|

## setSeekable

```kotlin
fun MediaItem.Builder.setSeekable(seekable: Boolean): MediaItem.Builder
```

|파라미터|타입|설명|필수|
|:--:|:--:|:--:|:--:|
|seekable|Boolean|Seek 기능을 허용할 지에 대한 여부|O|

미디어 아이템의 Seek 기능을 허용할 지에 대한 여부를 설정하는 메서드입니다. 반드시 Uri를 설정한 이후에 setSeekable()을 사용하셔야 합니다.

<div align="right">
참고: <a href="../../how-to-use/home.md#seek-기능을-제한한-예제">Seek 기능을 제한한 예제</a>
</div>
