# 속성

## start
```kotlin
val start: Duration
```
|타입|설명|
|:--:|--|
|[kotlin.time.Duration](https://kotlinlang.org/api/latest/jvm/stdlib/kotlin.time/-duration/)|구간 반복 시작 위치를 반환|

## end
```kotlin
val end: Duration
```
|타입|설명|
|:--:|--|
|[kotlin.time.Duration](https://kotlinlang.org/api/latest/jvm/stdlib/kotlin.time/-duration/)|구간 반복 종료 위치를 반환|

## 사용 예제
```kotlin
mediaPlayer.repeatRange = 
    MediaPlayer.RepeatRange(
        0.milliseconds,
        mediaPlayer.duration.milliseconds
    )

val oldA = mediaPlayer.repeatRange?.start	// 0s
val oldB = mediaPlayer.repeatRange?.end		// 미디어 전체 길이 (예: 7m 19s)
```

<br><br><br><br>

# 메서드

## withStart
```kotlin
fun withStart(start: Duration): RepeatRange
```
|파라미터|타입|반환 타입|설명|
|:--:|:--:|:--:|--|
|start|[kotlin.time.Duration](https://kotlinlang.org/api/latest/jvm/stdlib/kotlin.time/-duration/)|RepeatRange|구간 반복 시작 위치를 업데이트한 오브젝트를 반환|

## withEnd
```kotlin
fun withEnd(end: Duration): RepeatRange
```
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

mediaPlayer.repeatRange = mediaPlayer.repeatRange.withStart(1.seconds) 	// 시작 위치 -> 1s

mediaPlayer.repeatRange = mediaPlayer.repeatRange.withEnd(10.seconds)	// 종료 위치 -> 10s 
```
