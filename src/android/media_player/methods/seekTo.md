# seekTo()

MediaPlayer.seekTo()는 입력된 시간 위치로 이동하기 위한 메서드입니다.
```kotlin
fun seekTo(position: Duration)
```

|파라미터|타입|설명|
|:--:|:--:|---|
|position|kotlin.time.Duration|입력된 파라미터로 재생 위치를 이동합니다.|

\
사용 예제
```kotlin
mediaPlayer.seekTo(30.seconds)
val currentTime = mediaPlayer.currentTime	// 30s
```
