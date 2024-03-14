# interface DownloadManager.Listener

```kotlin
import com.newin.nplayer.sdk.DownloadManager
```

```kotlin
class DownloadManager {

    interface Listener {

        fun onItemAdded(item: DownloadItem) {}

        fun onItemRemoved(item: DownloadItem) {}

        fun onProgressUpdated(item: DownloadItem) {}

        fun onStatusChanged(item: DownloadItem) {}
    }
}
```

DownloadManager.Listener는 다운로드와 관련된 이벤트 처리를 위한 인터페이스로, 위와 같은 메서드를 제공합니다. 각각 메서드에 대한 자세한 설명은 [상세](./details.md)를, 사용 방법은 각 메서드의 사용 예제를 참고하거나, [addListener](../../class/download-manager/details.md#addlistener)를 참고하시면 됩니다.

<details open>
<summary>
    <a href="./details.md#메서드">메서드</a>
</summary>

- [fun onItemAdded(item: DownloadItem)](./details.md#onitemadded)

- [fun onItemRemoved(item: DownloadItem)](./details.md#onitemremoved)

- [fun onProgressUpdated(item: DownloadItem)](./details.md#onprogressupdated)

- [fun onStatusChanged(item: DownloadItem)](./details.md#onstatuschanged)

</details>
