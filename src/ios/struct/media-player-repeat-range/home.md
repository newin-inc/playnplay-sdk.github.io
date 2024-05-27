# MediaPlayer.RepeatRange

```swift
extension MediaPlayer {

    struct RepeatRange: Equatable
}
```

반복 모드에서 사용되는 구조체입니다. 반복 구간의 시작 위치와 종료 위치를 설정하고 변경할 수 있습니다.

<br>

# 생성자

```swift
init(start: Duration, end: Duration)
```

|이름|타입|설명|필수|
|:--:|:--:|:--:|:--:|
|start|[Duration](../../struct/duration/home.md)|반복 구간의 시작 위치|O|
|end|[Duration](../../struct/duration/home.md)|반복 구간의 종료 위치|O|

<br>

# 속성

## end

```swift
var end: Duration
```

|타입|설명|
|:--:|:--:|
|[Duration](../../struct/duration/home.md)|반복 구간의 종료 위치|

## start

```swift
var start: Duration
```

|타입|설명|
|:--:|:--:|
|[Duration](../../struct/duration/home.md)|반복 구간의 시작 위치|

<br>

# 메서드

## with(end:) -> RepeatRange

```swift
func with(end: Duration) -> MediaPlayer.RepeatRange
```

|파라미터|타입|반환 타입|설명|
|:--:|:--:|:--:|:--:|
|end|[Duration](../../struct/duration/home.md)|[MediaPlayer.RepeatRange](./home.md)|반복 구간 종료 위치를 변경한 뒤 구간 범위를 반환|

## with(start:) -> RepeatRange

```swift
func with(start: Duration) -> MediaPlayer.RepeatRange
```

|파라미터|타입|반환 타입|설명|
|:--:|:--:|:--:|:--:|
|start|[Duration](../../struct/duration/home.md)|[MediaPlayer.RepeatRange](./home.md)|반복 구간 시작 위치를 변경한 뒤 구간 범위를 반환|

