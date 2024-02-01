# currentTime

MediaPlayer.currentTime은 현재 재생 위치를 Duration 단위로 지정합니다.

| 타입 | 설명 | 설정 |
|:---:|----|:---:|
| kotlin.time.Duration | 설정 시, 재생하고 싶은 특정 위치<br>반환 시, 현재 재생 시점| 가능 |

\
사용 예제
```kotlin
mediaPlayer.currentTime = 20.seconds // 20초로 가기

val currentTime = mediaPlayer.currentTime // 20s
```
