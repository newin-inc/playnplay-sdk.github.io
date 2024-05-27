# PlaybackInfoRepository

```kotlin
import com.newin.nplayer.sdk.PlaybackInfoRepository
```

```kotlin
class PlaybackInfoRepository(context: Context)
```

재생 정보 저장소를 나타내는 클래스입니다. 미디어의 uri를 알고 있으면, 아래처럼, 속성 [shared](#shared)와 메서드 [findBy()](#findby)를 사용하여 해당 uri의 미디어 아이템 정보를 가져올 수 있습니다.

<div align="right">
참고: <a href="../playback-info/home.md">PlaybackInfo</a>
</div>

<br>

# 정적 속성

## shared

```kotlin
companion object {
    val shared: PlaybackInfoRepository
}
```

|타입|설명|설정|
|:--:|:--:|:--:|
|[PlaybackInfoRepository](#playbackinforepository)|현재 재생 정보 저장소에 접근하기 위한 속성|불가능|

재생 정보 저장소에 접근하기 위한 정적 속성입니다. 아래에 언급되는 메서드를 호출할 때, PlaybackInfoRepository.shared를 사용하여 접근할 수 있습니다.

<br>

# 메서드

## findBy

```kotlin
fun findBy(uri: Uri): PlaybackInfo?
```

|파라미터|타입|반환 타입|설명|
|:---:|:--:|:--:|---|
|uri|[android.net.Uri](https://developer.android.com/reference/android/net/Uri)|[PlaybackInfo](../playback-info/home.md)?|미디어 uri를 입력하여 재생 정보를 반환|

<div align="right">
참고: <a href="https://developer.android.com/reference/android/net/Uri">android.net.Uri</a>, 
<a href="../playback-info/home.md">PlaybackInfo</a>
</div>
