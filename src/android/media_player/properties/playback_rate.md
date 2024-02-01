# playbackRate

MediaPlayer.playbackRate는 미디어가 재생 속도를 나타내는 속성입니다. 정상 속도는 1.0이고, 1보다 작을 때는 느리게, 1보다 클 때는 빠르게 재생합니다. 이 때, 오디오 피치 유지 여부는 MediaPlayer.preservesPitch의 값으로 제어할 수 있습니다.

|타입|설명|설정|범위|기본값|
|:--:|--|:--:|:--:|:--:|
|Float|재생 속도|가능|0.1~4.0|1.0|

\
사용 예제
```kotlin
mediaPlayer.playbackRate = 2.0f
```