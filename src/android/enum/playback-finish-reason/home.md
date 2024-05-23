# PlaybackFinishReason

```kotlin
import com.newin.nplayer.sdk.PlaybackFinishReason
```
```kotlin
enum class PlaybackFinishReason {
    Completed,
    Error,
    UserRequest,
}
```

재생 종료의 원인을 나타내는 열거형입니다.

<div align="right">
참고: <a href="../../class/event-handlers/home.md#playbackfinish">PlayabackFinish</a><br>
<a href="../../interface/event-listeners/home.md#onplaybackfinish">onPlaybackFinish()</a>
</div>

## COMPLETED
```kotlin
PlaybackFinishReason.Completed
```
미디어가 끝까지 재생되어 종료된 경우

## ERROR
```kotlin
PlaybackFinishReason.Error
```
오류로 인해 재생이 종료된 경우

## USER_REQUEST
```kotlin
PlaybackFinishReason.UserRequest
```
다른 미디어로 이동하거나 미디어를 종료하는 등 사용자가 미디어 재생을 제어한 경우
