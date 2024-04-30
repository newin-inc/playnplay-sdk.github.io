# 속성

## start
```kotlin
val start: Duration
```
|타입|설명|
|:--:|--|
|[java.time.Duration](https://developer.android.com/reference/java/time/Duration)|구간 반복 시작 위치를 반환|

<br><br>
## end
```kotlin
val end: Duration
```
|타입|설명|
|:--:|--|
|[java.time.Duration](https://developer.android.com/reference/java/time/Duration)|구간 반복 종료 위치를 반환|

<br><br>
## 사용 예제
```kotlin
mediaPlayer.repeatRange = 
    MediaPlayer.RepeatRange(
        Duration.ZERO,
        mediaPlayer.duration
    )

val oldA = mediaPlayer.repeatRange?.start?.seconds	// 0
val oldB = mediaPlayer.repeatRange?.end?.seconds		// 미디어 전체 길이 (예: 719)
```

<br><br><br>
------
------
# 메서드

## withStart
```kotlin
fun withStart(start: Duration): RepeatRange
```
|파라미터|타입|반환 타입|설명|
|:--:|:--:|:--:|--|
|start|[java.time.Duration](https://developer.android.com/reference/java/time/Duration)|RepeatRange|구간 반복 시작 위치를 업데이트한 오브젝트를 반환|

<br><br>
## withEnd
```kotlin
fun withEnd(end: Duration): RepeatRange
```
|파라미터|타입|반환 타입|설명|
|:--:|:--:|:--:|--|
|end|[java.time.Duration](https://developer.android.com/reference/java/time/Duration)|RepeatRange|구간 반복 종료 위치를 업데이트한 오브젝트를 반환|

<br><br>
## 사용 예제
```kotlin
mediaPlayer.repeatRange = 
    MediaPlayer.RepeatRange(
        Duration.ZERO,
        mediaPlayer.duration
    )

mediaPlayer.repeatRange = mediaPlayer.repeatRange.withStart(Duration.ofSeconds(1)) 	// 시작 위치 -> 1s

mediaPlayer.repeatRange = mediaPlayer.repeatRange.withEnd(Duration.ofSeconds(10))	// 종료 위치 -> 10s 
```
