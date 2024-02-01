# buffered

MediaPlayer.buffered는 버퍼에 있는 미디어 리소스의 구간을 반환합니다.

| 타입 | 설명 | 설정 |
|:---:|---|:---:|
| [com.newin.nplayer.<br>sdk.utils.TimeRanges](https://docs.google.com/document/d/1knklvK2oKIm_LpN2VJ3-cRyE-vLNLZn5EfpxkOiKdNE/edit?pli=1#heading=h.mecjw7ph5zd7) | 현재 버퍼에 담고 있는 미디어 리소스의 구간 데이터 | 불가능 |

\
사용 예제
```kotlin
val start = mediaPlayer.buffered.start(0)	// 첫 번째 timeRange의 시작 위치
val end = mediaPlayer.buffered.end(0)		// 첫 번째 timeRange의 종료 위치
```
이때, 사용되는 start(index)와 end(index)의 타입은 [kotlin.time.Duration](https://kotlinlang.org/api/latest/jvm/stdlib/kotlin.time/-duration/)입니다.
