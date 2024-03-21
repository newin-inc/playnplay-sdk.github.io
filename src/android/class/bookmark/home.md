# Bookmark

```kotlin
class Bookmark constructor(private val uri: Uri, items: List<BookmarkItem>) {
    val size: Int

    operator fun get(index: Int): BookmarkItem
    operator fun set(index: Int, item: BookmarkItem)

    fun add(item: BookmarkItem)
    fun count(): Int
    fun removeAt(index: Int)
    fun save()
}
```
<div align="right">
참고: <a href="../bookmark-item/home.md">BookmarkItem</a>
</div>

북마크 아이템 리스트를 가지고 있는 클래스로, 다음과 같은 속성과 메서드를 제공합니다.

## 속성

### size
```kotlin
val size: Int
```
| 타입 | 설명 | 설정 |
|:----:|---|:---:|
|Int|북마크 개수|불가능|

북마크 개수를 나타내는 속성입니다.

사용 예제: 북마크 개수를 가져오는 예제
```kotlin
import com.newin.nplayer.sdk.extensions.loadBookmark

player.loadBookmark { result ->
    val bookmark = result.getOrNull()
    val size = bookmark?.size ?: 0
    ...
}
```

## 메서드

### get
```kotlin
operator fun get(index: Int): BookmarkItem
```
|파라미터|타입|설명|
|:--:|:--:|---|
|index|Int|가져올 북마크의 인덱스|
<div align="right">
참고: <a href="../bookmark-item/home.md">BookmarkItem</a>
</div>

북마크 아이템을 가져오는 메서드입니다. 인덱스를 가지고 접근할 수 있습니다.

사용 예제: 첫 번째 북마크 아이템의 타이틀을 가져오는 예제
```kotlin
val title = bookmark[0].title
...
```

### set
```kotlin
operator fun set(index: Int, item: BookmarkItem)
```
|파라미터|타입|설명|
|:--:|:--:|---|
|index|Int|저장할 북마크의 인덱스|
|item|[BookmarkItem](../bookmark-item/home.md)|북마크 아이템|
<div align="right">
참고: <a href="../bookmark-item/home.md">BookmarkItem</a>
</div>

북마크 아이템 인덱스를 사용히여. 북마크 아이템을 수정할 수 있는 메서드입니다.
주의: 해당하는 북마크 아이템 인덱스가 없을 경우에는 사용할 수 없습니다.

사용 예제: 첫 번째 북마크 아이템의 내용을 바꾸는 예제
```kotlin
import com.newin.nplayer.sdk.BookmarkItem
import kotlin.time.Duration.Companion.seconds

bookmark[0] = BookmarkItem("Introduction", 20.seconds)
```


### add
```kotlin
fun add(item: BookmarkItem)
```
|파라미터|타입|설명|
|:--:|:--:|---|
|item|[BookmarkItem](../bookmark-item/home.md)|추가할 북마크 아이템|

사용 예제: 북마크를 추가하는 예제
```kotlin
import com.newin.nplayer.sdk.BookmarkItem
import kotlin.time.Duration.Companion.minutes

val newBookmark = BookmarkItem("Turning point", 50.minutes)
bookmark.add(newBookmark)
bookmark.save()
```
<div align="right">
참고: <a href="#save">save</a>
</div>

### count
```kotlin
fun count(): Int
```
북마크 개수를 가져오는 메서드입니다.

사용 예제: 북마크 개수를 가져오는 예제
```kotlin
val count = bookmark.count()
...
```

### removeAt
```kotlin
fun removeAt(index: Int)
```
|파라미터|타입|설명|
|:--:|:--:|---|
|index|Int|제거할 북마크 아이템의 인덱스|

사용 예제: 인덱스 2의 북마크 아이템을 제거하는 예제
```kotlin
bookmark.removeAt(2)
bookmark.save()
```
<div align="right">
참고: <a href="#save">save</a>
</div>

### save
```kotlin
fun save()
```
수정된 북마크를 저장하는 메서드입니다.<br>
주의: 북마크 아이템을 추가, 수정, 삭제한 후에는 이 메서드를 호출해야 변경된 정보가 저장됩니다.

사용 예제: 북마크 아이템을 추가한 후에, 북마크를 저장하는 예제
```kotlin
bookmark.add(newBookmark)
bookmark.save()
```



