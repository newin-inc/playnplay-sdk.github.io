# seekForward()

MediaPlayer.seekForward()는 현재 위치에서 입력된 시간 후로 이동하기 위한 메서드입니다.
```kotlin
fun seekForward(increment: Duration)
```

|파라미터|타입|설명|
|:--:|:--:|---|
|increment|kotlin.time.Duration|새로운 위치 현재 위치에서 입력된 파라미터를 더한 결과입니다.<br>즉, 음수 입력 시, 입력된 파라미터의 절대값만큼 되돌아갑니다.|

\
사용 예제
```kotlin
mediaPlayer.seekTo(30.seconds)
	
mediaPlayer.seekForward(10.seconds)
val currentTime = mediaPlayer.currentTime	// 40s
```