# SubtitleView

```kotlin
import com.newin.nplayer.sdk.SubtitleView
```

```kotlin
class SubtitleView(context: Context) : WebView(context)
```

Media3에서 제공하는 기본 자막 화면으로는 HTML이 포함된 자막을 표현할 수 없습니다. HTML이 포함된 자막을 화면에 출력하고 싶을 경우에는 SDK에서 제공하는 [presentMediaPlayer()](../context/home.md#presentmediaplayer)를 사용하면, 추가적인 구현없이 출력 가능합니다.<br>
만약 SDK에서 제공하는 [presentMediaPlayer()](../context/home.md#presentmediaplayer)를 사용하지 않는다면, 이 클래스를 사용하면 됩니다. 단, Media3의 기본 자막 화면을 사용하지 않아야 화면에 자막이 이중으로 출력되지 않습니다. 이때, 사용 방법은 [displayCue](#displaycue)를 참고하세요.

# 메서드

## displayCue

```kotlin
fun displayCues(cueList: List<Cue>)
```

| 파라미터 | 타입 | 설명 |
|:--:|:--:|:--:|
|cueList|List<[Cue](https://developer.android.com/reference/androidx/media3/common/text/Cue)>|자막 큐 목록|

자막 화면에 자막 큐를 보여주는 메서드입니다.<br>
[Player.Listener](https://developer.android.com/reference/androidx/media3/common/Player.Listener)의 [onCues](https://developer.android.com/reference/androidx/media3/common/Player.Listener#onCues(androidx.media3.common.text.CueGroup)) 에서 해당 메서드를 호출하여 [onCues](https://developer.android.com/reference/androidx/media3/common/Player.Listener#onCues(androidx.media3.common.text.CueGroup)) 의 파라미터 [큐 그룹](https://developer.android.com/reference/androidx/media3/common/text/CueGroup)의 속성인 [큐 목록](https://developer.android.com/reference/androidx/media3/common/text/CueGroup#cues())을 넘겨주면, 현재 재생 위치에 해당되는 자막을 출력할 수 있습니다.

<div align="right">
참고: <a href="https://developer.android.com/reference/androidx/media3/common/Player.Listener#onCues(androidx.media3.common.text.CueGroup)">onCues</a>
</div>