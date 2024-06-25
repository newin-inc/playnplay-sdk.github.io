# MediaPlayerControlView

```kotlin
import com.newin.nplayer.sdk.MediaPlayerControlView
```

```kotlin
open class MediaPlayerControlView(context: Context) : FrameLayout(context)
```

미디어 플레이어 제어 화면을 커스터마이징 하여 사용하려면, [이 클래스](#mediaplayercontrolview)의 확장을 통해 가능합니다. 사용자의 제어로 인해 변경된 값을 사용하고 싶을 경우에는 [MediaPlayerInfoView](../media-player-info-view/home.md) 클래스를 확장하여 사용하면 됩니다.

직접 구현한 미디어 플레이어 제어 화면을 미디어 플레이어에 적용하기 위해서는 [액티비티](../../how-to-use/home.md#액티비티-구성)를 구성하는 부분, 즉 onCreate 메서드에 아래 코드를 추가하면 됩니다.

```kotlin
MediaPlayerActivity.setDefaultControlViewClass(<클래스 이름>::class.java)
```

<div align="right">
참고: <a href="../../how-to-use/home.md#액티비티-구성">액티비티 구성</a><br>
<a href="../media-player-info-view/home.md">MediaPlayerInfoView</a><br>
</div>

# 속성

## mediaPlayer

```kotlin
val mediaPlayer: MediaPlayer
```

| 타입 | 설명 | 설정 |
|:--:|:--:|:--:|
|[MediaPlayer](../../interface/media-player/home.md)|현재 재생 중인 미디어 플레이어|불가능|

현재 재생 중인 미디어 플레이어에 접근하는 속성입니다. 

<div align="right">
참고: <a href="../../interface/media-player/home.md">MediaPlayer</a>
</div>

<br>

# 오버라이드 가능한 메서드

## onChangeConfiguration

```kotlin
open fun onChangeConfiguration(configuration: MediaPlayerActivityConfiguration)
```

| 파라미터 | 타입 | 설명 |
|:--:|:--:|:--:|
|configuration|[MediaPlayerActivityConfiguration](../media-player-activity-configuration/home.md)|미디어 플레이어 설정 값|

미디어 플레이어 설정 값을 미디어 플레이어에 적용할 때, 추가로 처리할 작업이 있을 경우에 이 메서드를 오버라이드하면 됩니다.

## onCreate

```kotlin
open fun onCreate()
```

미디어 플레이어 제어 화면이 생성될 때, 추가로 처리해야할 작업이 있을 경우에 이 메서드를 오버라이드하면 됩니다. 미디어 플레이어 제어 화면은 미디어 플레이어가 생성될 때 생성됩니다.

## onDestroy

```kotlin
open fun onDestroy()
```

미디어 플레이어 제어 화면이 제거될 때, 추가로 처리해야할 작업이 있을 경우에 이 메서드를 오버라이드하면 됩니다.

<br>

# 오버라이드 가능한 탐색 관련 메서드

사용자 드래그, 좌/우 방향키, 그리고 이 클래스에서 제공하는 메서드를 호출하여 미디어를 탐색하여 재생 위치를 변경할 수 있습니다. 이때, [탐색을 시작](#onbeginseekgesture)하는 시점부터 [탐색 과정](#oncontinueseekgesture), 그리고 [종료](#onendseekgesture)하기 전까지의 모든 단계에 추가적인 작업을 수행할 수 있는 오버라이드 가능한 메서드를 제공합니다.

### 1. 사용자 드래그

사용자가 드래그 하기 위해 화면에 손을 갖다 대면, [onBeginSeekGesture()](#onbeginseekgesture)가 호출됩니다. 화면에서 손을 떼지 않고 드래그를 하는 동안에는 [onContinueSeekGesture()](#oncontinueseekgesture)가 계속 호출되고, 드래그의 방향과 정도에 따라 탐색하려는 위치 값은 변경됩니다. 화면에서 손을 떼면, [onEndSeekGesture()](#onendseekgesture)가 호출되고 해당 위치로 이동합니다.

### 2. 좌/우 방향키

사용자가 방향키에 손을 갖다 대면, [onBeginSeekGesture()](#onbeginseekgesture)가 호출됩니다. 키에서 손을 떼지 않고 꾹 누르는 동안에는 [onContinueSeekGesture()](#oncontinueseekgesture)가 계속 호출되고, 꾹 누른 시간에 비례하여 탐색하려는 위치 값은 변경됩니다. 키에서 손을 떼면 [onEndSeekGesture()](#onendseekgesture)가 호출되고 해당 위치로 이동합니다.

### 3. 메서드 호출

[beginSeekBack()](#beginseekback)과 [endSeekBack()](#endseekback)을 순서대로 호출하거나, [beginSeekForward()](#beginseekforward)와 [endSeekForward()](#endseekforward)를 순서대로 호출하여, 앞/뒤로 탐색하는 기능이 있습니다.<br>
탐색하려는 방향에 따라 [beginSeekBack()](#beginseekback)(또는 [beginSeekForward()](#beginseekforward))를 사용하면, [onBeginSeekGesture()](#onbeginseekgesture)가 호출됩니다. [endSeekBack()](#endseekback)(또는 [endSeekForward()](#endseekforward))를 사용하기 전까지 [onContinueSeekGesture()](#oncontinueseekgesture)가 계속 호출되며, 탐색하려는 위치 값은 시간에 비례하여 변경됩니다. [endSeekBack()](#endseekback)(또는 [endSeekForward()](#endseekforward))를 사용하면, [onEndSeekGesture()](#onendseekgesture)가 호출되고 해당 위치로 이동합니다.


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

<br>

# 메서드

### beginSeekBack

```kotlin
fun beginSeekBack()
```

빠르게 되감기를 시작할 때 사용하는 메서드입니다. 이 메서드를 호출하면, [onBeginSeekGesture()](#onbeginseekgesture)를 호출합니다. 시간이 지남에 따라 탐색할 재생 위치는 지속적으로 감소합니다. [endSeekBack()](#endseekback)이 호출되기 전까지 미디어 재생에는 아무런 영향을 미치지 않으며, [onContinueSeekGesture()](#oncontinueseekgesture)를 반복해서 호출합니다. [endSeekBack()](#endseekback)이 호출되는 순간, 해당 위치로 이동하고, [onEndSeekGesture()](#onendseekgesture)를 호출합니다.

<div align="right">
참고: <a href="#endseekback">endSeekBack</a><br>
<a href="#onbeginseekgesture">onBeginSeekGesture()</a><br>
<a href="#oncontinueseekgesture">onContinueSeekGesture()</a><br>
<a href="#onendseekgesture">onEndSeekGesture</a>
</div>

### beginSeekForward

```kotlin
fun beginSeekForward()
```

빠르게 감기를 시작할 때 사용하는 메서드입니다. 이 메서드를 호출하면, [onBeginSeekGesture()](#onbeginseekgesture)를 호출합니다. 시간이 지남에 따라 탐색할 재생 위치는 지속적으로 증가합니다. [endSeekForward()](#endseekforward)가 호출되기 전까지 미디어 재생에는 아무런 영향을 미치지 않으며, [onContinueSeekGesture()](#oncontinueseekgesture)를 반복해서 호출합니다. [endSeekForward()](#endseekforward)가 호출되는 순간, 해당 위치로 이동하고, [onEndSeekGesture()](#onendseekgesture)를 호출합니다.

<div align="right">
참고: <a href="#endseekforward">endSeekForward</a><br>
<a href="#onbeginseekgesture">onBeginSeekGesture()</a><br>
<a href="#oncontinueseekgesture">onContinueSeekGesture()</a><br>
<a href="#onendseekgesture">onEndSeekGesture</a>
</div>

### endSeekBack

```kotlin
fun endSeekBack()
```

빠르게 되감기를 종료할 때 사용하는 메서드입니다. [beginSeekBack()](#beginseekback)을 호출한 이후에 이 메서드를 사용하여, 미디어를 원하는 위치로 이동시킬 수 있습니다. 이 메서드가 호출되면, [onEndSeekGesture()](#onendseekgesture)가 호출됩니다.

<div align="right">
참고: <a href="#beginseekback">beginSeekBack</a><br>
<a href="#onendseekgesture">onEndSeekGesture</a>
</div>

### endSeekForward

```kotlin
fun endSeekForward()
```

빠르게 감기를 종료할 때 사용하는 메서드입니다. [beginSeekForward()](#beginseekforward)를 호출한 이후에 이 메서드를 사용하여, 미디어를 원하는 위치로 이동시킬 수 있습니다. 이 메서드가 호출되면, [onEndSeekGesture()](#onendseekgesture)가 호출됩니다.

<div align="right">
참고: <a href="#beginseekforward">beginSeekForward</a><br>
<a href="#onendseekgesture">onEndSeekGesture</a>
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

### resetAutoHideControl

```kotlin
fun resetAutoHideControl()
```

[removeAutoHideControl()](#removeautohidecontrol)를 사용한 이후, 기존의 [컨트롤러 자동 숨김 설정](../media-player-activity-configuration/home.md#controllershowtimeout)으로 되돌아가기 위해서는 이 메서드를 사용하면 됩니다.

<div align="right">
참고: <a href="#removeautohidecontrol">removeAutoHideControl</a>
</div>

### removeAutoHideControl

```kotlin
fun removeAutoHideControl()
```

[미디어 플레이어 설정](../media-player-activity-configuration/home.md)의 [controllerShowTimeout](../media-player-activity-configuration/home.md#controllershowtimeout) 설정에 따라 일정 시간 후 컨트롤러는 자동으로 사라집니다. 이 메서드를 사용하면 컨트롤러를 일시적으로 계속 켜놓을 수 있습니다. 원래 설정으로 되돌아가려면 [resetAutoHideControl()](#resetautohidecontrol)를 사용하면 됩니다.

<div align="right">
참고: <a href="#resetautohidecontrol">resetAutoHideControl</a>
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