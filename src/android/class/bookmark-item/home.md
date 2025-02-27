# BookmarkItem

```kotlin
import com.newin.nplayer.sdk.BookmarkItem
```

```kotlin
data class BookmarkItem
```

북마크 아이템을 나타내는 구조체입니다. 북마크 타이틀과 재생 위치의 정보를 가지고 있습니다.

# 속성

## title

```kotlin
val title: String?
```

|타입|설명|
|:--:|:--:|
|String?|타이틀|

## position

```kotlin
val position: Duration
```

|타입|설명|
|:--:|:--:|
|Duration|재생 위치|

