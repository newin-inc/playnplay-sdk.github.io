# MediaPlayer.RepeatRange

```kotlin
import com.newin.nplayer.sdk.MediaPlayer.RepeatRange
```

```kotlin
data class RepeatRange(
    val start: Duration,
    val end: Duration
) {
    fun withStart(start: Duration) = RepeatRange(start, end)
    fun withEnd(end: Duration) = RepeatRange(start, end)
}
```
구간 반복에 사용되는 데이터 클래스입니다.

## 생성자 파라미터

|이름|타입|설명|필수|
|:--:|:--:|--|:--:|
|start|[java.time.Duration](https://developer.android.com/reference/java/time/Duration)|구간 반복 시작 위치 값|O|
|end|[java.time.Duration](https://developer.android.com/reference/java/time/Duration)|구간 반복 종료 위치 값|O|

## 속성

### start
```kotlin
val start: Duration
```
|타입|설명|
|:--:|--|
|[java.time.Duration](https://developer.android.com/reference/java/time/Duration)|구간 반복 시작 위치를 반환|

<br><br>
### end
```kotlin
val end: Duration
```
|타입|설명|
|:--:|--|
|[java.time.Duration](https://developer.android.com/reference/java/time/Duration)|구간 반복 종료 위치를 반환|

------
------
## 메서드

### withStart
```kotlin
fun withStart(start: Duration): RepeatRange
```
|파라미터|타입|반환 타입|설명|
|:--:|:--:|:--:|--|
|start|[java.time.Duration](https://developer.android.com/reference/java/time/Duration)|RepeatRange|구간 반복 시작 위치를 업데이트한 오브젝트를 반환|

<br><br>
### withEnd
```kotlin
fun withEnd(end: Duration): RepeatRange
```
|파라미터|타입|반환 타입|설명|
|:--:|:--:|:--:|--|
|end|[java.time.Duration](https://developer.android.com/reference/java/time/Duration)|RepeatRange|구간 반복 종료 위치를 업데이트한 오브젝트를 반환|
