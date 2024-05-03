# DownloadManager

다운로드 매니저를 사용하기 전에 AndroidManifest.xml에 브로드캐스트 수신기를 선언합니다.
```xml
<receiver
    android:name="com.newin.nplayer.sdk.DownloadCompleteReceiver"
    android:exported="true">
    <intent-filter>
        <action android:name="android.intent.action.DOWNLOAD_COMPLETE" />
    </intent-filter>
</receiver>
```

다운로드 매니저 클래스는 아래와 같은 속성과 메서드를 가지고 있습니다.

```kotlin
import com.newin.nplayer.sdk.DownloadManager
```

```kotlin
class DownloadManager private constructor(private val context: Context) {

    var downloadsUri: Uri
    val items: List<DownloadItem>
    var maxParallelDownloads: Int

    fun add(mediaItem: MediaItem, allowsCellularAccess: Boolean): DownloadItemId
    fun getItemsByStatus(status: DownloadItem.Status): List<DownloadItem>
    fun pause(id: DownloadItemId)
    fun pauseAll()
    fun remove(id: DownloadItemId)
    fun removeAll()
    fun removeCompleted()
    fun resume(id: DownloadItemId)
    fun resumeAll()

    fun addListener(listener: Listener)
    fun removeListener(listener: Listener)

    companion object {

        val shared: DownloadManager
    }
}
```

# 정적 속성

## shared
```kotlin
companion object {
    val shared: DownloadManager
}
```
|타입|설명|설정|
|:--:|:--:|:--:|
|DownloadManager|현재 활성화된 다운로드 매니저에 접근하기 위한 속성|불가능|

다운로드 매니저에 접근하기 위한 정적 속성입니다. 아래에 언급되는 속성 및 메서드를 호출할 때, DownloadManager.shared를 사용하여 접근할 수 있습니다.

<br><br>
# 속성

## downloadsUri
```kotlin
var downloadsUri: Uri
```
|타입|설명|설정|
|:--:|:--:|:--:|
|[android.net.Uri](https://developer.android.com/reference/android/net/Uri)|다운로드된 아이템이 저장되는 최상위 디렉토리|불가능|
<div align="right">
참고: <a href="../download-item/home.md#displaypath">displayPath</a>, 
<a href="../download-item/home.md#touri">toUri</a>
</div>

다운로드된 아이템이 저장되는 디렉토리 중 최상위 디렉토리를 나타내는 속성입니다.<br>

<br><br>
## items
```kotlin
val items: List<DownloadItem>
```
|타입|설명|설정|
|:--:|:--:|:--:|
|List<[DownloadItem](../download-item/home.md)>|현재 다운로드 목록에 있는 아이템들|불가능|

현재 다운로드 목록에 있는 아이템들을 반환하는 속성입니다.

<br><br>
## maxParallelDownloads
```kotlin
var maxParallelDownloads: Int
```
|타입|설명|설정|기본값|
|:--:|:--:|:--:|:--:|
|Int|동시에 다운받을 수 있는 아이템 최대 개수|가능|3|

동시에 받을 수 있는 아이템의 최대 개수를 반환하거나 설정합니다.

<br><br>
# 메서드

## add
```kotlin
fun add(mediaItem: MediaItem, allowsCellularAccess: Boolean = true): DownloadItemId
```
|파라미터|타입|설명|필수|기본값|
|:--:|:--:|:--:|:--:|:--:|
|mediaItem|[MediaItem](https://developer.android.com/reference/androidx/media3/common/MediaItem)|추가하고자 하는 미디어 아이템|O|없음|
|allowsCellularAccess|Boolean|다운로드 시 셀룰러 데이터 사용 여부|X|true|

<div align="right">
참고: <a href="../download-item/home.md#id">DownloadItemId</a>
</div>

다운로드를 할 미디어 아이템을 추가합니다. 현재 다운로드가 진행되고 있는 아이템의 수가 [maxParallelDownloads](#maxparalleldownloads) 보다 적으면 바로 다운로드를 시작합니다. 셀룰러 데이터 사용을 허용하지 않으려면, allowsCellularAccess를 false로 설정하여 호출하십시오.

<br><br>
## getItemsByStatus
```kotlin
fun getItemsByStatus(status: DownloadItem.Status): List<DownloadItem>
```
|파라미터|타입|설명|
|:--:|:--:|:--:|
|status|[DownloadItem.Status](../../enum/download-item-status/home.md)|가져오고자 하는 아이템의 다운로드 상태|

특정 다운로드 상태의 아이템 목록을 가져오기 위해서 사용하는 메서드입니다.<br>

<br><br>
## pause
```kotlin
fun pause(id: DownloadItemId)
```
|파라미터|타입|설명|
|:--:|:--:|:--:|
|id|[Id](../download-item/home.md#id)|일서 정지할 다운로드 아이템의 아이디|

다운로드를 일시 정지할 때 사용하는 메서드입니다.

<br><br>
## pauseAll
```kotlin
fun pauseAll()
```
다운로드 목록에 있는 모든 아이템의 다운로드를 일시 정지하게 하는 메서드입니다.

<br><br>
## remove
```kotlin
fun remove(id: DownloadItemId)
```
|파라미터|타입|설명|
|:--:|:--:|:--:|
|id|[Id](../download-item/home.md#id)|제거할 다운로드 아이템의 아이디|

다운로드 목록에서 아이템을 지울 때 사용하는 메서드입니다.

<br><br>
## removeAll
```kotlin
fun removeAll()
```
다운로드 아이템 목록을 모두 지우는 메서드입니다.

<br><br>
## removeCompleted
```kotlin
fun removeCompleted()
```
다운로드가 완료된 아이템을 목록에서 모두 지우는 메서드입니다.

<br><br>
## resume
```kotlin
fun resume(id: DownloadItemId)
```
|파라미터|타입|설명|
|:--:|:--:|:--:|
|id|[Id](../download-item/home.md#id)|다운로드 재개할 아이템의 아이디|

다운로드를 일시 정지한 아이템의 다운로드를 재개하는 메서드입니다.

<br><br>
## resumeAll
```kotlin
fun resumeAll()
```
일시 정지한 모든 아이템의 다운로드를 재개하는 메서드입니다.

<br><br>
## addListener
```kotlin
fun addListener(listener: Listener)
```
|파라미터|타입|설명|
|:--:|:--:|:--:|
|listener|[DownloadManager.Listener](../../interface/download-manager-listener/home.md)|추가할 다운로드 매니저 리스너|

[다운로드 매니저 리스너](../../interface/download-manager-listener/home.md)를 추가하기 위한 메서드입니다.

<br><br>
## removeListener
```kotlin
fun removeListener(listener: Listener)
```
|파라미터|타입|설명|
|:--:|:--:|:--:|
|listener|[DownloadManager.Listener](../../interface/download-manager-listener/home.md)|제거할 다운로드 매니저 리스너|

[다운로드 매니저 리스너](../../interface/download-manager-listener/home.md)를 제거하기 위한 메서드입니다.
