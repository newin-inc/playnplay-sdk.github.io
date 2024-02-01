# paused

MediaPlayer.paused는 미디어가 일시 정지 상태인지 나타내는 속성입니다.
다음과 같은 조건 중 하나라도 해당할 때, true를 반환합니다.
1. playWhenReady의 값이 false일 때,
2. playbackState가 STATE_IDLE일 때 (제한된 리소스를 가지고 있을 때),
3. playbackState가 STATE_ENDED일 때 (미디어 재생이 끝났을 때).

|타입|설명|설정|
|:--:|--|:--:|
|Boolean|미디어 일시 정지 여부|불가능|

\
사용 예제
```kotlin
if (mediaPlayer.paused) {
    displayPlayButton()
}
```
