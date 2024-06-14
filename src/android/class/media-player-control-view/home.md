# MediaPlayerControlView

```kotlin
import com.newin.nplayer.sdk.MediaPlayerControlView
```

```kotlin
open class MediaPlayerControlView(context: Context) : FrameLayout(context)
```

미디어 플레이어 제어 화면을 커스터마이징 하여 사용하려면, 이 오픈 클래스의 확장을 통해 가능합니다. 

직접 구현한 미디어 플레이어 제어 화면을 미디어 플레이어에 적용하기 위해서는 [액티비티](../../how-to-use/home.md#액티비티-구성)를 구성하는 부분, 즉 onCreate 메서드에 아래 코드를 추가하면 됩니다.

```kotlin
MediaPlayerActivity.setDefaultControlViewClass(<클래스 이름>::class.java)
```

<div align="right">
참고: <a href="../../how-to-use/home.md#액티비티-구성">액티비티 구성</a>
</div>

# 속성

## mediaPlayer

```kotlin
val mediaPlayer: MediaPlayer?
```

| 타입 | 설명 | 설정 |
|:--:|:--:|:--:|
|[MediaPlayer](../../interface/media-player/home.md)?|현재 컨트롤러 화면의 미디어 플레이어|불가능|

현재 컨트롤러 화면의 미디어 플레이어에 접근하는 속성입니다. 

<div align="right">
참고: <a href="../../interface/media-player/home.md">MediaPlayer</a>
</div>

<br>

# 오픈 메서드

## onChangeConfiguration

```kotlin
open fun onChangeConfiguration(configuration: MediaPlayerActivityConfiguration)
```

| 파라미터 | 타입 | 설명 |
|:--:|:--:|:--:|
|configuration|[MediaPlayerActivityConfiguration](../media-player-activity-configuration/home.md)|미디어 플레이어 설정 값|

미디어 플레이어 설정 값을 미디어 플레이어에 적용할 때, 추가로 처리할 작업이 있을 경우에 이 메서드를 오버라이드하면 됩니다.

## onSetPlayer

```kotlin
open fun onSetPlayer(player: MediaPlayer?)
```

| 파라미터 | 타입 | 설명 |
|:--:|:--:|:--:|
|player|[MediaPlayer](../../interface/media-player/home.md)?|미디어 플레이어|

미디어 플레이어가 생성될 때, 추가로 처리해야할 작업이 있을 경우에 이 메서드를 오버라이드하면 됩니다.

<br>

# 탐색 관련 오픈 메서드

사용자의 드래그 방향에 따라 미디어 재생 위치를 변경하는 기능이 있습니다. 사용자가 드래그를 하면, 아래 순서대로 메서드를 호출합니다.<br>
사용자가 드래그 하기 위해 화면에 손을 갖다 대면, [onBeginSeekGesture()](#onbeginseekgesture)가 호출됩니다. 화면에서 손을 떼지 않고 드래그를 하는 동안에는 [onContinueSeekGesture()](#oncontinueseekgesture)가 호출되고, 드래그의 방향과 정도에 따라 이동하려는 위치 및 위치 차이가 화면에 표시됩니다. 화면에서 손을 때면, [onEndSeekGesture()](#onendseekgesture)가 호출되고 해당 위치로 이동합니다.<br>

## onBeginSeekGesture

```kotlin
open fun onBeginSeekGesture()
```

사용자가 드래그를 시작할 때 추가로 처리해야 할 작업이 있을 경우에 이 메서드를 오버라이드하여 구현하면 됩니다.

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
|position|[java.time.Duration](https://developer.android.com/reference/java/time/Duration)|이동하려는 미디어 위치|

사용자가 드래그를 하는 중 추가로 처리해야 할 작업이 있을 경우에 이 메서드를 오버라이드하여 구현하면 됩니다. 여기서 position 값은 드래그 방향과 정도에 따라 계산된 이동하려는 미디어의 위치입니다.

<div align="right">
참고: <a href="#onbeginseekgesture">onBeginSeekGesture</a><br>
<a href="#onendseekgesture">onEndSeekGesture</a>
</div>

## onEndSeekGesture

```kotlin
open fun onEndSeekGesture()
```

사용자가 드래그를 종료할 때 추가로 처리해야 할 작업이 있을 경우에 이 메서드를 오버라이드하여 구현하면 됩니다.

<div align="right">
참고: <a href="#onbeginseekgesture">onBeginSeekGesture</a><br>
<a href="#oncontinueseekgesture">onContinueSeekGesture</a>
</div>

<br>

# 메서드

### beginSeekBack

```kotlin
fun beginSeekBack()
```

빠르게 되감기 할 때 사용하는 메서드입니다. 이 메서드가 호출되면 목표 재생 위치가 화면에 표시되며, 시간이 지남에 따라 화면에 표시된 재생 위치는 지속적으로 감소합니다. [endSeekBack()](#endseekback)이 호출되기 전까지 미디어 재생에는 아무런 영향을 미치지 않으며, [endSeekBack()](#endseekback)이 호출되는 순간, 표시된 위치로 이동합니다.

<div align="right">
참고: <a href="#endseekback">endSeekBack</a>
</div>

### beginSeekForward

```kotlin
fun beginSeekForward()
```

빠르게 감기 할 때 사용하는 메서드입니다. 이 메서드가 호출되면 목표 재생 위치가 화면에 표시되며, 시간이 지남에 따라 화면에 표시된 재생 위치는 지속적으로 증가합니다. [endSeekForward()](#endseekforward)가 호출되기 전까지 미디어 재생에는 아무런 영향을 미치지 않으며, [endSeekForward()](#endseekforward)가 호출되는 순간, 미디어는 표시된 위치로 이동합니다.

<div align="right">
참고: <a href="#endseekforward">endSeekForward</a>
</div>

### endSeekBack

```kotlin
fun endSeekBack()
```

빠르게 되감기 할 때 사용하는 메서드입니다. [beginSeekBack()](#beginseekback)을 호출한 이후에 이 메서드를 사용하여, 미디어를 원하는 위치로 이동시킬 수 있습니다.

<div align="right">
참고: <a href="#beginseekback">beginSeekBack</a>
</div>

### endSeekForward

```kotlin
fun endSeekForward()
```

빠르게 감기 할 때 사용하는 메서드입니다. [beginSeekForward()](#beginseekforward)를 호출한 이후에 이 메서드를 사용하여, 미디어를 원하는 위치로 이동시킬 수 있습니다.


<div align="right">
참고: <a href="#beginseekforward">beginSeekForward</a>
</div>

### lockScreen

```kotlin
fun lockScreen()
```

잠금 화면을 사용할 때 이 메서드를 사용하면 됩니다.

### openSettings

```kotlin
fun openSettings()
```

[트랙 설정](../../media-player-view/screen-layout/details.md#3-트랙-설정-버튼)창을 열 때 이 메서드를 사용하면 됩니다. [비디오 트랙](../../media-player-view/screen-layout/details.md#1-비디오-트랙-설정), [오디오 트랙](../../media-player-view/screen-layout/details.md#2-오디오-트랙-설정), [자막 트랙](../../media-player-view/screen-layout/details.md#3-자막-트랙-설정) 설정을 할 수 있는 창이 열립니다.

<div align="right">
참고: <a href="../../media-player-view/screen-layout/details.md#3-트랙-설정-버튼">트랙 설정</a>
</div>

### resetHideCallbacks

```kotlin
fun resetHideCallbacks()
```

[removehidecallbacks()](#removehidecallbacks)를 사용한 이후, 기존의 [컨트롤러 자동 숨김 설정](../media-player-activity-configuration/home.md#controllershowtimeout)으로 되돌아가기 위해서는 이 메서드를 사용하면 됩니다.

<div align="right">
참고: <a href="#removehidecallbacks">removeHideCallbacks</a>
</div>

### removeHideCallbacks

```kotlin
fun removeHideCallbacks()
```

[미디어 플레이어 설정](../media-player-activity-configuration/home.md)의 [controllerShowTimeout](../media-player-activity-configuration/home.md#controllershowtimeout) 설정에 따라 일정 시간 후 컨트롤러는 자동으로 사라집니다. 이 메서드를 사용하면 컨트롤러를 일시적으로 계속 켜놓을 수 있습니다. 원래 설정으로 되돌아가려면 [resetHideCallbacks()](#resethidecallbacks)를 사용하면 됩니다.

<div align="right">
참고: <a href="#resetHideCallbacks">resetHideCallbacks</a>
</div>

### setResizeMode

```kotlin
fun setResizeMode(resizeMode: Int)
```

| 파라미터 | 타입 | 설명 |
|:--:|:--:|:--:|
|resizeMode|Int|[화면 크기 상태](https://developer.android.com/reference/androidx/media3/ui/AspectRatioFrameLayout.ResizeMode)|

미디어 플레이어 화면 크기를 변경할 때 이 메서드를 호출하면 됩니다.

<div align="right">
참고: <a href="https://developer.android.com/reference/androidx/media3/ui/AspectRatioFrameLayout.ResizeMode">AspectRatioFrameLayout.ResizeMode</a><br>
<a href="../../media-player-view/screen-layout/details.md#7-화면-크기-조절-버튼">화면 크기 조절 버튼</a>
</div>

### unlockScreen

```kotlin
fun unlockScreen()
```

잠금 화면을 종료할 때 이 메서드를 사용하면 됩니다.