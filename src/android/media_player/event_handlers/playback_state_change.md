# PlaybackStateChange

EventHandler.PlaybackStateChange는 미디어 로딩 상태에 따른 처리, 즉, 버퍼링인지 준비가 된 상태인지, 끝이 났는지, 플레이어를 종료하였는지 등의 상황에 따라 처리하기 위한 핸들러입니다. 이벤트 리스너는 [Player.Listener](https://developer.android.com/reference/androidx/media3/common/Player.Listener#onPlaybackStateChanged(int))에서 제공하는 것을 사용하시면 됩니다.

<div align="right">
참고: <a href="https://developer.android.com/reference/androidx/media3/common/Player.State">Player.State</a>
</div>

```kotlin
data class PlaybackStateChange(val listener: (Int) -> Unit)
```

\
사용 예제
```kotlin
mediaPlayer.addEventHandler(
    EventHandler.PlaybackStateChange { playbackState in
        when (playbackState) {
            Player.STATE_BUFFERING -> TODO()
            Player.STATE_READY -> TODO()
            Player.STATE_IDLE -> TODO()
            Player.STATE_ENDED -> TODO() 
        }
    }
)
```

