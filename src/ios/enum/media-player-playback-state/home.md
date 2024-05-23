# MediaPlayer.PlaybackState

```swift
extension MediaPlayer {

    public enum PlaybackState {
}
```
현재 미디어 상태를 나타냅니다.
<div align="right">
참고: <a href="../../class/media-player/home.md#playbackstate">playbackState</a>
</div>

<br><br>
# 케이스

## buffering
```swift
case buffering
```
미디어를 읽어오는 상태

## ended
```swift
case ended
```
미디어가 목록의 마지막이며, 마지막 재생 위치에 도달한 상태

## idle
```swift
case idle
```
미디어를 완전히 중지한 상태

## ready
```swift
case ready
```
미디어가 준비된 상태 또는 로딩이 완료된 상태
