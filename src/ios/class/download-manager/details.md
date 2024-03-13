# 속성

## downloadRootUrl
```swift
public var downloadRootUrl: URL { get }
```
|타입|설명|설정|
|:--:|--|:--:|
|[URL](https://developer.mozilla.org/en-US/docs/Web/API/URL)|다운로드된 아이템이 저장되는 최상위 디렉토리|X|

다운로드된 아이템이 저장되는 디렉토리 중 최상위 디렉토리를 나타내는 속성입니다.

사용 예제
```swift
let rootUrl = DownloadManager.shared.downloadRootUrl
```

## items
```swift
public var items: [DownloadItem] { get }
```
|타입|설명|설정|
|:--:|--|:--:|
|\[[DownloadItem](../../struct/download-item/home.md)\]|현재 다운로드 목록에 있는 아이템들|X|

현재 다운로드 목록에 있는 아이템들을 반환하는 속성입니다.

사용 예제
```swift
let completedItemsCount = DownloadManager.shared.items.filter { item in
    item.status == DownloadItem.Status.completed
}.count
```

## maxParallelDownloads
```swift
public var maxParallelDownloads: Int { get set }
```
|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|Int|동시에 다운받을 수 있는 아이템 최대 개수|O|3|

동시에 받을 수 있는 아이템의 최대 개수를 반환하거나 설정합니다.

사용 예제
```swift
DownloadManager.shared.pauseAll()   // 다운로드를 모두 일시 정지한 후,

DownloadManager.shared.maxParallelDownloads = 2 // 동시에 2개의 다운로드만 허용하도록 설정을 바꾸고,

DownloadManager.shared.resumAll()   // 다운로드 작업을 다시 시작합니다.
```

## shared
```swift
public static let shared: DownloadManager { get }
```
|타입|설명|설정|
|:--:|--|:--:|
|DownloadManager|현재 활성화된 다운로드 매니저에 접근하기 위한 속성|X|

다운로드 매니저에 접근하기 위한 속성입니다. 아래와 같은 방법으로 사용할 수 있습니다.

사용 예제
```swift
DownloadManager.shared.pauseAll()

...

let completedItems = DownloadManager.shared.items.filter { item in
    item.status == DownloadItem.Status.completed
}
...

DownloadManager.shared.removeAll()
```

<br><br><br>
------
------
# 메서드

## add(mediaItem:)
```swift
@discardableResult public func add(mediaItem: MediaItem) throws -> DownloadItem.Id
```
|파라미터|타입|설명|
|:--:|:--:|--|
|mediaItem|[MediaItem](../../struct/media-item/home.md)|추가하고자 하는 미디어 아이템|

다운로드를 할 미디어 아이템을 추가합니다. 현재 다운로드가 진행되고 있는 아이템의 수가 [maxParallelDownloads](#maxparalleldownloads) 보다 적으면 바로 다운로드를 시작합니다.

사용 예제
```swift
do {
    let id = try DownloadManager.shared.add(mediaItem: mediaItem)
    ...
} catch {
    os_log(.info, "%@", error.localizedDescription)
}
```

## itemsByStatus(_)
```swift
public func itemsByStatus(_ status: DownloadItem.Status) -> [DownloadItem]
```
|파라미터|타입|설명|
|:--:|:--:|--|
|status|[DownloadItem.Status](../../enum/download-item-status/home.md)|구분하고자 하는 아이템의 다운로드 상태|

특정 다운로드 상태의 아이템 목록을 가져오기 위해서 이 메서드를 사용하면 됩니다.

사용 예제
```swift
let failedItems: [DownloadItem] = DownloadManager.shared.itemsByStatus(.failed)
```

## pause(id:)
```swift
public func pause(id: DownloadItem.Id)
```
|파라미터|타입|설명|
|:--:|:--:|--|
|id|[Id](../../struct/download-item/details.md#id-downloaditemid)|일서 정지할 다운로드 아이템의 아이디|

다운로드를 일시 정지할 때 이 메서드를 사용하면 됩니다.

사용 예제
```swift
if let item = DownloadManager.shared.items.first,
    item.status == DownloadItem.Status.downloading
{
    DownloadManager.shared.pause(id: item.id)
}
```

## pauseAll()
```swift
public func pauseAll()
```
다운로드 목록에 있는 모든 아이템의 다운로드를 일시 정지하게 하는 메서드입니다.

사용 예제
```swift
DownloadManager.shared.pauseAll()
```

## remove(id:)
```swift
public func remove(id: DownloadItem.Id)
```
|파라미터|타입|설명|
|:--:|:--:|--|
|id|[Id](../../struct/download-item/details.md#id-downloaditemid)|제거할 다운로드 아이템의 아이디|

사용 예제
```swift
if let item = DownloadManager.shared.itemsByStatus(.completed).first {
    DownloadManager.shared.remove(id: item.id)
}
```

## removeAll()
```swift
public func removeAll()
```
다운로드 아이템 목록을 모두 지우는 메서드입니다.

사용 예제
```swift
DownloadManager.shared.removeAll()
```

## removeCompleted()
```swift
public func removeCompleted()
```
다운로드가 완료된 아이템을 목록에서 모두 지우는 메서드입니다.

사용 예제
```swift
DownloadManager.shared.removeCompleted()
let isEmpty = DownloadManager.shared.itemsByStatus(.completed).isEmpty
assert(isEmpty, "not empty")
```

## resume(id:)
```swift
public func resume(id: DownloadItem.Id)
```
|파라미터|타입|설명|
|:--:|:--:|--|
|id|[Id](../../struct/download-item/details.md#id-downloaditemid)|계속 진행할 다운로드 아이템의 아이디|

사용 예제
```swift
if let item = DownloadManager.shared.itemsByStatus(.paused).first {
    DownloadManager.shared.resume(id: item.id)
}
```

## resumeAll()
```swift
public func resumeAll()
```
일시 정지한 모든 아이템을 다시 다운로드하게 하는 메서드입니다.

사용 예제
```swift
DownloadManager.shared.resumeAll()
```

## addListener(_)
```swift
func addListener(_ listener: DownloadManager.Listener)
```
|파라미터|타입|설명|
|:--:|:--:|--|
|listener|[DownloadManager.Listener](../../protocol/download-manager-listeners/home.md)|추가할 다운로드 매니저 리스너|

[다운로드 매니저 리스너](../../protocol/download-manager-listeners/home.md)를 추가하기 위한 메서드입니다.

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

## removeListener(_)
```swift
func removeListener(_ listener: DownloadManager.Listener)
```
|파라미터|타입|설명|
|:--:|:--:|--|
|listener|[DownloadManager.Listener](../../protocol/download-manager-listeners/home.md)|제거할 다운로드 매니저 리스너|

[다운로드 매니저 리스너](../../protocol/download-manager-listeners/home.md)를 제거하기 위한 메서드입니다.

사용 예제
```swift
// addListener(_)의 사용 예제에 이어서 구현한 내용입니다.
DownloadManager.shared.removeListener(downloadManagerlistener)
```