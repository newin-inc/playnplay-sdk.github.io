# 속성

## start
```swift
var start: Duration
```

|타입|설명|
|:--:|:--|
|[Duration](../../struct/duration/home.md)|반복 구간의 시작 위치|

## end
```swift
var end: Duration
```

|타입|설명|
|:--:|:--|
|[Duration](../../struct/duration/home.md)|반복 구간의 종료 위치|

# 메서드

## with(start:) -> RepeatRange
```swift
func with(start: Duration) -> MediaPlayer.RepeatRange
```

|파라미터|타입|반환 타입|설명|
|:--:|:--:|:--:|:--|
|start|[Duration](../../struct/duration/home.md)|[MediaPlayer.RepeatRange](./home.md)|반복 구간 시작 위치를 변경한 뒤 구간 범위를 반환|

## with(end:) -> RepeatRange
```swift
func with(end: Duration) -> MediaPlayer.RepeatRange
```

|파라미터|타입|반환 타입|설명|
|:--:|:--:|:--:|:--|
|end|[Duration](../../struct/duration/home.md)|[MediaPlayer.RepeatRange](./home.md)|반복 구간 종료 위치를 변경한 뒤 구간 범위를 반환|


## 사용 예제
```swift
let repeatRange = MediaPlayer.RepeatRange(
    start: .zero,
    end: .seconds(50)
)
mediaPlayer.repeatRange = repeatRange   // 0초 ~ 50초 구간을 반복

...

if let repeatRange = mediaPlayer.repeatRange {
    mediaPlayer.repeatRange = repeatRange.with(
        end: repeatRange.end + .seconds(10)
    )
} // 0초 ~ 60초 구간을 반복
```
