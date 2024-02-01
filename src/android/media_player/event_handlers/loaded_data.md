# LoadedData

EventHandler.LoadedData는 미디어 트랙이 로딩되었을 때 사용하기 위한 핸들러입니다.
(참고. 해당 이벤트 처리 이전에 LoadedMetadata 이벤트를 처리함)

<div align="right">
이벤트 리스너: <a href="../event_listeners/on_loaded_data.md">onLoadedData()</a>
</div>

```kotlin
data class LoadedData(val listener: () -> Unit)
```

\
사용 예제
```kotlin
mediaPlayer.addEventHandler(EventHandler.LoadedData {
    val audioTracks = mediaPlayer.audioTracks	// 오디오 트랙들
})
```
