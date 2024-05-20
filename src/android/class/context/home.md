# Context
```kotlin
import android.content.Context
```
```java
public abstract class Context
```

[Context](https://developer.android.com/reference/android/content/Context) 클랙스를 확장하여, 미디어 플레이어를 설정하고 사용하는 메서드를 제공합니다.

<div align="right">
참고: <a href="https://developer.android.com/reference/android/content/Context">Context</a>
</div>

<br><br>
# 메서드

## getMediaPlayer
```kotlin
fun Context.getMediaPlayer(block: (MediaPlayer) -> Unit)
```
|파라미터|타입|설명|
|:--:|:--:|:--:|
|block|([MediaPlayer](../../interface/media-player/home.md)) -> Unit|미디어 플레이어 제어 내용|

현재 화면에 있는 플레이어를 제어하고 싶을 때 사용하는 메서드입니다. 미디어 플레이어를 비동기 방식으로 가지고 오기 때문에, 주의해서 사용해 주세요. 미디어 플레이어 사용 후에는 반드시 [release()](../../interface/media-player/home.md#release)를 호출해주세요.
<div align="right">
참고: <a href="../../interface/media-player/home.md#release">release()</a>
</div>

<br><br>
## presentMediaPlayer

미디어를 여는 메서드입니다. 여러 타입을 파라미터로 받을 수 있습니다. 미디어 플레이어를 사용한 후에는 반드시 [release()](../../interface/media-player/home.md#release)를 호출해주세요.
<div align="right">
참고: <a href="../../interface/media-player/home.md#release">release()</a>
</div>

```kotlin
fun Context.presentMediaPlayer(mediaItem: MediaItem)
```
| 파라미터 | 타입 | 설명 |
|:----:|:---:|:---:|
| mediaItem | [MediaItem](https://developer.android.com/reference/androidx/media3/common/MediaItem) | 재생하려는 [미디어 아이템](https://developer.android.com/reference/androidx/media3/common/MediaItem)| 

<div align="right">
참고: <a href="https://developer.android.com/reference/androidx/media3/common/MediaItem">MediaItem</a>, 
<a href="https://developer.android.com/media/media3/exoplayer/media-items">Media items</a>
</div>

<br><br>
```kotlin
fun Context.presentMediaPlayer(
    mediaItem: MediaItem,
    configuration: MediaPlayerActivityConfiguration
)
```
| 파라미터 | 타입 | 설명 |
|:----:|:---:|:----:|
| mediaItem | [MediaItem](https://developer.android.com/reference/androidx/media3/common/MediaItem) |재생하려는 [미디어 아이템](https://developer.android.com/reference/androidx/media3/common/MediaItem)| 
|configuration|[MediaPlayerActivityConfiguration](../media-player-activity-configuration/home.md)|설정 값|

<div align="right">
참고: <a href="https://developer.android.com/reference/androidx/media3/common/MediaItem">MediaItem</a>, 
<a href="https://developer.android.com/media/media3/exoplayer/media-items">Media items</a>
</div>

<br><br>
```kotlin
fun Context.presentMediaPlayer(mediaItems: Collection<MediaItem>)
```
| 파라미터 | 타입 | 설명 |
|:----:|:---:|:----:|
| mediaItem | Collection<[MediaItem](https://developer.android.com/reference/androidx/media3/common/MediaItem)> | 재생하려는 [미디어 아이템](https://developer.android.com/reference/androidx/media3/common/MediaItem) 목록|

<div align="right">
참고: <a href="https://developer.android.com/reference/androidx/media3/common/MediaItem">MediaItem</a>, 
<a href="https://developer.android.com/media/media3/exoplayer/media-items">Media items</a>
</div>

<br><br>
```kotln
fun Context.presentMediaPlayer(
    mediaItems: Collection<MediaItem>,
    configuration: MediaPlayerActivityConfiguration
)
```
| 파라미터 | 타입 | 설명 |
|:----:|:---:|:----:|
| mediaItem | Collection<[MediaItem](https://developer.android.com/reference/androidx/media3/common/MediaItem)> | 재생하려는 [미디어 아이템](https://developer.android.com/reference/androidx/media3/common/MediaItem) 목록|
|configuration|[MediaPlayerActivityConfiguration](../media-player-activity-configuration/home.md)|설정 값|

<div align="right">
참고: <a href="https://developer.android.com/reference/androidx/media3/common/MediaItem">MediaItem</a>, 
<a href="https://developer.android.com/media/media3/exoplayer/media-items">Media items</a>
</div>

<br><br>
```kotlin
fun Context.presentMediaPlayer(
	mediaItems: Collection<MediaItem>,
	startMediaItem: MediaItem
)
```
| 파라미터 | 타입 | 설명 |
|:----:|:---:|----|
| mediaItems | Collection<[MediaItem](https://developer.android.com/reference/androidx/media3/common/MediaItem)> | 재생하려는 [미디어 아이템](https://developer.android.com/reference/androidx/media3/common/MediaItem) 목록|
| startMediaItem | [MediaItem](https://developer.android.com/reference/androidx/media3/common/MediaItem) | 목록 중에서 처음 재생할 미디어 아이템.<br>mediaItems에 포함되어 있어야 합니다. |

<div align="right">
참고: <a href="https://developer.android.com/reference/androidx/media3/common/MediaItem">MediaItem</a>, 
<a href="https://developer.android.com/media/media3/exoplayer/media-items">Media items</a>
</div>

<br><br>
```kotlin
fun Context.presentMediaPlayer(
    mediaItems: Collection<MediaItem>,
    startMediaItem: MediaItem,
    configuration: MediaPlayerActivityConfiguration
)
```
| 파라미터 | 타입 | 설명 |
|:----:|:---:|:---:|
| mediaItems | Collection<[MediaItem](https://developer.android.com/reference/androidx/media3/common/MediaItem)> | 재생하려는 [미디어 아이템](https://developer.android.com/reference/androidx/media3/common/MediaItem) 목록|
| startMediaItem | [MediaItem](https://developer.android.com/reference/androidx/media3/common/MediaItem) | 목록 중에서 처음 재생할 미디어 아이템.<br>mediaItems에 포함되어 있어야 합니다. |
|configuration|[MediaPlayerActivityConfiguration](../media-player-activity-configuration/home.md)|설정 값|

<div align="right">
참고: <a href="https://developer.android.com/reference/androidx/media3/common/MediaItem">MediaItem</a>, 
<a href="https://developer.android.com/media/media3/exoplayer/media-items">Media items</a>
</div>

<br><br>
```kotlin
fun Context.presentMediaPlayer(
	mediaItems: Collection<MediaItem>,
	startIndex: Int
)
```
| 파라미터 | 타입 | 설명 |
|:----:|:---:|:----:|
| mediaItems | Collection<[MediaItem](https://developer.android.com/reference/androidx/media3/common/MediaItem)> | 재생하려는 [미디어 아이템](https://developer.android.com/reference/androidx/media3/common/MediaItem) 목록|
| startIndex | Int | 목록 중에서 처음 재생할 미디어 아이템의 index.<br>0 이상 mediaItems 개수 - 1 이하의 값이어야 합니다. |

<div align="right">
참고: <a href="https://developer.android.com/reference/androidx/media3/common/MediaItem">MediaItem</a>, 
<a href="https://developer.android.com/media/media3/exoplayer/media-items">Media items</a>
</div>

<br><br>
```kotlin
fun Context.presentMediaPlayer(
    mediaItems: Collection<MediaItem>,
    startIndex: Int,
    configuration: MediaPlayerActivityConfiguration
)
```
| 파라미터 | 타입 | 설명 |
|:----:|:---:|:----:|
| mediaItems | Collection<[MediaItem](https://developer.android.com/reference/androidx/media3/common/MediaItem)> | 재생하려는 [미디어 아이템](https://developer.android.com/reference/androidx/media3/common/MediaItem) 목록|
| startIndex | Int | 목록 중에서 처음 재생할 미디어 아이템의 index.<br>0 이상 mediaItems 개수 - 1 이하의 값이어야 합니다. |
|configuration|[MediaPlayerActivityConfiguration](../media-player-activity-configuration/home.md)|설정 값|

<div align="right">
참고: <a href="https://developer.android.com/reference/androidx/media3/common/MediaItem">MediaItem</a>, 
<a href="https://developer.android.com/media/media3/exoplayer/media-items">Media items</a>
</div>

<br><br>
```kotlin
fun Context.presentMediaPlayer(uri: String)
```
| 파라미터 | 타입 | 설명 |
|:-----:|:---:|:----:|
| uri | String | 재생하려는 문자열 형태의 미디어 주소 |

<br><br>
```kotlin
fun Context.presentMediaPlayer(
    uri: String,
    configuration: MediaPlayerActivityConfiguration
)
```
| 파라미터 | 타입 | 설명 |
|:-----:|:---:|:----:|
| uri | String | 재생하려는 문자열 형태의 미디어 주소 |
|configuration|[MediaPlayerActivityConfiguration](../media-player-activity-configuration/home.md)|설정 값|

<br><br>
```kotlin
fun Context.presentMediaPlayer(uri: Uri)
```
| 파라미터 | 타입 | 설명 |
|:----:|:---:|:----:|
| uri | [android.net.Uri](https://developer.android.com/reference/android/net/Uri) | 재생하려는 미디어 주소 |

<br><br>
```kotlin
fun Context.presentMediaPlayer(
    uri: Uri,
    configuration: MediaPlayerActivityConfiguration
)
```
| 파라미터 | 타입 | 설명 |
|:----:|:---:|:----:|
| uri | [android.net.Uri](https://developer.android.com/reference/android/net/Uri) | 재생하려는 미디어 주소 |
|configuration|[MediaPlayerActivityConfiguration](../media-player-activity-configuration/home.md)|설정 값|

<br><br>
## startMediaPlayerService
```kotlin
fun Context.startMediaPlayerService(appId: String)
```
|파라미터|타입|설명|
|:--:|:--:|:--:|
|appId|String|App 아이디|
<div align="right">
참고: <a href="../../how-to-use/home.md#액티비티-구성">액티비티 구성</a>
</div>

