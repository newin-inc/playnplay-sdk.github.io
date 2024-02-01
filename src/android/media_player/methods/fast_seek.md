# fastSeek()

MediaPlayer.fastSeek()는 입력된 시간으로 바로 이동하기 위한 메서드입니다.
```kotlin
fun fastSeek(to: Duration)
```

|파라미터|타입|설명|
|:---:|:--:|---|
|to|kotlin.time.Duration|재생하고자 하는 위치 값|

* 주의: 해당 메서드의 원래 목적은 정확한 위치보다는 새로운 위치에서 더 빠르게 재생을 하도록 하는 것이었습니다. 그러나 안드로이드에서는 현재 정확한 위치와 빠른 재생을 동시에 수행할 수 없기 때문에, 현재는 currentTime, seekTo()를 사용한 것과 유사한 결과를 얻게 됩니다. 즉, 이 메서드를 사용하면 정확한 위치로 이동하게 됩니다. 향후 안드로이드에서 이러한 기능을 제공할 경우, 원래 목적에 맞게  업데이트될 예정입니다.

\
사용 예제
```kotlin
mediaPlayer.fastSeek(50.seconds)
```
