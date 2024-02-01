# RepeatRange

MediaPlayer.RepeatRange는 구간 반복에 사용되는 데이터 클래스다.

```kotlin
data class RepeatRange(
    val start: Duration,
    val end: Duration
)
```

## 생성자 파라미터

|이름|타입|설명|필수|
|:--:|:--:|--|:--:|
|start|kotlin.time.Duration|구간 반복 시작 위치 값|O|
|end|kotlin.time.Duration|구간 반복 종료 위치 값|O|

## 속성
```kotlin
val start: Duration
val end: Duration
```

### start
|타입|설명|
|:--:|--|
|kotlin.time.Duration|구간 반복 시작 위치를 반환|

### end
|타입|설명|
|:--:|--|
|kotlin.time.Duration|구간 반복 종료 위치를 반환|

## 메서드
```kotlin
fun withStart(start: Duration): RepeatRange
fun withEnd(end: Duration): RepeatRange
```

### withStart()
|파라미터|타입|반환 타입|설명|
|:--:|:--:|:--:|--|
|start|kotlin.time.Duration|RepeatRange|구간 반복 시작 위치를 업데이트한 오브젝트를 반환|

### withEnd()
|파라미터|타입|반환 타입|설명|
|:--:|:--:|:--:|--|
|end|kotlin.time.Duration|RepeatRange|구간 반복 종료 위치를 업데이트한 오브젝트를 반환|

## 사용 예제
```kotlin
mediaPlayer.repeatRange = 
    MediaPlayer.RepeatRange(
        0.milliseconds,
        mediaPlayer.duration.milliseconds
    )

val oldA = mediaPlayer.repeatRange?.start	// 0s
val oldB = mediaPlayer.repeatRange?.end		// 미디어 전체 길이 (예: 7m 19s)

mediaPlayer.repeatRange = mediaPlayer.repeatRange.withStart(1.seconds) 	// 0s -> 1s

mediaPlayer.repeatRange = mediaPlayer.repeatRange.withEnd(10.seconds)	// 7m 19s -> 10s 
```
