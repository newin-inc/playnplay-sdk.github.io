# TimeRange

com.newin.nplayer.sdk.utils.TimeRange는 buffered 속성에서 사용되는 데이터 클래스입니다.

```kotlin
data class TimeRange(val start: Duration, val duration: Duration)
```

## 생성자 파라미터

|이름|타입|설명|필수|
|:--:|:--:|--|:--:|
|start|kotlin.time.Duration|구간 시작 위치 값|O|
|duration|kotlin.time.Duration|구간 길이 값|O|

## 속성
```kotlin
val start: Duration
val end: Duration
```

### start
|타입|설명|
|:--:|--|
|kotlin.time.Duration|구간 시작 위치 값을 반환|

### end
|타입|설명|
|:--:|--|
|kotlin.time.Duration|구간 종료 위치 값을 반환|

## 사용 예제
```kotlin
val timeRange = TimeRange(0.milliseconds, 5.seconds)
val start = timeRange.start		// 0s
val end = timeRange.duration 		// 5s
```
