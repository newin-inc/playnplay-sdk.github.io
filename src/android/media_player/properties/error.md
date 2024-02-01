# error

MediaPlayer.error는 최근 발생한 에러를 나타내는 속성입니다.

|타입|설명|설정|
|:--:|--|:--:|
|PlaybackException?<br>(참고: [PlaybackException](https://developer.android.com/reference/kotlin/androidx/media3/common/PlaybackException))|최근에, 즉, 마지막으로 발생한 에러. 발생한 에러가 없을 경우 null을 반환|불가능|

\
사용 예제
```kotlin
when(mediaPlayer.error?.errorCode) {
    ERROR_CODE_TIMEOUT -> /** handle the case */
}
```
