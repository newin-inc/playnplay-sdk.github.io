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

<br>

# 사용 예제

## 미디어 플레이어 종료

```kotlin
(context as? Activity)?.finish()
```

현재 재생 중인 미디어 플레이어를 종료하려면 위와 같이 구현하면 됩니다.

## 화면 회전 잠금

### 화면 회전 잠금 설정

```kotlin
(context as? Activity)?.requestedOrientation = android.content.pm.ActivityInfo.SCREEN_ORIENTATION_LOCKED
```

현재 보이는 모드로 화면 회전 상태를 고정할 때 사용합니다.

### 화면 회전 잠금 해제 

```kotlin
(context as? Activity)?.requestedOrientation = android.content.pm.ActivityInfo.SCREEN_ORIENTATION_SENSOR
```

디바이스 회전 상태에 따라 화면을 자동으로 전환할 때 사용합니다.


## 구간 반복 모드

### 구간 반복 모드 해제

```kotlin
mediaPlayer.repeatRange = null
```

구간 반복 모드를 해제할 때는 위와 같이 사용하면 됩니다.

### 구간 반복 모드 설정

```kotlin
mediaPlayer.repeatRange = MediaPlayer.RepeatRange(Duration.ofSeconds(10), Duration.ofSeconds(20))
```

구간 반복 모드를 설정할 때는 위와 같이 사용하면 됩니다. 이 예제는 10초부터 20초 사이를 반복하도록 설정한 것입니다.

### 구간 반복 범위 수정

#### 구간 반복 시작 위치 수정

```kotlin
val startPosition = mediaPlayer.currentTime
mediaPlayer.repeatRange = mediaPlayer.repeatRange?.withStart(startPosition)
```

구간 반복 모드를 설정한 후, 시작 위치를 수정하려면 위와 같이 사용하면 됩니다. 이 예제는 현재 재생 위치를 구간 반복 시작 위치로 설정한 것입니다.
구간 반복 모드가 아닐 경우에는 동작하지 않습니다.

#### 구간 반복 종료 위치 수정

```kotlin
val endPosition = mediaPlayer.currentTime
mediaPlayer.repeatRange = mediaPlayer.repeatRange?.withEnd(endPosition)
```

구간 반복 모드를 설정한 후, 종료 위치를 수정하려면 위와 같이 사용하면 됩니다. 이 예제는 현재 재생 위치를 구간 반복 종료 위치로 설정한 것입니다.
구간 반복 모드가 아닐 경우에는 동작하지 않습니다.


## 미디어 재생 관련

### 미디어 재생 / 일시정지 토글

```kotlin
Util.handlePlayPauseButtonAction(mediaPlayer)
```

미디어를 재생하거나 일시 정지할 수 있습니다. [play()](../../interface/media-player/home.md#play)와 [pause()](../../interface/media-player/home.md#pause)를 직접 호출해도 되지만, 간단하게 재생과 일시정지를 토글하려면 위와 같이 구현하면 됩니다.

<div align="right">
참고: <a href="https://developer.android.com/media/media3/ui/customization#play-pause-button">Play/Pause Button</a><br/>
<a href="../../interface/media-player/home.md#play">play(),</a> 
<a href="../../interface/media-player/home.md#pause">pause()</a> 
</div>

### 이전 미디어

```kotlin
mediaPlayer.seekToPrevious()
```

현재 재생 위치가 미디어의 시작 부분과 매우 가까울 경우, 재생 목록에서 이전 미디어를 재생합니다. 그렇지 않거나 이전 미디어가 없는 경우에는 현재 재생 중인 미디어의 맨 앞으로 이동할 때 사용합니다.

<div align="right">
참고: <a href="https://developer.android.com/reference/androidx/media3/common/Player#seekToPrevious()">seekToPrevious()</a>
</div>

### 되감기 1

```kotlin
mediaPlayer.seekBack()
```

재생 위치를 [seekBackIncrement](../../interface/media-player/home.md#seekbackincrement)(기본값: 10초) 전으로 이동할 때 사용합니다. 길게 꾹 눌러서 되감는 기능을 원하면 [되감기 2](#되감기-2)를 참고하세요.

<div align="right">
참고: <a href="../../interface/media-player/home.md#seekback">seekBack()</a><br>
비교: <a href="#되감기-2">되감기 2</a>
</div>

### 되감기 2

```kotlin
rewindButton.setOnTouchListener { _, event ->
    when (event?.action) {
        MotionEvent.ACTION_DOWN -> {
            beginSeekBack()
        }
        MotionEvent.ACTION_UP -> {
            endSeekBack()
        }
        else -> {}
    }
    true
}
```

버튼을 길게 꾹 눌러 재생 위치를 이전으로 이동할 때는 위의 예제처럼 구현하면 됩니다.

<div align="right">
참고: <a href="#beginseekback">beginSeekBack()</a>,
<a href="#endseekback">endSeekBack()</a><br>
비교: <a href="#되감기-1">되감기 1</a>
</div>

### 빨리 감기 1

```kotlin
mediaPlayer.seekForward()
```

재생 위치를 [seekForwardIncrement](../../interface/media-player/home.md#seekforwardincrement)(기본값: 10초) 후로 이동할 때 사용합니다. 길게 꾹 눌러서 감는 기능을 원하면 [빨리 감기 2](#빨리-감기-2)를 참고하세요.

<div align="right">
참고: <a href="../../interface/media-player/home.md#seekforward">seekForward()</a><br>
비교: <a href="#빨리-감기-2">빨리 감기 2</a>
</div>

### 빨리 감기 2

```kotlin
fastForwardButton.setOnTouchListener { _, event ->
    when (event?.action) {
        MotionEvent.ACTION_DOWN -> {
            beginSeekForward()
        }
        MotionEvent.ACTION_UP -> {
            endSeekForward()
        }
        else -> {}
    }
    true
}
```

버튼을 길게 꾹 눌러 재생 위치를 이후로 이동할 때는 위의 예제처럼 구현하면 됩니다.

<div align="right">
참고: <a href="#beginseekforward">beginSeekForward()</a>, 
<a href="#endseekforward">endSeekForward()</a><br>
비교: <a href="#빨리-감기-1">빨리 감기 1</a>
</div>


### 다음 미디어

```kotlin
mediaPlayer.seekToNext()
```

재생 목록에서 다음 미디어를 재생할 때 사용합니다.

<div align="right">
참고: <a href="https://developer.android.com/reference/androidx/media3/common/Player#seekToNext()">seekToNext()</a>
</div>

### 화면 속 화면 모드

```kotlin
val activity = context as? Activity ?: return
mediaPlayer.enterPictureInPicture(activity, this)
```

화면 속 화면 모드로 전환하려면 위의 예제처럼 구현하면 됩니다.


## 재생 속도 관련

### 재생 속도 증가

```kotlin
mediaPlayer.playbackRate += 0.1f
```

재생 속도를 0.1배 만큼 증가 시키려면 위의 예제처럼 구현하면 됩니다.

### 재생 속도 변경

```kotlin
mediaPlayer.playbackRate = 1.0f
```

재생 속도를 정상 속도로 복구할 때 위의 예제처럼 구현하면 됩니다.

### 재생 속도 감소

```kotlin
mediaPlayer.playbackRate -= 0.1f
```

재생 속도를 0.1배 만큼 감소 시키려면 위의 예제처럼 구현하면 됩니다.

## 타임바

이 예제에서는 [SeekBar](https://developer.android.com/reference/android/widget/SeekBar)를 사용하여 타임바를 업데이트하고, 타임바 입력을 처리하는 방법을 간단하게 설명합니다.

### 타임바 리스너

```kotlin
seekBar.setOnSeekBarChangeListener(
    object : SeekBar.OnSeekBarChangeListener {
        override fun onStartTrackingTouch(seekBar: SeekBar?) {
            removeAutoHideControl()
        }

        override fun onProgressChanged(
            seekBar: SeekBar?,
            progress: Int,
            fromUser: Boolean
        ) {
            if (fromUser) {
                val position = Duration.ofSeconds(progress.toLong())
                // updateTimePosition(position) 
            }
        }

        override fun onStopTrackingTouch(seekBar: SeekBar?) {
            resetAutoHideControl()
            val progress = seekBar?.progress?.toLong() ?: return
            mediaPlayer.currentTime = Duration.ofSeconds(progress)
        }
    }
)
```

이 예제는 사용자가 타임바를 터치한 순간부터 종료까지의 동작을 구현한 것입니다. 타임바를 사용하는 동안에는 [컨트롤러가 일시적으로 계속 켠 상태로 유지](#removeautohidecontrol)하며, 터치가 종료되면 해당 위치로 이동하도록 구현되어 있습니다. 여기서, seekBar의 타입은 [SeekBar](https://developer.android.com/reference/android/widget/SeekBar) 입니다. 

<div align="right">
참고: <a href="https://developer.android.com/reference/android/widget/SeekBar">SeekBar</a>, 
<a href="https://developer.android.com/reference/android/widget/SeekBar.OnSeekBarChangeListener">SeekBar.OnSeekBarChangeListener</a><br>
<a href="#removeautohidecontrol">removeAutoHideControl()</a>, 
<a href="#resetautohidecontrol">resetAutoHideControl()</a>
</div>

### 타임바 업데이트

```kotlin
mediaPlayer.addEventHandler(
    EventHandler.TimeUpdate { position ->
        seekBar.progress = position.seconds.toInt()
    }
)
```

미디어가 재생됨에 따라 타임바를 업데이트 하려면 [이벤트 리스너](../../interface/event-listeners/home.md)나 [이벤트 핸들러](../event-handlers/home.md)를 사용해야 합니다. 위 예제는 [이벤트 핸들러](../event-handlers/home.md)를 이용해 타임바를 업데이트하는 방법을 보여줍니다. 여기서, seekBar의 타입은 [SeekBar](https://developer.android.com/reference/android/widget/SeekBar)입니다. 
또한, [seekBar.max](https://developer.android.com/reference/android/widget/AbsSeekBar#setMax(int)) 를 설정하지 않으면, 제대로 동작하지 않으므로 주의하세요.

```kotlin
seekBar.max = mediaPlayer.duration.seconds.toInt()
```

