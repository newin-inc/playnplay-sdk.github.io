# MediaPlayerInfoView

```kotlin
import com.newin.nplayer.sdk.MediaPlayerInfoView
```

```kotlin
open class MediaPlayerInfoView(context: Context) : FrameLayout(context)
```

미디어 플레이어 [제어 화면을 커스터마이징](../media-player-control-view/home.md)할 때, 탐색 위치나 볼륨 등 사용자 제어 값을 기반으로 하는 기능을 추기하고 싶을 때가 있습니다. 이때 [이 클래스](#mediaplayerinfoview)를 확장하여 구현하면 됩니다.

직접 구현한 미디어 플레이어 정보 화면을 미디어 플레이어에 적용하기 위해서는 [액티비티](../../how-to-use/home.md#액티비티-구성)를 구성하는 부분, 즉 onCreate 메서드에 아래 코드를 추가하면 됩니다.

```kotlin
MediaPlayerActivity.setDefaultInfoViewClass(<클래스 이름>::class.java)
```

<div align="right">
참고: <a href="../../how-to-use/home.md#액티비티-구성">액티비티 구성</a><br>
<a href="../media-player-control-view/home.md">MediaPlayerControlView</a>
</div>

# 속성

## mediaPlayer

```kotlin
val mediaPlayer: MediaPlayer
```

| 타입 | 설명 | 설정 |
|:--:|:--:|:--:|
|[MediaPlayer](../../interface/media-player/home.md)|현재 재생 중인 미디어 플레이어|불가능|

현재 미디어 플레이어에 접근하는 속성입니다. 

<div align="right">
참고: <a href="../../interface/media-player/home.md">MediaPlayer</a>
</div>

<br>

# 오버라이드 가능한 메서드

## onBrightnessChange

```kotlin
open fun onBrightnessChange(brightness: Float)
```

| 파라미터 | 타입 | 설명 | 범위 |
|:--:|:--:|:--:|:--:|
|brightness|Float|화면 밝기|0.0~1.0|

화면 밝기가 변경될 때, 추가로 처리해야할 작업이 있을 경우에 이 메서드를 오버라이드하면 됩니다.

## onCreate

```kotlin
open fun onCreate()
```

미디어 플레이어 정보 화면이 생성될 때, 추가로 처리해야할 작업이 있을 경우에 이 메서드를 오버라이드하면 됩니다. 미디어 플레이어 정보 화면은 미디어 플레이어가 생성될 때 생성됩니다.

## onDestroy

```kotlin
open fun onDestroy()
```

미디어 플레이어 정보 화면이 제거될 때, 추가로 처리해야할 작업이 있을 경우에 이 메서드를 오버라이드하면 됩니다.

## onRateChange

```kotlin
open fun onRateChange(playbackRate: Float)
```

| 파라미터 | 타입 | 설명 |범위|
|:--:|:--:|:--:|:--:|
|playbackRate|Float|재생 속도|0.1~4.0|

재생 속도가 변경될 때, 추가로 처리해야할 작업이 있을 경우에 이 메서드를 오버라이드하면 됩니다.

## onVolumeChange

```kotlin
open fun onVolumeChange(volume: Float)
```

| 파라미터 | 타입 | 설명 | 범위 |
|:--:|:--:|:--:|:--:|
|volume|Float|디바이스 음량|0.0~1.0|

볼륨이 변경될 때, 추가로 처리해야할 작업이 있을 경우에 이 메서드를 오버라이드하면 됩니다.

<br>

# 오버라이드 가능한 탐색 관련 메서드

[탐색을 시작](#onbeginseekgesture)하는 시점부터 [탐색 과정](#oncontinueseekgesture), 그리고 [종료](#onendseekgesture)하기 전까지의 모든 단계에 추가적인 작업을 수행할 수 있는 오버라이드 가능한 메서드를 제공합니다. 탐색과 관련하여 보다 더 자세한 설명은 [MediaPlayerControlView](../media-player-control-view/home.md)의 [오버라이드 가능한 탐색 관련 메서드](../media-player-control-view/home.md#오버라이드-가능한-탐색-관련-메서드)를 참고하세요.

## onBeginSeekGesture

```kotlin
open fun onBeginSeekGesture()
```

사용자가 탐색을 시작할 때 추가로 처리해야 할 작업이 있을 경우에 이 메서드를 오버라이드하여 구현하면 됩니다.

<div align="right">
참고: <a href="#oncontinueseekgesture">onContinueSeekGesture</a><br>
<a href="#onendseekgesture">onEndSeekGesture</a><br>
</div>

## onContinueSeekGesture

```kotlin
open fun onContinueSeekGesture(position: Duration)
```

| 파라미터 | 타입 | 설명 |
|:--:|:--:|:--:|
|position|[java.time.Duration](https://developer.android.com/reference/java/time/Duration)|탐색하려는 미디어 위치|

사용자가 탐색을 하는 중 추가로 처리해야 할 작업이 있을 경우에 이 메서드를 오버라이드하여 구현하면 됩니다. 여기서 position 값은 탐색 방향과 정도(드래그 거리, 시간 등)에 따라 계산된 탐색하려는 미디어의 위치입니다.

<div align="right">
참고: <a href="#onbeginseekgesture">onBeginSeekGesture</a><br>
<a href="#onendseekgesture">onEndSeekGesture</a>
</div>

## onEndSeekGesture

```kotlin
open fun onEndSeekGesture()
```

사용자가 탐색을 종료할 때 추가로 처리해야 할 작업이 있을 경우에 이 메서드를 오버라이드하여 구현하면 됩니다.

<div align="right">
참고: <a href="#onbeginseekgesture">onBeginSeekGesture</a><br>
<a href="#oncontinueseekgesture">onContinueSeekGesture</a>
</div>
