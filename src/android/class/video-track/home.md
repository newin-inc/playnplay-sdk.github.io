# VideoTrack

```kotlin
class VideoTrack: Track(C.TRACK_TYPE_VIDEO, tracksGroup, index) { // C.TRACK_TYPE_VIDEO = 2

    val type: @TrackType Int
    val format: Format
    val isSelected: Boolean
}
```
<div align="right">
참고: <a href="https://developer.android.com/reference/androidx/media3/common/C#TRACK_TYPE_VIDEO()">C.TRACK_TYPE_VIDEO</a>
</div>

<br><br>
# 속성

## type
```kotlin
val type: @TrackType Int
```
현재 트랙이 무엇인지 알려주는 속성으로, 비디오를 의미하는 2를 반환합니다.<br>
비디오 트랙을 가져오기 위해서 타입을 비교할 필요없이, [Player.videoTracks](../../interface/player/home.md#videotracks)를 사용하면 됩니다.


<br><br>
## format
```kotlin
val format: Format
```
<div align="right">
참고: <a href="https://developer.android.com/reference/androidx/media3/common/Format">Format</a>
</div>
현재 트랙의 format을 나타내는 속성입니다.

<br><br>
## isSelected
```kotlin
val isSelected: Boolean
```
현재 트랙이 선택되었는지 여부를 나타내는 속성입니다.
