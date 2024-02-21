# VideoTrack

```swift
public class VideoTrack : MediaTrack {

    public var width: Int! { get }

    public var height: Int! { get }
}
```
<div align="right">
부모 클래스: <a href="../media-track/home.md">MediaTrack</a>
</div>

비디오 트랙에 사용되는 클래스입니다.

## 사용 예제
```swift
if !mediaPlayer.videoTracks.isEmpty,
    let width = mediaPlayer.videoTracks[index].width,
    let height = mediaPlayer.videoTracks[index].height {
        showText("\(width)x\(height)")  // 1280x546
}
```