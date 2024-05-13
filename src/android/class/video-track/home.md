# VideoTrack

```kotlin
class VideoTrack: Track
```
[Track](../track/home.md) 클래스를 확장한 클래스로, 비디오 트랙에 사용되는 클래스입니다.

<div align="right">
참고: <a href="../track/home.md">Track</a>
</div>

# 속성

## type
```kotlin
val type: @TrackType Int
```
|타입|설명|
|:--:|:--:|
|@[TrackType](https://developer.android.com/reference/androidx/media3/common/C.TrackType) Int|비디오를 의미하는 [C.TRACK_TYPE_VIDEO](https://developer.android.com/reference/androidx/media3/common/C#TRACK_TYPE_VIDEO())를 반환|

현재 트랙이 무엇인지 알려주는 속성으로, 비디오를 의미하는 [C.TRACK_TYPE_VIDEO](https://developer.android.com/reference/androidx/media3/common/C#TRACK_TYPE_VIDEO())를 반환합니다.<br>
비디오 트랙을 가져오기 위해서 타입을 비교할 필요없이, [Player.videoTracks](../../interface/player/home.md#videotracks)를 사용하면 됩니다.

<br><br>
## format
```kotlin
val format: Format
```
|타입|설명|
|:--:|:--:|
|[Format](https://developer.android.com/reference/androidx/media3/common/Format)|비디오 트랙의 [포맷](https://developer.android.com/reference/androidx/media3/common/Format)|

현재 트랙의 format을 나타내는 속성입니다.

<div align="right">
참고: <a href="https://developer.android.com/reference/androidx/media3/common/Format">Format</a>
</div>

<br><br>
## isSelected
```kotlin
val isSelected: Boolean
```
|타입|설명|
|:--:|:--:|
|Boolean|비디오 트랙의 선택 여부|

현재 트랙이 선택되었는지 여부를 나타내는 속성입니다.
