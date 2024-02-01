# LoadedMetadata

EventHandler.LoadedMetadata는 메타데이터가 로딩되었을 때 사용하기 위한 핸들러입니다.
(참고. 해당 이벤트 처리 이후 LoadedData 이벤트를 처리함)

<div align="right">
이벤트 리스너: <a href="../event_listeners/on_loaded_metadata.md">onLoadedMetadata() </a>
</div>

```kotlin
data class LoadedMetadata(val listener: () -> Unit)
```

\
사용 예제
```kotlin
mediaPlayer.addEventHandler(EventHandler.LoadedMetadata {
    val title = mediaPlayer.mediaMetadata.title // 미디어 타이틀
})
```
