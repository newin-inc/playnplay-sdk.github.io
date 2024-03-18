# AudioTrack

```kotlin
class VideoTrack: Track(C.TRACK_TYPE_AUDIO, tracksGroup, index) { // C.TRACK_TYPE_AUDIO = 1

    val type: @TrackType Int
    val format: Format
    val isSelected: Boolean

    override fun toString(): String
}
```
<div align="right">
참고: <a href="https://developer.android.com/reference/androidx/media3/common/C#TRACK_TYPE_AUDIO()">C.TRACK_TYPE_AUDIO</a>
</div>

## 속성

### type
```kotlin
val type: @TrackType Int
```
현재 트랙이 무엇인지 알려주는 속성으로, 오디오를 의미하는 1을 반환합니다.<br>
오디오 트랙을 가져오기 위해서 타입을 비교할 필요없이, [Player.audioTracks](../../interface/player/home.md#audiotracks)를 사용하면 됩니다.

<br><br>
### format
```kotlin
val format: Format
```
<div align="right">
참고: <a href="https://developer.android.com/reference/androidx/media3/common/Format">Format</a>
</div>
현재 트랙의 format을 나타내는 속성입니다.

사용 예제: 첫 번째 오디오 트랙의 포맷을 가져오는 예제
```kotlin
import com.newin.nplayer.sdk.extensions.audioTracks

val audioTrack = player.audioTracks[0].format

println(audioTrack)
```
위 코드의 결과로 아래와 같이 화면에 출력됩니다.
```log
Format(0:2, null, null, audio/mp4a-latm, mp4a.40.2, 128000, und, [-1, -1, -1.0, null], [2, 44100])
```

<br><br>
### isSelected
```kotlin
val isSelected: Boolean
```
현재 트랙이 선택되었는지 여부를 나타내는 속성입니다.

사용 예제: 첫 번째 오디오 트랙이 활성화 되었는지 확인하는 예제
```kotlin
import com.newin.nplayer.sdk.extensions.audioTracks

val isSelected = player.audioTracks[0].isSelected
```

## 메서드

### toString
```kotlin
override fun toString(): String
```
현재 트랙을 문자열로 표시해주는 메서드입니다.

사용 예제: 첫 번째 오디오 트랙을 화면에 표시하는 예제
```kotlin
import com.newin.nplayer.sdk.extensions.audioTracks

val audioTrack = player.audioTracks[0]

println(audioTrack)
```
위 코드의 결과로 아래와 같이 화면에 출력됩니다.
```log
MP4A / 2ch / 44.1kHz / 한국어
```

