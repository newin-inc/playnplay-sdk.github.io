# TimeRanges

com.newin.nplayer.sdk.utils.TimeRanges는 buffered 속성에서 사용되는 데이터 클래스다.

```kotlin
data class TimeRanges(private val ranges: ArrayList<TimeRange>)
```

## 생성자 파라미터
|이름|타입|설명|필수|
|:--:|:--:|--|:--:|
|ranges|ArrayList<TimeRange>|구간 범위 값들의 array list|O|

## 속성
```kotlin
val length: Int
```

### length
|타입|설명|
|:--:|--|
|Int|구간 범위 값들의 개수를 반환|

## 메서드
```kotlin
fun start(index: Int): Duration
fun end(index: Int): Duration
```

### start()
|파라미터|타입|반환 타입|설명|
|:--:|:--:|:--:|--|
|index|Int|kotlin.time.Duration|index 번째 데이터의 구간 시작 위치를 반환|

### end()
|파라미터|타입|반환 타입|설명|
|:--:|:--:|:--:|--|
|index|Int|kotlin.time.Duration|index 번째 데이터의 구간 종료 위치를 반환|

## 사용 예제
```kotlin
val timeRange1 = TimeRange(0.milliseconds, 3.seconds)
val timeRange2 = TimeRange(3.seconds, 5.seconds)

val timeRanges = TimeRanges(
    arrayListOf(timeRange1, timeRange2)
)

val start = timeRanges.start(0) // 0s
val end = timeRanges.end(timeRanges.length - 1)	// 8s
```