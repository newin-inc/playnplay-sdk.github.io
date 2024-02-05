# RepeatRange

MediaPlayer.RepeatRange는 반복 모드에서 사용되는 구조체입니다. 반복 구간의 시작 위치와 종료 위치를 설정하고 변경할 수 있습니다.

```swift
init(start: Duration, end: Duration)
```

## 생성자 파라미터
|이름|타입|설명|필수|
|:--:|:--:|:--|:--:|
|start|Duration|반복 구간의 시작 위치|O|
|end|Duration|반복 구간의 종료 위치|O|

## 속성
```swift
var start: Duration
var end: Duration
```

### start
|타입|설명|
|:--:|:--|
|Duration|반복 구간의 시작 위치|

### end
|타입|설명|
|:--:|:--|
|Duration|반복 구간의 종료 위치|

## 메서드
```swift
func with(start: Duration) -> RepeatRange
func with(end: Duration) -> RepeatRange
```

### with(start:) -> RepeatRange

|파라미터|타입|반환 타입|설명|
|:--:|:--:|:--:|:--|
|start|Duration|RepeatRange|반복 구간 시작 위치를 변경한 뒤 구간 범위를 반환|

### with(end:) -> RepeatRange
|파라미터|타입|반환 타입|설명|
|:--:|:--:|:--:|:--|
|end|Duration|RepeatRange|반복 구간 종료 위치를 변경한 뒤 구간 범위를 반환|


### 사용 예제
```swift
let repeatRange = MediaPlayer.RepeatRange(
    start: .zero,
    end: .seconds(50)
)
mediaPlayer.repeatRange = repeatRange		// 0초 ~ 50초 구간을 반복

...

if let repeatRange = mediaPlayer.repeatRange {
    mediaPlayer.repeatRange = repeatRange.with(
        end: repeatRange.end + .seconds(10)
    )
}						// 0초 ~ 60초 구간을 반복
```