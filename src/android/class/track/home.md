# Track

```kotlin
sealed class Track(
    val type: @TrackType Int
) {
    val format: Format
    val isSelected: Boolean

    override fun toString(): String
}
```
<div align="right">
참고: <a href="https://developer.android.com/reference/androidx/media3/common/C.TrackType">C.TrackType</a>
</div>

[AudioTrack](../audio-track/home.md), [SubtitleTrack](../subtitle-track/home.md), [VideoTrack](../video-track/home.md)에 사용하기 위한 클래스입니다.

## 속성

### type
```kotlin
val type: @TrackType Int
```
```java
public @interface TrackType {}

public static final int TRACK_TYPE_AUDIO = 1;
public static final int TRACK_TYPE_VIDEO = 2;
public static final int TRACK_TYPE_TEXT = 3;
```
현재 트랙이 오디오 트랙(1) 인지, 비디오 트랙(2) 인지, 자막 트랙(3) 인지 알려주는 속성입니다. 

<br><br>
### format
```kotlin
val format: Format
```
<div align="right">
참고: <a href="https://developer.android.com/reference/androidx/media3/common/Format">Format</a>
</div>
현재 트랙의 format을 나타내는 속성입니다.

<br><br>
### isSelected
```kotlin
val isSelected: Boolean
```
현재 트랙이 선택되었는지 여부를 나타내는 속성입니다.

## 메서드

### toString
```kotlin
override fun toString(): String
```
현재 트랙을 문자열로 표시해주는 메서드입니다.
