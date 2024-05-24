# PlaybackFinishReason

```swift
enum PlaybackFinishReason
```

재생 종료의 원인을 나타내는 열거형입니다.

<div align="right">
참고: <a href="../../protocol/event-listeners/home.md#onplaybackfinishmediaitempositiondurationreason">onPlaybackFinish(mediaItem:position:duration:reason:)</a><br>
<a href="../event-handlers/home.md#playbackfinish">MediaPlayer.EventHandler.PlaybackFinish</a>
</div>

# 케이스

## ended
```swift
case ended
```
미디어가 끝까지 재생되어 종료된 경우

## error
```swift
case error
```
오류로 인해 재생이 종료된 경우

## userExited
```swift
case userExited
```
다른 미디어로 이동하거나 미디어를 종료하는 등 사용자가 미디어 재생을 제어한 경우

