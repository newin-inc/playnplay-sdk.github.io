# PlaybackInfoRepository

```swift
class PlaybackInfoRepository
```

재생 정보 저장소를 나타내는 클래스입니다. 미디어의 uri를 알고 있으면, 정적 속성 [shared](#shared)와 메서드 [find(by:)](#findby)를 사용하여 해당 url의 미디어 아이템 정보를 가져올 수 있습니다.

<br>

# 정적 속성

## shared

```swift
static var shared: PlaybackInfoRepository
```

|타입|설명|설정|
|:--:|--|:--:|
|[PlaybackInfoRepository](#playbackinforepository)|현재 재생 정보 저장소에 접근하기 위한 속성|불가능|

재생 정보 저장소에 접근하기 위한 정적 속성입니다. 아래에 언급되는 메서드를 호출할 때, PlaybackInfoRepository.shared를 사용하여 접근할 수 있습니다.

<br>

# 메서드

## find(by:)

```swift
func find(by url: URL) -> PlaybackInfo?
```

|파라미터|타입|반환 타입|설명|
|:---:|:--:|:--:|---|
|url|[URL](https://developer.apple.com/documentation/foundation/url)|[PlaybackInfo](../../protocol/playback-info/home.md)?|미디어 uri를 입력하여 재생 정보를 반환|

<div align="right">
참고: <a href="../../protocol/playback-info/home.md">PlaybackInfo</a>
</div>