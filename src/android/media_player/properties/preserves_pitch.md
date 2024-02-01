# preservesPitch

MediaPlayer.preservesPitch는 재생 속도에 따른 오디오 피치 유지 여부를 나타내는 속성입니다. 값이 true면 재생 속도가 변해도 오디오 피치는 변함 없으며, false일 경우 재생 속도에 따라 오디오 피치가 변합니다.

|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|Boolean|오디오 피치 유지 여부|가능|true|

\
사용 예제
```kotlin
mediaPlayer.preservesPitch = false // 재생 속도에 따라 오디오 피치가 변하게 됨
```
