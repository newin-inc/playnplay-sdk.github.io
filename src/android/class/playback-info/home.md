# PlaybackInfo

```kotlin
import com.newin.nplayer.sdk.PlaybackInfo
```

```kotlin
data class PlaybackInfo(

    val artworkUri: Uri?,
    val duration: Duration?,
    val expiresOn: Instant?,
    val lastPlayedTime: Duration?,
    val uri: Uri
)
```

[재생 정보 저장소](../playback-info-repository/home.md)에 저장된 정보를 나타내는 데이터 글래스입니다. [재생 정보 저장소](../playback-info-repository/home.md)의 [shared](../playback-info-repository/home.md#shared) 속성과 [findBy](../playback-info-repository/home.md#findby) 메서드를 사용하여 미디어의 정보를 가져올 수 있습니다.

사용 예제: 현재 재생 중인 미디어의 정보를 가져오는 예제
```kotlin
mediaPlayer.currentSrc?.apply {

    val info = PlaybackInfoRepository.shared.findBy(this)

    ...
}
```
<div align="right">
참고: <a href="../../interface/media-player/details.md#currentsrc">currentSrc</a>, 
<a href="../../class/playback-info-repository/home.md">PlaybackInfoRepository</a>
</div>

## 속성

### artworkUri
```kotlin
val artworkUri: Uri?
```
|타입|설명|
|:--:|:--|
|[Uri](https://developer.android.com/reference/android/net/Uri)|미디어 아이템의 아트워크 주소|

미디어 아이템의 아트워크 경로를 나타내는 속성입니다.
<div align="right">
참고: <a href="https://developer.android.com/reference/androidx/media3/common/MediaMetadata#artworkUri()">artworkUri</a>
</div>

사용 예제: 현재 미디어의 아트워크 uri를 가져오는 예제
```kotlin
mediaPlayer.currentSrc?.apply {

    val info = PlaybackInfoRepository.shared.findBy(this)

    val uri = info?.artworkUri
}           
```
<div align="right">
참고: <a href="../../interface/media-player/details.md#currentsrc">currentSrc</a>, 
<a href="../../class/playback-info-repository/home.md">PlaybackInfoRepository</a>
</div>

<br><br>
### duration
```kotlin
val duration: Duration?
```
|타입|설명|
|:--:|--|
|[kotlin.time.Duration](https://kotlinlang.org/api/latest/jvm/stdlib/kotlin.time/-duration/)|미디어 아이템의 전체 길이|

미디어 아이템의 전체 길이를 나타내는 속성입니다.

사용 예제: 현재 미디어의 전체 길이를 가져오는 예제
```kotlin
mediaPlayer.currentSrc?.apply {

    val info = PlaybackInfoRepository.shared.findBy(this)

    val duration = info?.duration     // 15.045s
}    
```

<div align="right">
참고: <a href="../../interface/media-player/details.md#currentsrc">currentSrc</a>, 
<a href="../../class/playback-info-repository/home.md">PlaybackInfoRepository</a>
</div>

<br><br>
### expiresOn
```kotlin
val expiresOn: Instant?
```
|타입|설명|
|:--:|--|
|[java.time.Instant](https://developer.android.com/reference/java/time/Instant)|만료 일시|

미디어 아이템의 만료 일시를 나타내는 속성입니다.

사용 예제: 현재 미디어의 만료 기간을 가져오는 예제
```kotlin
mediaPlayer.currentSrc?.apply {

    val info = PlaybackInfoRepository.shared.findBy(this)

    val expiresOn = info?.expiresOn     // 2024-04-15T06:17:08Z
}                       
```

<div align="right">
참고: <a href="../../interface/media-player/details.md#currentsrc">currentSrc</a>, 
<a href="../../class/playback-info-repository/home.md">PlaybackInfoRepository</a>
</div>

<br><br>
### lastPlayedTime
```kotlin
val lastPlayedTime: Duration?
```
|타입|설명|
|:--:|--|
|[kotlin.time.Duration](https://kotlinlang.org/api/latest/jvm/stdlib/kotlin.time/-duration/)|마지막 재생 위치|

미디어 아이템이 마지막으로 재생한 위치를 나타내는 속성입니다.

사용 예제: 현재 미디어의 마지막 재생 위치를 가져오는 예제
```kotlin
mediaPlayer.currentSrc?.apply {

    val info = PlaybackInfoRepository.shared.findBy(this)

    val lastPlayedTime = info?.lastPlayedTime   // 3.394s
}
```

<div align="right">
참고: <a href="../../interface/media-player/details.md#currentsrc">currentSrc</a>, 
<a href="../../class/playback-info-repository/home.md">PlaybackInfoRepository</a>
</div>

<br><br>
### uri
```kotlin
val uri: Uri
```
|타입|설명|
|:--:|:--|
|[Uri](https://developer.android.com/reference/android/net/Uri)|재생 미디어의 주소|

미디어의 주소를 나타내는 속성입니다. 재생 정보 저장소로부터 정보를 가져올 때, 이 미디어 주소를 사용합니다.

사용 예제: 현재 미디어의 마지막 재생 위치를 가져오는 예제
```kotlin
mediaPlayer.currentSrc?.apply {

    val info = PlaybackInfoRepository.shared.findBy(this)

    assert(info?.uri == this, true)

    val lastPlayedTime = info?.lastPlayedTime   // 3.394s
}
```
<div align="right">
참고: <a href="../../interface/media-player/details.md#currentsrc">currentSrc</a>, 
<a href="../../class/playback-info-repository/home.md">PlaybackInfoRepository</a>
</div>
