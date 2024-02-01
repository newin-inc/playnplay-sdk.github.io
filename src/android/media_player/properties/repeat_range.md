# repeatRange

MediaPlayer.repeatRange는 반복 구간 범위를 나타내는 속성입니다.
null이 아닌 값으로 설정을 했을 경우 해당 구간을 지속해서 반복 재생합니다. start가 설정되어 있지 않을 경우에는 반복 구간의 시작은 미디어의 맨 앞부분이며, end가 설정되어 있지 않을 경우에는 반복 구간의 끝은 미디어의 맨 마지막 부분으로 간주합니다.

|타입|설명|설정|
|:--:|--|:--:|
|[MediaPlayer.RepeatRange](../etc/repeat_range.md)?|반복 구간 범위|가능|

\
사용 예제
```kotlin
mediaPlayer.repeatRange = MediaPlayer.RepeatRange(10.seconds, 2.minutes)
val start1 = mediaPlayer.repeatRange?.start 	// 10s
val end1 = mediaPlayer.repeateRange?.end    // 2m

mediaPlayer.repeatRange = mediaPlayer.repeatRange?.withStart(20.seconds)
val repeatRange = mediaPlayer.repeatRange	
// RepeatRange(start=20s, end=2m)

mediaPlayer.repeatRange = mediaPlayer.repeatRange?.withEnd(30.seconds)
val start2 = mediaPlayer.repeatRange?.start     // 20s
val end2 = mediaPlayer.repeateRange?.end    // 30s
```
