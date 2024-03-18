# 설정

앞에 보여준 [사용 방법](../../how-to-use/home.md)대로 구현하여 presentMediaPlayer를 호출하면, 안드로이드 SDK의 미디어 플레이어 뷰를 사용할 수 있습니다. MediaPlayerView는 PlayerView를 확장한 클래스기 때문에, PlayerView에서 제공하는 기능을 그대로 이용할 수 있습니다. 

```kotlin
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.media3.common.MediaItem
import com.newin.nplayer.sdk.extensions.presentMediaPlayer
import com.newin.nplayer.sdk.extensions.startMediaPlayerService
import com.newin.nplayer.sdk.withDrmConfiguration

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        if (savedInstanceState == null) {
            startMediaPlayerService("xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxx")  // App 아이디
        }
    }

    fun openMedia(uri: String) {
        val mediaItem = MediaItem.fromUri(uri) // "https://example.com/media.mp4"
            .withDrmConfiguration(
                appId = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxx",  // App 아이디
                userId = "사용자 아이디"
            )
        presentMediaPlayer(mediaItem)
    }
}
```