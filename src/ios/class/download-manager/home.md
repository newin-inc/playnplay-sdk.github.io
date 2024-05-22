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

    public static let shared: DownloadManager

    public var downloadsUrl: URL
    public var downloadRootUrl: URL
    public var items: [DownloadItem]
    public var maxParallelDownloads: Int = 3

    @discardableResult public func add(mediaItem: MediaItem, allowsCellularAccess: Bool = true) -> DownloadItem.Id
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

<br><br>
# 정적 속성

## shared
```swift
static let shared: DownloadManager { get }
```
|타입|설명|설정|
|:--:|:--:|:--:|
|[DownloadManager](#downloadmanager)|현재 활성화된 다운로드 매니저에 접근하기 위한 속성|불가능|

다운로드 매니저에 접근하기 위한 정적 속성입니다. 아래에 언급되는 속성 및 메서드를 호출할 때, DownloadManager.shared를 사용하여 접근할 수 있습니다.

<br><br>
# 속성

## downloadsUrl
```swift
var downloadsUrl: URL { get }
```
|타입|설명|설정|
|:--:|--|:--:|
|[URL](https://developer.apple.com/documentation/foundation/url)|다운로드된 아이템이 저장되는 최상위 디렉토리|불가능|

다운로드된 아이템이 저장되는 디렉토리 중 최상위 디렉토리를 나타내는 속성입니다.
<div align="right">
참고: <a href="../../struct/download-item/home.md#displaypath">displayPath</a>, 
<a href="../../struct/download-item/home.md#tourl">toUrl</a>, 
<a href="https://developer.apple.com/documentation/foundation/url)">URL</a>
</div>

<br><br>
## items
```swift
var items: [DownloadItem] { get }
```
|타입|설명|설정|
|:--:|--|:--:|
|\[[DownloadItem](../../struct/download-item/home.md)\]|현재 다운로드 목록에 있는 아이템들|불가능|

현재 다운로드 목록에 있는 아이템들을 반환하는 속성입니다.
<div align="right">
참고: <a href="../../struct/download-item/home.md">DownloadItem</a>
</div>

<br><br>
## maxParallelDownloads
```swift
var maxParallelDownloads: Int { get set }
```
|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|Int|동시에 다운받을 수 있는 아이템 최대 개수|가능|3|

동시에 받을 수 있는 아이템의 최대 개수를 반환하거나 설정합니다.

<br><br>
# 메서드

## add(mediaItem:allowsCellularAccess:)
```swift
@discardableResult func add(
    mediaItem: MediaItem,
    allowsCellularAccess: Bool = true
) -> DownloadItem.Id
```
|파라미터|타입|설명|필수|기본값|
|:--:|:--:|--|:--:|:--:|
|mediaItem|[MediaItem](../../struct/media-item/home.md)|추가하고자 하는 미디어 아이템|O|없음|
|allowsCellularAccess|Bool|다운로드 시 셀룰러 데이터 사용 여부|X|true|

<div align="right">
참고: <a href="../../struct/media-item/home.md">MediaItem</a>, 
<a href="../../struct/download-item/home.md#id-downloaditemid">DownloadItem.id</a>
</div>

다운로드를 할 미디어 아이템을 추가합니다. 현재 다운로드가 진행되고 있는 아이템의 수가 [maxParallelDownloads](#maxparalleldownloads) 보다 적으면 바로 다운로드를 시작합니다. 셀룰러 데이터 사용을 허용하지 않으려면, allowsCellularAccess를 false로 설정하여 호출하십시오.

<br><br>
## itemsByStatus(_)
```swift
func itemsByStatus(_ status: DownloadItem.Status) -> [DownloadItem]
```
|파라미터|타입|설명|
|:--:|:--:|--|
|status|[DownloadItem.Status](../../enum/download-item-status/home.md)|가져오고자 하는 아이템의 다운로드 상태|

특정 다운로드 상태의 아이템 목록을 가져오기 위해서 사용하는 메서드입니다.

<div align="right">
참고: <a href="../../enum/download-item-status/home.md">DownloadItem.Status</a>, 
<a href="../../struct/download-item/home.md">DownloadItem</a>
</div>

<br><br>
## pause(id:)
```swift
func pause(id: DownloadItem.Id)
```
|파라미터|타입|설명|
|:--:|:--:|--|
|id|[DownloadItem.Id](../../struct/download-item/home.md#id-downloaditemid)|일서 정지할 다운로드 아이템의 아이디|

다운로드를 일시 정지할 때 사용하는 메서드입니다.

<div align="right">
참고: <a href="../../struct/download-item/home.md#id-downloaditemid">DownloadItem.id</a>
</div>

<br><br>
## pauseAll()
```swift
func pauseAll()
```
다운로드 목록에 있는 모든 아이템의 다운로드를 일시 정지하게 하는 메서드입니다.

<br><br>
## remove(id:)
```swift
func remove(id: DownloadItem.Id)
```
|파라미터|타입|설명|
|:--:|:--:|--|
|id|[DownloadItem.Id](../../struct/download-item/home.md#id-downloaditemid)|제거할 다운로드 아이템의 아이디|

다운로드 목록에서 아이템을 지울 때 사용하는 메서드입니다.

<div align="right">
참고: <a href="../../struct/download-item/home.md#id-downloaditemid">DownloadItem.id</a>
</div>

<br><br>
## removeAll()
```swift
func removeAll()
```
다운로드 아이템 목록을 모두 지우는 메서드입니다.

<br><br>
## removeCompleted()
```swift
func removeCompleted()
```
다운로드가 완료된 아이템을 목록에서 모두 지우는 메서드입니다.

<br><br>
## resume(id:)
```swift
func resume(id: DownloadItem.Id)
```
|파라미터|타입|설명|
|:--:|:--:|--|
|id|[DownloadItem.Id](../../struct/download-item/home.md#id-downloaditemid)|계속 진행할 다운로드 아이템의 아이디|

다운로드를 일시 정지한 아이템의 다운로드를 재개하는 메서드입니다.

<div align="right">
참고: <a href="../../struct/download-item/home.md#id-downloaditemid">DownloadItem.id</a>
</div>

<br><br>
## resumeAll()
```swift
func resumeAll()
```
일시 정지한 모든 아이템의 다운로드를 재개하는 메서드입니다.

<br><br>
## addListener(_)
```swift
func addListener(_ listener: DownloadManager.Listener)
```
|파라미터|타입|설명|
|:--:|:--:|--|
|listener|[DownloadManager.Listener](../../protocol/download-manager-listeners/home.md)|추가할 다운로드 매니저 리스너|

[다운로드 매니저 리스너](../../protocol/download-manager-listeners/home.md)를 추가하기 위한 메서드입니다. 리스너를 추가한 후, 해당 리스너가 더 이상 필요 없을 떄는 반드시 [removeListener(_)](#removelistener_) 메서드를 사용해서 제거하세요.

<div align="right">
참고: <a href="../../protocol/download-manager-listeners/home.md">DownloadManager.Listener</a>
</div>

<br><br>
## removeListener(_)
```swift
func removeListener(_ listener: DownloadManager.Listener)
```
|파라미터|타입|설명|
|:--:|:--:|--|
|listener|[DownloadManager.Listener](../../protocol/download-manager-listeners/home.md)|제거할 다운로드 매니저 리스너|

[다운로드 매니저 리스너](../../protocol/download-manager-listeners/home.md)를 제거하기 위한 메서드입니다.

<div align="right">
참고: <a href="../../protocol/download-manager-listeners/home.md">DownloadManager.Listener</a>
</div>
