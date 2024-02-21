# 속성

## length
```kotlin
val length: Int
```
|타입|설명|
|:--:|--|
|Int|구간 범위 값들의 개수를 반환|

# 메서드

## start
```kotlin
fun start(index: Int): Duration
```
|파라미터|타입|반환 타입|설명|
|:--:|:--:|:--:|--|
|index|Int|[kotlin.time.Duration](https://kotlinlang.org/api/latest/jvm/stdlib/kotlin.time/-duration/)|index 번째 데이터의 구간 시작 위치를 반환|

## end
```kotlin
fun end(index: Int): Duration
```
|파라미터|타입|반환 타입|설명|
|:--:|:--:|:--:|--|
|index|Int|[kotlin.time.Duration](https://kotlinlang.org/api/latest/jvm/stdlib/kotlin.time/-duration/)|index 번째 데이터의 구간 종료 위치를 반환|

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