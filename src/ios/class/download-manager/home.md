# DownloadManager

다운로드 매니저를 사용하기 전에 반드시 AppDelegate 설정을 해야합니다. 
```swift
func application(
    _ application: UIApplication,
    handleEventsForBackgroundURLSession identifier: String,
    completionHandler: @escaping () -> Void
) {
    DownloadManager.shared.setBackgroundCompletionHandler(
        sessionIdentifier: identifier,
        completionHandler: completionHandler
    )
}
```
위와 같은 부분을 추가하여야, 앱이 백그라운드인 상태가 되어도 다운로드 관련 작업을 원활하게 진행할 수 있습니다.
<div align="right">
참고: <a href="https://developer.apple.com/documentation/uikit/uiapplicationdelegate/1622941-application">application(_:handleEventsForBackgroundURLSession:completionHandler:)</a>
</div>

다운로드 매니저 클래스는 아래와 같은 속성과 메서드를 가지고 있습니다.

```swift
public class DownloadManager: NSObject, URLSessionDownloadDelegate {

    public var downloadRootUrl: URL
    public var items: [DownloadItem]
    public var maxParallelDownloads: Int = 3
    public static let shared: DownloadManager

    @discardableResult public func add(mediaItem: MediaItem) -> DownloadItem.Id
    public func itemsByStatus(_ status: DownloadItem.Status) -> [DownloadItem]
    public func pause(id: DownloadItem.Id)
    public func pauseAll()
    public func remove(id: DownloadItem.Id)
    public func removeAll()
    public func removeCompleted()
    public func resume(id: DownloadItem.Id)
    public func resumeAll()

    public func addListener(_ listener: DownloadManagerListener)
    public func removeListener(_ listener: DownloadManagerListener)
}
```

<details>
<summary>
    <a href="./details.md#메서드">속성</a>
</summary>

- [var downloadRootUrl: URL](./details.md#downloadrooturl)

- [var items: [DownloadItem]](./details.md#items)

- [var maxParallelDownloads: Int](./details.md#maxparalleldownloads)

- [static let shared: DownloadManager](./details.md#shared)

</details>
<br>

<details>
<summary>
    <a href="./details.md#메서드">메서드</a>
</summary>

- [func add(mediaItem: MediaItem) -> DownloadItem.Id](./details.md#addmediaitem)

- [func itemsByStatus(_ status: DownloadItem.Status) -> [DownloadItem]](./details.md#items)

- [func pause(id: DownloadItem.Id)](./details.md#pauseid)

- [func pauseAll()](./details.md#pauseall)

- [func remove(id: DownloadItem.Id)](./details.md#removeid)

- [func removeAll()](./details.md#removeall)

- [func removeCompleted()](./details.md#removecompleted)

- [func resume(id: DownloadItem.Id)](./details.md#resumeid)

- [func resumeAll()](./details.md#resumeall)

- [func addListener(_ listener: DownloadManagerListener)](./details.md#addlistener_)

- [func removeListener(_ listener: DownloadManagerListener)](./details.md#removelistener_)

</details>
<br>