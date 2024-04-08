# PlaybackInfoRepository

```kotlin
import com.newin.nplayer.sdk.PlaybackInfoRepository
```

```kotlin
class PlaybackInfoRepository(context: Context) {

    fun findBy(uri: Uri): PlaybackInfo?

    companion object {
    
        val shared: PlaybackInfoRepository
    }
}
```

재생 정보 저장소를 나타내는 클래스입니다. 미디어의 uri를 알고 있으면, 아래처럼, 속성 [shared](#shared)와 메서드 [findBy](#findby)를 사용하여 해당 uri의 미디어 아이템 정보를 가져올 수 있습니다.

사용 예제: 현재 미디어의 마지막 재생 위치를 가져오는 예제
```kotlin
mediaPlayer.currentSrc?.apply {

    val info = PlaybackInfoRepository.shared.findBy(this)

    val lastPlayedTime = info?.lastPlayedTime   // 3.394s
}
```
<div align="right">
참고: <a href="../playback-info/home.md">PlaybackInfo</a>
</div>

## 속성

### shared
```
val shared: PlaybackInfoRepository
```
|타입|설명|설정|
|:--:|--|:--:|
|PlaybackInfoRepository|현재 재생 정보 저장소에 접근하기 위한 속성|불가능|

사용 예제: 현재 미디어의 재생 정보를 가져오는 예제
```kotlin
mediaPlayer.currentSrc?.apply {

    val info = PlaybackInfoRepository.shared.findBy(this)
}                       
```
<div align="right">
참고: <a href="#findby">findBy</a>
</div>

## 메서드

### findBy

```kotlin
fun findBy(uri: Uri): PlaybackInfo?
```
|파라미터|타입|반환 타입|설명|
|:---:|:--:|:--:|---|
|uri|[Uri](https://developer.android.com/reference/android/net/Uri)|[PlaybackInfo](../playback-info/home.md)?|미디어 uri를 입력하여 재생 정보를 반환|

<div align="right">
참고: <a href="../playback-info/home.md">PlaybackInfo</a>
</div>

사용 예제: 현재 미디어의 만료 기간을 가져오는 예제
```kotlin
mediaPlayer.currentSrc?.apply {

    val info = PlaybackInfoRepository.shared.findBy(this)

    val expiresOn = info?.expiresOn     // 2024-04-15T06:17:08Z
}                       
```