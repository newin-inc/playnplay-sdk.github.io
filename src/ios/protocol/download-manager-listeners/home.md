# DownloadManager.Listener (DownloadManagerListener)

```swift
protocol DownloadManagerListener: AnyObject

extension DownloadManager { typealias Listener = DownloadManagerListener }
```

DownloadManager.Listener(DownloadManagerListener)는 다운로드와 관련된 이벤트 처리를 위한 프로토콜로, 위와 같은 메서드를 제공합니다. 각각 메서드에 대한 설명은 아래 [메서드](#메서드)를, 리스너를 추가하는 방법은 [addListener(_)](../../class/download-manager/home.md#addlistener_)를 참고하시면 됩니다.

<br><br>

# 메서드

## onItemAdded(_)
```swift
func onItemAdded(_ item: DownloadItem)
```
|파라미터|타입|설명|
|:--:|:--:|:--:|
|item|[DownloadItem](../../struct/download-item/home.md)|처리하고자 하는 다운로드 아이템|

다운로드할 아이템이 목록에 추가될 때 처리를 위한 메서드입니다. 아이템을 추가할 때 추가적인 처리가 필요할 경우에 이 메서드를 사용합니다.

<div align="right">
참고: <a href="../../struct/download-item/home.md">DownloadItem</a>
</div>

<br><br>
## onItemRemoved(_)
```swift
func onItemRemoved(_ item: DownloadItem)
```
|파라미터|타입|설명|
|:--:|:--:|:--:|
|item|[DownloadItem](../../struct/download-item/home.md)|처리하고자 하는 다운로드 아이템|

다운로드 목록에서 아이템을 제거할 때 처리를 위한 메서드입니다. 아이템이 제거될 때 추가적인 처리가 필요할 경우에 이 메서드를 사용합니다.

<div align="right">
참고: <a href="../../struct/download-item/home.md">DownloadItem</a>
</div>

<br><br>
## onProgressUpdated(_)
```swift
func onProgressUpdated(_ item: DownloadItem)
```
|파라미터|타입|설명|
|:--:|:--:|:--:|
|item|[DownloadItem](../../struct/download-item/home.md)|처리하고자 하는 다운로드 아이템|

다운로드가 진행되는 매순간을 처리하기 위한 메서드입니다. 아이템 다운로드가 진행됨에 따라 추가적인 처리가 필요할 경우에 이 메서드를 사용합니다.

<div align="right">
참고: <a href="../../struct/download-item/home.md">DownloadItem</a>
</div>

<br><br>
## onStatusChanged(_)
```swift
func onStatusChanged(_ item: DownloadItem)
```
|파라미터|타입|설명|
|:--:|:--:|:--:|
|item|[DownloadItem](../../struct/download-item/home.md)|처리하고자 하는 다운로드 아이템|

<div align="right">
참고: <a href="../../struct/download-item/home.md">DownloadItem</a>, 
<a href="../../enum/download-item-status//home.md">DownloadItem.Status</a>
</div>

다운로드 아이템의 상태가 변경될 때 처리를 위한 메서드입니다. 즉, 다운로드를 완료하였거나, 실패하였을 때 등의 상황에 추가적인 처리가 필요할 경우에 이 메서드를 사용할 수 있습니다.