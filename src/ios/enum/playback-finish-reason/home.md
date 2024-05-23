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

## complete
```swift
case complete
```
미디어가 끝까지 재생되어 종료된 경우

## error
```swift
case error
```
미디어에 오류가 있어서 재생이 종료된 경우

## userRequest
```swift
case userRequest
```
사용자가 미디어를 종료했을 경우

