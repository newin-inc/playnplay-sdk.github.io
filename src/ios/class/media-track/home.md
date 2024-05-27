# MediaTrack

```swift
class MediaTrack : CustomStringConvertible
```

[AudioTrack](../audio-track/home.md), [TextTrack](../text-track/home.md), [VideoTrack](../video-track/home.md)의 부모 클래스입니다.

<br><br>
# 속성

## codecName

```swift
var codecName: String { get }
```

|타입|설명|설정|
|:--:|:--:|:--:|
|String|코덱 이름|불가능|

## isSelected

```swift
var isSelected: Bool { get set }
```

|타입|설명|설정|
|:--:|:--:|:--:|
|Bool|현재 트랙이 선택(활성화) 되었는지 여부|가능|

## label

```swift
var label: String? { get }
```

|타입|설명|설정|
|:--:|:--:|:--:|
|String?|라벨|불가능|

## language

```swift
var language: String? { get }
```

|타입|설명|설정|
|:--:|:--:|:--:|
|String?|언어|불가능|