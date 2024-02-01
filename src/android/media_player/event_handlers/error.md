# Error

EventHandler.Error는 에러가 발생하여 리소스를 로드할 수 없을 때 사용하기 위한 핸들러입니다.

<div align="right">
이벤트 리스너: <a href="../event_listeners/on_error.md">onError()</a><br>
참고: <a href="https://developer.android.com/reference/kotlin/androidx/media3/common/PlaybackException">PlaybackException</a>
</div>

```kotlin
data class Error(val listener: (PlaybackException) -> Unit)
```

\
사용 예제
```kotlin
mediaPlayer.addEventHandler(EventHandler.Error {
    handleError(it.errorCode)
})
```