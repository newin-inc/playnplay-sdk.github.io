# PlaybackInfoRepository

```swift
public class PlaybackInfoRepository {

    static public var shared: PlaybackInfoRepository

    public func find(by url: URL) -> PlaybackInfo?
}
```

재생 정보 저장소를 나타내는 클래스입니다. 미디어의 uri를 알고 있으면, 속성 [shared](#shared)와 메서드 [find(by:)](#findby)를 사용하여 해당 url의 미디어 아이템 정보를 가져올 수 있습니다.

사용 예제: 현재 미디어의 마지막 재생 위치를 가져오는 예제
```swift
if let currentSrc = mediaPlayer.currentSrc {

    let playbackInfo = PlaybackInfoRepository.shared.find(by: currentSrc)

    if let lastPlayedTime = playbackInfo?.lastPlayedTime { // Duration 타입의 마지막 재생 위치
    }
}
```
<div align="right">
참고: <a href="../../protocol/playback-info/home.md">PlaybackInfo</a>
</div>

## 속성

### shared
```swift
static public var shared: PlaybackInfoRepository
```
|타입|설명|설정|
|:--:|--|:--:|
|PlaybackInfoRepository|현재 재생 정보 저장소에 접근하기 위한 속성|불가능|

사용 예제: 현재 미디어의 재생 정보를 가져오는 예제
```swift
if let currentSrc = mediaPlayer.currentSrc {

    let playbackInfo = PlaybackInfoRepository.shared.find(by: currentSrc)
}
```
<div align="right">
참고: <a href="#findby">find(by:)</a>
</div>

## 메서드

### find(by:)
```swift
public func find(by url: URL) -> PlaybackInfo?
```
|파라미터|타입|반환 타입|설명|
|:---:|:--:|:--:|---|
|url|[URL](https://developer.apple.com/documentation/foundation/url)|[PlaybackInfo](../../protocol/playback-info/home.md)?|미디어 uri를 입력하여 재생 정보를 반환|

<div align="right">
참고: <a href="../../protocol/playback-info/home.md">PlaybackInfo</a>
</div>

사용 예제: 현재 미디어의 만료 기간을 가져오는 예제
```swift
if let currentSrc = mediaPlayer.currentSrc {

    let playbackInfo = PlaybackInfoRepository.shared.find(by: currentSrc)

    if let expiresOn = playbackInfo?.expiresOn { // 2024-04-15 07:22:08 +0000

    }
}
```