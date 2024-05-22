# MediaTrack

```swift
class MediaTrack : CustomStringConvertible
```

[AudioTrack](../audio-track/home.md), [TextTrack](../text-track/home.md), [VideoTrack](../video-track/home.md)의 부모 클래스입니다.

|속성|타입|설명|설정|
|:--:|:--:|:--:|:--:|
|isSelected|Bool|현재 트랙이 선택(활성화) 되었는지 여부|가능|
|codecName|String|코덱 이름|불가능|
|label|String?|라벨|불가능|
|language|String?|언어|불가능|