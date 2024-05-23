# PlaybackFinishReason

```kotlin
import com.newin.nplayer.sdk.PlaybackFinishReason
```
```kotlin
enum class PlaybackFinishReason {
    COMPLETED,
    ERROR,
    USER_REQUEST,
}
```

재생 종료의 원인을 나타내는 열거형입니다.

<div align="right">
참고: <a href="../../class/event-handlers/home.md#playbackfinish">PlayabackFinish</a><br>
<a href="../../interface/event-listeners/home.md#onplaybackfinish">onPlaybackFinish()</a>
</div>

## COMPLETED
```kotlin
PlaybackFinishReason.COMPLETED
```
미디어가 끝까지 재생되어 종료된 경우

## ERROR
```kotlin
PlaybackFinishReason.ERROR
```
오류로 인해 재생이 종료된 경우

## USER_REQUEST
```kotlin
PlaybackFinishReason.USER_REQUEST
```
다른 미디어로 이동하거나 미디어를 종료하는 등 사용자가 미디어 재생을 제어한 경우
