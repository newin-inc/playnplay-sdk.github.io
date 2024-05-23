# AudioTrack

```swift
class AudioTrack : MediaTrack  
```
<div align="right">
부모 클래스: <a href="../media-track/home.md">MediaTrack</a>
</div>

[MediaTrack](../media-track/home.md)를 확장한 클래스로, 오디오 트랙에 사용되는 클래스입니다.

<br><br>
# 속성

## channels
```swift
var channels: Int! { get }
```

| 타입 | 설명 | 설정 |
|:--:|:--:|:--:|
|Int!|채널 수|불가능|

오디오 채널 수를 나타내는 속성입니다.

## sampleRate
```swift
var sampleRate: Double! { get }
```

| 타입 | 설명 | 설정 |
|:--:|:--:|:--:|
|Double!|샘플링 레이트|불가능|

오디오 샘플링 레이트를 나타내는 속성입니다.