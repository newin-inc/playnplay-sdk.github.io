# 속성
```kotlin
val start: Duration
val end: Duration
```

## start
|타입|설명|
|:--:|--|
|[java.time.Duration](https://developer.android.com/reference/java/time/Duration)|구간 시작 위치 값을 반환|

<br><br>
## end
|타입|설명|
|:--:|--|
|[java.time.Duration](https://developer.android.com/reference/java/time/Duration)|구간 종료 위치 값을 반환|

<br><br>
## 사용 예제
```kotlin
val timeRange = TimeRange(Duration.ofSeconds(0), Duration.ofSeconds(5))
val start = timeRange.start.seconds // 0
val end = timeRange.duration.seconds    // 5
```
