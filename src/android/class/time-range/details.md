# 속성
```kotlin
val start: Duration
val end: Duration
```

## start
|타입|설명|
|:--:|--|
|[kotlin.time.Duration](https://kotlinlang.org/api/latest/jvm/stdlib/kotlin.time/-duration/)|구간 시작 위치 값을 반환|

<br><br>
## end
|타입|설명|
|:--:|--|
|[kotlin.time.Duration](https://kotlinlang.org/api/latest/jvm/stdlib/kotlin.time/-duration/)|구간 종료 위치 값을 반환|

<br><br>
## 사용 예제
```kotlin
val timeRange = TimeRange(0.milliseconds, 5.seconds)
val start = timeRange.start // 0s
val end = timeRange.duration    // 5s
```
