# seeking

MediaPlayer.seeking은 미디어가 탐색 중이지를 나타내는 속성입니다. 현재 미디어가 새로운 위치로 이동하고 있거나 탐색중이면 true를 반홥합니다.

|타입|설명|설정|
|:--:|--|:--:|
|Boolean|현재 미디어가 새로운 위치로 이동하고 있는지(탐색 중인지) 여부|불가능|

\
사용 예제
```kotlin
if (mediaPlayer.seeking) {
    mediaPlayer.pause()
}
```

