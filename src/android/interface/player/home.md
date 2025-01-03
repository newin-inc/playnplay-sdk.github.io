# Player

```kotlin
import androidx.media3.common.Player
```
플레이어 인터페이스를 확장하여, 아래와 같은 속성과 메서드를 제공합니다.

<div align="right">
참고: <a href="https://developer.android.com/reference/androidx/media3/common/Player">androidx.media3.common.Player</a>
</div>

<br>

# 속성

## audioTracks

```kotlin
val Player.audioTracks: List<Track>
```

| 타입 | 설명 | 설정 |
|:----:|---|:---:|
|List\<[Track](../../class/track/home.md)\>|오디오 트랙 목록|불가능|

현재 재생 중인 미디어의 오디오 트랙을 가져오는 속성입니다.

<div align="right">
참고: <a href="../../class/audio-track/home.md">AudioTrack</a>
</div>

## currentWatermarkSettings

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

## isSeekable

```kotlin
val Player.isSeekable: Boolean
```

| 타입 | 설명 | 설정 |
|:----:|---|:---:|
|Boolean|Seek 기능 사용 가능 여부|불가능|

현재 플레이어에서 Seek 기능을 사용할 수 있는지 여부를 반환하는 속성입니다.

## subtitleTracks

```kotlin
val Player.subtitleTracks: List<Track>
```

| 타입 | 설명 | 설정 |
|:----:|---|:---:|
|List\<[Track](../../class/track/home.md)\>|자막 트랙 목록|불가능|

현재 재생 중인 미디어의 자막 트랙을 가져오는 속성입니다.

<div align="right">
참고: <a href="../../class/subtitle-track/home.md">SubtitleTrack</a>
</div>

## videoTracks

```kotlin
val Player.videoTracks: List<Track>
```

| 타입 | 설명 | 설정 |
|:----:|---|:---:|
|List\<[Track](../../class/track/home.md)\>|비디오 트랙 목록|불가능|

현재 재생 중인 미디어의 비디오 트랙을 가져오는 속성입니다.

<div align="right">
참고: <a href="../../class/video-track/home.md">VideoTrack</a>
</div>

<br>

# 메서드


## deselectTrack

```kotlin
fun Player.deselectTrack(track: Track)
```

|파라미터|타입|설명|
|:--:|:--:|---|
|track|[Track](../../class/track/home.md)|선택을 해제할 (자막) 트랙|

트랙 선택을 해제하여 비활성화하는 메서드입니다. 자막 트랙만 해제 가능합니다.

<div align="right">
참고: <a href="../../class/track/home.md">Track</a><br>
<a href="../../class/subtitle-track/home.md">SubtitleTrack</a><br>
<a href="#selecttrack">selectTrack</a>
</div>

## enterPictureInPicture

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

## selectTrack

```kotlin
fun Player.selectTrack(track: Track)
```

|파라미터|타입|설명|
|:--:|:--:|---|
|track|[Track](../../class/track/home.md)|활성화 할 (오디오,비디오,자막)트랙|

트랙을 선택하여 활성화하는 메서드입니다.

<div align="right">
참고: <a href="../../class/track/home.md">Track</a><br>
<a href="../../class/audio-track/home.md">AudioTrack</a><br>
<a href="../../class/subtitle-track/home.md">SubtitleTrack</a><br>
<a href="../../class/video-track/home.md">VideoTrack</a><br>
<a href="#deselecttrack"></a>
</div>
