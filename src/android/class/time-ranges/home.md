# TimeRanges

```kotlin
import com.newin.nplayer.sdk.utils.TimeRanges
```

```kotlin
data class TimeRanges
```

buffered 속성에서 사용되는 데이터 클래스입니다.

<br><br>
# 속성

## length
```kotlin
val length: Int
```
|타입|설명|
|:--:|:--:|
|Int|구간 범위 값들의 개수를 반환|

<br><br><br>
# 메서드

## start
```kotlin
fun start(index: Int): Duration
```
|파라미터|타입|반환 타입|설명|
|:--:|:--:|:--:|--|
|index|Int|[java.time.Duration](https://developer.android.com/reference/java/time/Duration)|index 번째 데이터의 구간 시작 위치를 반환|

<br><br>
## end
```kotlin
fun end(index: Int): Duration
```
|파라미터|타입|반환 타입|설명|
|:--:|:--:|:--:|--|
|index|Int|[java.time.Duration](https://developer.android.com/reference/java/time/Duration)|index 번째 데이터의 구간 종료 위치를 반환|
