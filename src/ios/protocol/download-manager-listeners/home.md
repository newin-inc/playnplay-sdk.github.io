# DownloadManager.Listener (DownloadManagerListener)

```swift
protocol DownloadManagerListener: AnyObject {
    func onItemAdded(_ item: DownloadItem)
    func onItemRemoved(_ item: DownloadItem)
    func onStatusChanged(_ item: DownloadItem)
    func onProgressUpdated(_ item: DownloadItem)
}

extension DownloadManager { typealias Listener = DownloadManagerListener }
```

DownloadManager.Listener(DownloadManagerListener)는 다운로드와 관련된 이벤트 처리를 위한 프로토콜로, 위와 같은 함수를 제공합니다. 각각 함수에 대한 자세한 설명은 [상세](./details.md)를, 사용 방법은 각 함수의 사용 예제를 참고하거나, [addListener(_)](../../class/download-manager/details.md#addlistener_)를 참고하시면 됩니다.

<details open>
<summary>
    <a href="./details.md#메서드">메서드</a>
</summary>

- [onItemAdded(_)](./details.md#onitemadded_)

- [onItemRemoved(_)](./details.md#onitemremoved_)

- [onStatusChanged(_](./details.md#onstatuschanged_)

- [onProgressUpdated(_)](./details.md#onprogressupdated_)

</details>