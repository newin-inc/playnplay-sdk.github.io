# BookmarkItem

```kotlin
data class BookmarkItem(val title: String?, val position: Duration)
```
북마크 아이템을 나타내는 데이터 클래스입니다.

## 속성

### title
```kotlin
val title: String?
```
| 타입 | 설명 |
|:----:|---|
|String?|북마크 아이템의 제목|

<br><br>
### position
```kotlin
val position: Duration
```
| 타입 | 설명 |
|:----:|---|
|[kotlin.time.Duration](https://kotlinlang.org/api/latest/jvm/stdlib/kotlin.time/-duration/)|북마크 아이템의 재생 위치|

### 사용 예제
북마크를 추가하는 예제
```kotlin
import com.newin.nplayer.sdk.BookmarkItem
import kotlin.time.Duration.Companion.minutes

val newBookmark = BookmarkItem("New bookmark", 10.minutes)
bookmark.add(newBookmark)
bookmark.save()
```
<div align="right">
참고: <a href="../bookmark/home.md#add">add</a>, 
<a href="../bookmark/home.md#save">save</a>
</div>
