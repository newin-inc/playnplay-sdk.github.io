# MediaMetadata

```kotlin
import androidx.media3.common.MediaMetadata
```

미디어 메타 데이터 클래스입니다.

<div align="right">
참고: <a href="https://developer.android.com/reference/androidx/media3/common/MediaMetadata">MediaMetadata</a><br>
<a href="https://developer.android.com/reference/androidx/media3/common/MediaMetadata#buildUpon()">MediaMetadata.buildUpon()</a><br>
<a href="https://developer.android.com/reference/kotlin/androidx/media3/common/MediaMetadata.Builder">MediaMetadata.Builder</a><br>
<a href="https://developer.android.com/reference/java/time/Duration">java.time.Duration</a>
</div>

<br>

# 속성

## artworkUrl

```java
@Nullable Uri artworkUri
```

|타입|설명|
|:--:|:--:|
|[android.net.Uri](https://developer.android.com/reference/android/net/Uri)|미디어 아이템의 아트워크 경로|

미디어 아이템의 아트워크 경로를 나타내는 속성입니다.

<div align="right">
참고: <a href="https://developer.android.com/reference/androidx/media3/common/MediaMetadata#artworkUri()">artworkUri</a>
</div>

## title

```java
@Nullable CharSequence title
```

|타입|설명|
|:--:|:--:|
|CharSequence|미디어 아이템의 제목|

미디어 아이템의 제목을 나타내는 속성입니다.

<div align="right">
참고: <a href="https://developer.android.com/reference/androidx/media3/common/MediaMetadata#title()">title</a>
</div>

<br>

# 메서드

## buildUpon()

```java
MediaMetadata.Builder buildUpon()
```

미디어 메타 데이터를 추가하거나 수정하고자 할 때 사용하는 메서드입니다. 변경 후, [.build()](https://developer.android.com/reference/androidx/media3/common/MediaMetadata.Builder#build())를 호출하여 구성을 완료합니다.

<div align="right">
참고: <a href="#builder">MediaMetadata.Builder</a><br>
<a href="https://developer.android.com/reference/androidx/media3/common/MediaMetadata.Builder#build()">build()</a>
</div>

<br>

# 정적 클래스

## Builder

```java
static class Builder
```

미디어 메타데이터를 만드는 클래스입니다.

<div align="right">
참고: <a href="https://developer.android.com/reference/kotlin/androidx/media3/common/MediaMetadata.Builder">MediaMetadata.Builder</a>
</div>


