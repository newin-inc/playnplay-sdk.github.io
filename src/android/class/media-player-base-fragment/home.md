# MediaPlayerBaseFragment

```kotlin
import com.newin.nplayer.sdk.MediaPlayerBaseFragment
```

```kotlin
open class MediaPlayerBaseFragment : Fragment()
```

[androidx.fragment.app.Fragment](https://developer.android.com/reference/androidx/fragment/app/Fragment)를 상속한 미디어 플레이어 프레그먼의 기반 클래스입니다.

# 속성

## playerView

```kotlin
val playerView: MediaPlayerBaseView
```

| 타입 | 설명 | 설정 |
|:--:|:--:|:--:|
|[MediaPlayerBaseView](../media-player-base-view/home.md)|미디어 플레이어 뷰 객체|불가능|



## player

```kotlin
val player: MediaPlayer?
```

| 타입 | 설명 | 설정 |
|:--:|:--:|:--:|
|[MediaPlayer](../media-player-base-view/home.md)|미디어 플레이어 객체|불가능|

## parameters

```kotlin
val parameters: MediaPlayerBaseFragment.Parameters
```


| 타입 | 설명 | 설정 |
|:--:|:--:|:--:|
|[MediaPlayerBaseFragment.Parameters](../media-player-base-fragment-parameters/home.md)|미디어 플레이어 설정을 담고 있는 객체|불가능|

# 오버라이드 가능한 메서드

## onPlayerCreated

```kotlin
override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View
```

[MediaPlayerBaseView](../media-player-base-view/home.md)를 상속하여 만든 사용자 플레이어 뷰를 제공합니다. 오버라이드하지 않으면 SDK에서 기본으로 제공되는 플레이어 뷰 객체를 만듭니다.

참고: [android.android.app.Fragment.onCreateView](https://developer.android.com/reference/android/app/Fragment#onCreateView(android.view.LayoutInflater,%20android.view.ViewGroup,%20android.os.Bundle))

## onPlayerCreated

```kotlin
open fun onPlayerCreated(player: MediaPlayer)
```

[MediaPlayer](../../interface/media-player/home.md) 객체가 생성되면 호출됩니다.

## onDeviceRootedOrAppPlayerDetected

```kotlin
open fun onDeviceRootedOrAppPlayerDetected()
```

장치가 루팅되거나 앱 플레이어를 감지기하면 호출됩니다.
