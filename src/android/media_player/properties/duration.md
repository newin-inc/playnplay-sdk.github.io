# duration

MediaPlayer.duration은 현재 미디어 길이를 나타냅니다. 재생 가능한 미디어가 없을 경우 [C.TIME_UNSET](https://developer.android.com/reference/kotlin/androidx/media3/common/C#TIME_UNSET())를 반환

|타입|설명|설정|
|:--:|--|:--:|
|kotlin.time.Duration|현재 미디어의 전체 길이|불가능|

\
사용 예제
```kotlin
val duration = mediaPlayer.duration // 2m 12s
```
