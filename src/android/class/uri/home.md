# Uri

```kotlin
import android.net.Uri
```

[android.net.Uri](https://developer.android.com/reference/android/net/Uri) 클래스를 확장하여, Uri를 미디어 아이템으로 만드는 메서드를 제공합니다. 

<div align="right">
참고: <a href="https://developer.android.com/reference/android/net/Uri">android.net.Uri</a>
</div>

<br>

# 속성

## mimeType

```kotlin
val Uri.mimeType: String?
```

| 타입 | 설명 | 설정 |
|:----:|---|:---:|
|String?|uri의 MIME type| 불가능 |

## pathExtension

```kotlin
val Uri.pathExtension: String?
```

| 타입 | 설명 | 설정 |
|:----:|---|:---:|
|String?|uri의 확장자| 불가능 |

<br>

# 메서드

## toMediaItem

```kotlin
fun Uri.toMediaItem(): MediaItem
```

uri를 미디어 아이템으로 만드는 메서드입니다.

<div align="right">
참고: <a href="https://developer.android.com/reference/androidx/media3/common/MediaItem">androidx.media3.common.MediaItem</a>
</div>
