# AudioTrack

```swift
public class AudioTrack : MediaTrack {

    public var channels: Int! { get }

    public var sampleRate: Double! { get }
}
```
<div align="right">
부모 클래스: <a href="../media-track/home.md">MediaTrack</a>
</div>

오디오 트랙에 사용되는 클래스입니다.

## 사용 예제
```swift
if !mediaPlayer.audioTracks.isEmpty,
    let sampleRate = mediaPlayer.audioTracks[index].sampleRate {
        displaySampleRate(sampleRate) // 44100.0
} 
```
