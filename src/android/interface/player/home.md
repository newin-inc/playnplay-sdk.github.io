# Player

```kotlin
import androidx.media3.common.Player
```
```java
public interface Player 
```
```kotlin
val Player.audioTracks: List<Track>
val Player.currentWatermarkSettings: WatermarkSettings?
val Player.isSeekable: Boolean
val Player.subtitleTracks: List<Track>
val Player.videoTracks: List<Track>

fun Player.enterPictureInPicture(activity: Activity, sourceRectHint: Rect? = null)
fun Player.enterPictureInPicture(activity: Activity, sourceView: View? = null)
fun Player.selectTrack(track: Track)
```
<div align="right">
참고: <a href="https://developer.android.com/reference/androidx/media3/common/Player">Player</a>
</div>

## 속성

### audioTracks
```kotlin
val Player.audioTracks: List<Track>
```
| 타입 | 설명 | 설정 |
|:----:|---|:---:|
|List\<Track\>|오디오 트랙 목록|불가능|

<div align="right">
참고: <a href="../../class/audio-track/home.md">AudioTrack</a>
</div>
현재 재생 중인 미디어의 오디오 트랙을 가져오는 속성입니다.

<br><br>
### currentWatermarkSettings
```kotlin
val Player.currentWatermarkSettings: WatermarkSettings?
```
| 타입 | 설명 | 설정 |
|:----:|---|:---:|
|[WatermarkSettings](../../class/watermark-settings/home.md)|오디오 트랙 목록|불가능|

현재 워터마크 설정 상태를 반환하는 속성입니다.
<div align="right">
참고: <a href="../../class/watermark-settings/home.md">WatermarkSettings</a>
</div>

<br><br>
### isSeekable
```kotlin
val Player.isSeekable: Boolean
```
| 타입 | 설명 | 설정 |
|:----:|---|:---:|
|Boolean|Seek 기능 사용 가능 여부|불가능|

현재 플레이어에서 Seek 기능을 사용할 수 있는지 여부를 반환하는 속성입니다.

<br><br>
### subtitleTracks
```kotlin
val Player.subtitleTracks: List<Track>
```
| 타입 | 설명 | 설정 |
|:----:|---|:---:|
|List\<Track\>|자막 트랙 목록|불가능|
<div align="right">
참고: <a href="../../class/subtitle-track/home.md">SubtitleTrack</a>
</div>
현재 재생 중인 미디어의 자막 트랙을 가져오는 속성입니다.

<br><br>
### videoTracks
```kotlin
val Player.videoTracks: List<Track>
```
| 타입 | 설명 | 설정 |
|:----:|---|:---:|
|List\<Track\>|비디오 트랙 목록|불가능|
<div align="right">
참고: <a href="../../class/video-track/home.md">VideoTrack</a>
</div>
현재 재생 중인 미디어의 비디오 트랙을 가져오는 속성입니다.

## 메서드

### enterPictureInPicture
```kotlin
fun Player.enterPictureInPicture(activity: Activity, sourceRectHint: Rect? = null)
```
|파라미터|타입|설명|
|:--:|:--:|---|
|activity|Activity|현재 액티비티|
|sourceRectHint|Rect?|[setSourceRectHint](https://developer.android.com/reference/android/app/PictureInPictureParams.Builder#setSourceRectHint(android.graphics.Rect)) 참고|

```kotlin
fun Player.enterPictureInPicture(activity: Activity, sourceView: View? = null)
```
|파라미터|타입|설명|
|:--:|:--:|---|
|activity|Activity|현재 액티비티|
|sourceView|View?|현재 뷰|


화면 속 화면 모드로 전환하는 메서드입니다.

사용 예제: 현재 재생되는 미디어를 화면 속 화면 모드로 전환하는 예제
```kotlin
import com.newin.nplayer.sdk.extensions.enterPictureInPicture

val activity = context.activity() ?: return
player.enterPictureInPicture(activity, this)
```

<br><br>
### selectTrack
```kotlin
fun Player.selectTrack(track: Track)
```
|파라미터|타입|설명|
|:--:|:--:|---|
|track|Track|활성화 할 (오디오,비디오,자막)트랙|

<div align="right">
참고: <a href="../../class/track/home.md">Track</a>, <a href="../../class/audio-track/home.md">AudioTrack</a>, <a href="../../class/subtitle-track/home.md">SubtitleTrack</a>, <a href="../../class/video-track/home.md">VideoTrack</a>
</div>
트랙을 선택하여 활성화하는 메서드입니다.
