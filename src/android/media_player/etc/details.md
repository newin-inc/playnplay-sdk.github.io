# RepeatRange

MediaPlayer.RepeatRange는 구간 반복에 사용되는 데이터 클래스입니다.

```kotlin
data class RepeatRange(
    val start: Duration,
    val end: Duration
)
```

## 생성자 파라미터

|이름|타입|설명|필수|
|:--:|:--:|--|:--:|
|start|[kotlin.time.Duration](https://kotlinlang.org/api/latest/jvm/stdlib/kotlin.time/-duration/)|구간 반복 시작 위치 값|O|
|end|[kotlin.time.Duration](https://kotlinlang.org/api/latest/jvm/stdlib/kotlin.time/-duration/)|구간 반복 종료 위치 값|O|

## 속성
```kotlin
val start: Duration
val end: Duration
```

### start
|타입|설명|
|:--:|--|
|[kotlin.time.Duration](https://kotlinlang.org/api/latest/jvm/stdlib/kotlin.time/-duration/)|구간 반복 시작 위치를 반환|

### end
|타입|설명|
|:--:|--|
|[kotlin.time.Duration](https://kotlinlang.org/api/latest/jvm/stdlib/kotlin.time/-duration/)|구간 반복 종료 위치를 반환|

## 메서드
```kotlin
fun withStart(start: Duration): RepeatRange
fun withEnd(end: Duration): RepeatRange
```

### withStart()
|파라미터|타입|반환 타입|설명|
|:--:|:--:|:--:|--|
|start|[kotlin.time.Duration](https://kotlinlang.org/api/latest/jvm/stdlib/kotlin.time/-duration/)|RepeatRange|구간 반복 시작 위치를 업데이트한 오브젝트를 반환|

### withEnd()
|파라미터|타입|반환 타입|설명|
|:--:|:--:|:--:|--|
|end|[kotlin.time.Duration](https://kotlinlang.org/api/latest/jvm/stdlib/kotlin.time/-duration/)|RepeatRange|구간 반복 종료 위치를 업데이트한 오브젝트를 반환|

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


<br><br><br><br>

--------
# TimeRange

com.newin.nplayer.sdk.utils.TimeRange는 buffered 속성에서 사용되는 데이터 클래스입니다.

```kotlin
data class TimeRange(val start: Duration, val duration: Duration)
```

## 생성자 파라미터

|이름|타입|설명|필수|
|:--:|:--:|--|:--:|
|start|[kotlin.time.Duration](https://kotlinlang.org/api/latest/jvm/stdlib/kotlin.time/-duration/)|구간 시작 위치 값|O|
|duration|[kotlin.time.Duration](https://kotlinlang.org/api/latest/jvm/stdlib/kotlin.time/-duration/)|구간 길이 값|O|

## 속성
```kotlin
val start: Duration
val end: Duration
```

### start
|타입|설명|
|:--:|--|
|[kotlin.time.Duration](https://kotlinlang.org/api/latest/jvm/stdlib/kotlin.time/-duration/)|구간 시작 위치 값을 반환|

### end
|타입|설명|
|:--:|--|
|[kotlin.time.Duration](https://kotlinlang.org/api/latest/jvm/stdlib/kotlin.time/-duration/)|구간 종료 위치 값을 반환|

## 사용 예제
```kotlin
val timeRange = TimeRange(0.milliseconds, 5.seconds)
val start = timeRange.start	    // 0s
val end = timeRange.duration    // 5s
```

<br><br><br><br>

--------
# TimeRanges

com.newin.nplayer.sdk.utils.TimeRanges는 buffered 속성에서 사용되는 데이터 클래스다.

```kotlin
data class TimeRanges(private val ranges: ArrayList<TimeRange>)
```

## 생성자 파라미터
|이름|타입|설명|필수|
|:--:|:--:|--|:--:|
|ranges|ArrayList\<[TimeRange](#timerange)\>|구간 범위 값들의 array list|O|

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
|index|Int|[kotlin.time.Duration](https://kotlinlang.org/api/latest/jvm/stdlib/kotlin.time/-duration/)|index 번째 데이터의 구간 시작 위치를 반환|

### end()
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