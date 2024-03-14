# 메서드

## onItemAdded
```kotlin
fun onItemAdded(item: DownloadItem)
```
|파라미터|타입|설명|
|:--:|:--:|--|
|item|[DownloadItem](../../class/download-item/home.md)|처리하고자 하는 다운로드 아이템|

다운로드할 아이템이 목록에 추가될 때 처리를 위한 메서드입니다. 아이템이 추가되는 상황에 추가적인 처리가 필요할 경우에 이 메서드를 사용할 수 있습니다.

사용 예제: 다운로드 매니저에 아이템이 추가될 때 마다, 저장되는 파일 경로를 팝업에 보여주는 예제
```kotlin
class ComponentListener : DownloadManager.Listener {
    override fun onItemAdded(item: DownloadItem) {
        showPopup("${item.displayPath} will be added!")
    }
}

val componentListener = ComponentListener()

DownloadManager.shared.addListener(componentListener)
```

## onItemRemoved
```kotlin
fun onItemRemoved(item: DownloadItem)
```
|파라미터|타입|설명|
|:--:|:--:|--|
|item|[DownloadItem](../../class/download-item/home.md)|처리하고자 하는 다운로드 아이템|

다운로드 목록에서 아이템을 제거할 때 처리를 위한 메서드입니다. 아이템이 제거되는 상황에 추가적인 처리가 필요할 경우에 이 메서드를 사용할 수 있습니다.

사용 예제: 다운로드 목록에서 아이템이 제거되면, 해당 파일이 제거되었음을 팝업에 보여주는 예제
```kotlin
class ComponentListener : DownloadManager.Listener {
    override fun onItemRemoved(item: DownloadItem) {
        showPopup("${item.toUri.toFile().name} is removed")
    }
}

val componentListener = ComponentListener()

DownloadManager.shared.addListener(componentListener)
```

## onProgressUpdated
```kotlin
fun onProgressUpdated(item: DownloadItem)
```
|파라미터|타입|설명|
|:--:|:--:|--|
|item|[DownloadItem](../../class/download-item/home.md)|처리하고자 하는 다운로드 아이템|

다운로드가 진행되는 순간을 처리하기 위한 메서드입니다. 아이템 다운로드가 진행됨에 따라 추가적인 처리가 필요할 경우에 이 메서드를 사용할 수 있습니다.

사용 예제: 다운로드가 진행됨에 따라 진행률을 계산하여 사용하고자 하는 예제
```kotlin
class ComponentListener : DownloadManager.Listener {
    override fun onProgressUpdated(item: DownloadItem) {
        val progress = item.progress ?: return
        val rate =
            progress.downloadedSize.toDouble() / progress.fileSize * 100
        ...
    }
}

val componentListener = ComponentListener()

DownloadManager.shared.addListener(componentListener)
```

## onStatusChanged
```kotlin
fun onStatusChanged(item: DownloadItem)
```
|파라미터|타입|설명|
|:--:|:--:|--|
|item|[DownloadItem](../../class/download-item/home.md)|처리하고자 하는 다운로드 아이템|

<div align="right">
참고: <a href="../../enum/download-item-status/home.md">DownloadItem.Status</a>
</div>

다운로드 아이템의 상태가 변경될 때 처리를 위한 메서드입니다. 즉, 다운로드를 완료하였거나, 실패하였을 때 등의 상황에 추가적인 처리가 필요할 경우에 이 메서드를 사용할 수 있습니다.

사용 예제: 아이템의 다운로드 상태가 바뀔 때 마다, 현재 상태를 팝업에 보여주는 예제
```kotlin
class ComponentListener : DownloadManager.Listener {
    override fun onStatusChanged(item: DownloadItem) {
        when (item.status) {
            DownloadItem.Status.Completed -> showPopup("Completed")
            DownloadItem.Status.Downloading -> showPopup("Downloading.")
            DownloadItem.Status.Failed -> showPopup("Failed")
            DownloadItem.Status.Paused -> showPopup("Paused")
            DownloadItem.Status.Pending -> showPopup("Pending..")
        }
    }
}

val componentListener = ComponentListener()

DownloadManager.shared.addListener(componentListener)
```

