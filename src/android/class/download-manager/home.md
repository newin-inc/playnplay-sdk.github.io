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

    fun add(mediaItem: MediaItem): DownloadItemId
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

<details>
<summary>
    <a href="./details.md#속성">속성</a>
</summary>

- [var downloadsUri: Uri](./details.md#downloadrooturl)

- [val items: List<DownloadItem>](./details.md#items)

- [var maxParallelDownloads: Int](./details.md#maxparalleldownloads)

- [val shared: DownloadManager](./details.md#shared)

</details>
<br>

<details>
<summary>
    <a href="./details.md#메서드">메서드</a>
</summary>

- [fun add(mediaItem: MediaItem): DownloadItemId](./details.md#add)
    
- [fun getItemsByStatus(status: DownloadItem.Status): List<DownloadItem>](./details.md#getitemsbystatus)

- [fun pause(id: DownloadItemId)](./details.md#pause)

- [fun pauseAll()](./details.md#pauseall)

- [fun remove(id: DownloadItemId)](./details.md#remove)

- [fun removeAll()](./details.md#removeall)

- [fun removeCompleted()](./details.md#removecompleted)

- [fun resume(id: DownloadItemId)](./details.md#resume)

- [fun resumeAll()](./details.md#resumeall)

- [fun addListener(listener: Listener)](./details.md#addlistener)

- [fun removeListener(listener: Listener)](./details.md#removelistener)

</detilas>
<br>