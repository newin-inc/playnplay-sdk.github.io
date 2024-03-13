# 메서드

## onItemAdded(_)
```swift
func onItemAdded(_ item: DownloadItem)
```
|파라미터|타입|설명|
|:--:|:--:|--|
|item|[DownloadItem](../../struct/download-item/home.md)|처리하고자 하는 다운로드 아이템|

다운로드할 아이템이 목록에 추가될 때 처리를 위한 메서드입니다. 아이템이 추가되는 상황에 추가적인 처리가 필요할 경우에 이 메서드를 사용할 수 있습니다.

사용 예제
```swift
class DownloadListener: DownloadManager.Listener {
    func onItemAdded(_ item: DownloadItem) {
        showPopup("\(item.displayPath) will be added")
    }
}
        
let downloadManagerlistener = DownloadListener()
DownloadManager.shared.addListener(downloadManagerlistener)
```

## onItemRemoved(_)
```swift
    func onItemRemoved(_ item: DownloadItem)
```
|파라미터|타입|설명|
|:--:|:--:|--|
|item|[DownloadItem](../../struct/download-item/home.md)|처리하고자 하는 다운로드 아이템|

다운로드 목록에서 아이템을 제거할 때 처리를 위한 메서드입니다. 아이템이 제거되는 상황에 추가적인 처리가 필요할 경우에 이 메서드를 사용할 수 있습니다.

사용 예제
```swift
class DownloadListener: DownloadManager.Listener {
    func onItemRemoved(_ item: NPlayerSDK.DownloadItem) {
        showPopup("\(item.displayPath) is removed.")
    }
}
        
let downloadManagerlistener = DownloadListener()
DownloadManager.shared.addListener(downloadManagerlistener)
```

## onStatusChanged(_)
```swift
    func onStatusChanged(_ item: DownloadItem)
```
|파라미터|타입|설명|
|:--:|:--:|--|
|item|[DownloadItem](../../struct/download-item/home.md)|처리하고자 하는 다운로드 아이템|

다운로드 아이템의 상태가 변경될 때 처리를 위한 메서드입니다. 즉, 다운로드를 완료하였거나, 실패하였을 때 등의 상황에 추가적인 처리가 필요할 경우에 이 메서드를 사용할 수 있습니다.

사용 예제
```swift
class DownloadListener: DownloadManager.Listener {
    func onStatusChanged(_ item: NPlayerSDK.DownloadItem) {
        switch item.status {
        case .completed: showPopup("Done.")
        case .downloading: showPopup("Item is downloading.")
        case .failed: showPopup("Downloading failed.")
        case .paused: showPopup("Paused.")
        case .pending: showPopup("Pending..")
        }
    }
}
        
let downloadManagerlistener = DownloadListener()
DownloadManager.shared.addListener(downloadManagerlistener)
```

## onProgressUpdated(_)
```swift
    func onProgressUpdated(_ item: DownloadItem)
```
|파라미터|타입|설명|
|:--:|:--:|--|
|item|[DownloadItem](../../struct/download-item/home.md)|처리하고자 하는 다운로드 아이템|

다운로드가 진행되는 순간을 처리하기 위한 메서드입니다. 아이템 다운로드가 진행됨에 따라 추가적인 처리가 필요할 경우에 이 메서드를 사용할 수 있습니다.


사용 예제
```swift
class DownloadListener: DownloadManager.Listener {
    func onProgressUpdated(_ item: NPlayerSDK.DownloadItem) {
        if let progress = item.progress {
            let rate = Double(progress.0) / Double(progress.1) * 100.0
            ...
        }
    }
}
        
let downloadManagerlistener = DownloadListener()
DownloadManager.shared.addListener(downloadManagerlistener)
```