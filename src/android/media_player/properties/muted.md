# muted

MediaPlayer.muted는 음소거 여부를 나타내는 속성입니다. 음소거면 true, 아니면 false입니다.

|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|Boolean|오디오 음소거 여부|가능|false|

\
사용 예제
```kotlin
button.setOnClickListener {
    mediaPlayer.muted = !mediaPlayer.muted
}
```