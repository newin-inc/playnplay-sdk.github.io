# SubtitleTrack

```kotlin
import com.newin.nplayer.sdk.extensions.SubtitleTrack
```

```kotlin
class SubtitleTrack : Track
```

[Track](../track/home.md) 클래스를 확장한 클래스로, 자막 트랙에 사용되는 클래스입니다. 

<div align="right">
참고: <a href="../track/home.md">Track</a><br>
<a href="../../interface/player/home.md#subtitletracks">subtitleTracks</a>
</div>

아래와 같은 MIME type의 자막 트랙에 대해 다중 자막 선택을 지원합니다.

|||
|:--:|:--:|
|[MimeTypes.TEXT_VTT](https://developer.android.com/reference/kotlin/androidx/media3/common/MimeTypes#TEXT_VTT())|"application/vtt"|
|[MimeTypes.APPLICATION_SUBRIP](https://developer.android.com/reference/kotlin/androidx/media3/common/MimeTypes#APPLICATION_SUBRIP())|"application/x-subrip"|
|SAMI|"application/smil+xml"|

<div align="right">
참고: <a href="https://developer.android.com/reference/androidx/media3/common/Format#sampleMimeType()">sampleMimeType</a>
</div>