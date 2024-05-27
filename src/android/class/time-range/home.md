# TimeRange

```kotlin
import com.newin.nplayer.sdk.utils.TimeRange
```

```kotlin
data class TimeRange(val start: Duration, val duration: Duration)
```

buffered 속성에서 사용되는 데이터 클래스입니다.

<br>

# 생성자 파라미터

|이름|타입|설명|필수|
|:--:|:--:|:--:|:--:|
|start|[java.time.Duration](https://developer.android.com/reference/java/time/Duration)|구간 시작 위치 값|O|
|duration|[java.time.Duration](https://developer.android.com/reference/java/time/Duration)|구간 길이 값|O|
