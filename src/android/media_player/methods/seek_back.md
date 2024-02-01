# seekBack()

MediaPlayer.seekBack()는 현재 위치에서 입력된 시간 전으로 이동하기 위한 메서드입니다.
```kotlin
fun seekBack(increment: Duration)
```

|파라미터|타입|설명|
|:---:|:--:|---|
|increment|kotlin.time.Duration|새로운 위치는 현재 위치에서 입력된 파라미터를 뺀 결과입니다.<br>즉, 음수 입력 시, 입력된 파라미터의 절대값만큼 후로 이동합니다.|

\
사용 예제
```kolint
mediaPlayer.seekTo(30.seconds)
	
mediaPlayer.seekBack(10.seconds)
val currentTime = mediaPlayer.currentTime   // 20s
```
