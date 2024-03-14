# 속성

## id (DownloadItem.Id)
```swift
public let id: Id
```
|타입|설명|
|:--:|:--|
|Id|다운로드 아이템의 고유 아이디|

다운로드 아이템의 고유의 아이디입니다. 다운로드를 일시정지하거나, 다시 시작할 때, 삭제할 때 등에 사용됩니다. 이때, Id는 아래에서 보이는 것과 같이, NSObject의 typealias입니다. 

```swift
extension DownloadItem {
    public typealias Id = NSObject
}
```

사용 예제: 다운로드 매니저에 아이템을 추가하고, 이후에 목록에서 제거하는 예제
```swift
let id = DownloadManager.shared.add(mediaItem: mediaItem)

...

DownloadManager.shared.remove(id: id)
```

## displayPath
```swift
public let displayPath: String
```
|타입|설명|
|:--:|:--|
|String|다운로드된 아이템이 저장되는 상대 경로. 이때 상대 경로는 [downloadRootUrl](../../class/download-manager/details.md#downloadrooturl)를 기준으로 함|
<div align="right">
비교: <a href="#tourl">toUrl</a><br>
참고: <a href="../../class/download-manager/details.md#downloadrooturl">downloadRootUrl</a>
</div>

다운로드 아이템(item)이 있을 때, [item.toUrl](#tourl)는 [DownloadManager.shared.downloadRootUrl](../../class/download-manager/details.md#downloadrooturl)와 [item.displayPath](#displaypath)로 구성된다고 할 수 있고, 간단하게 아래와 같이 테스트를 할 수 있습니다.<p>
주의: 아무런 처리 없이 downloadRootUrl와 displayPath를 합쳐서 toUrl를 만들 수는 없습니다. 왜냐하면, downloadRootUrl의 마지막 /와 displayPath의 맨 앞 /가 중복되기 때문입니다.

```swift
print(item.toUrl)
print(DownloadManager.shared.downloadRootUrl)
print(item.displayPath)
```

실행 결과 아래와 같은 로그를 볼 수 있습니다.
```log
file:///Users/user/xxx/xxx/Documents/video/test.mp4     // toUrl
file:///Users/user/xxx/xxx/Documents/                   // downloadRootUrl
/video/test.mp4                                         // displayPath
```

## fromUrl
```swift
public let fromUrl: URL
```
|타입|설명|
|:--:|:--|
|URL|아이템을 가져올 주소|

다운로드할 아이템의 주소입니다.

## toUrl
```swift
public let toUrl: URL
```
|타입|설명|
|:--:|:--|
|URL|다운로드된 아이템이 저장되는 절대 경로|
<div align="right">
비교: <a href="#displaypath">displayPath</a>
</div>

다운로드된 아이템이 저장되는 절대 경로입니다.<br>
[displayPath](#displaypath)와 [DownloadManager.shared.downloadRootUrl](../../class/download-manager/details.md#downloadrooturl)와의 관계에 관한 보다 더 자세한 설명은 [displayPath](#displaypath)를 참고하세요.

## status
```swift
public let status: Status
```
|타입|설명|
|:--:|:--|
|[Status](../../enum/download-item-status/home.md)|다운로드 아이템의 현재 상태|

<div align="right">
참고: <a href="../../enum/download-item-status/home.md">DownloadItem.Status</a>
</div>

사용 예제: 다운로드를 기다리고 있는 첫 번째 아이템을 가져오는 예제
```swift
let firstPendingItem = DownloadManager.shared.items.first(where: { item in
    item.status == DownloadItem.Status.pending
})
```

## progress
```swift
public let progress: (Int64, Int64)?
```
|타입|설명|
|:--:|:--|
|(Int64, Int64)?|다운로드 아이템의 다운로드 진행을 나타냅니다. 첫 번째는 현재까지 다운로드된 파일의 크기, 두 번째는 파일 전체 크기를 나타냅니다.|

사용 예제: 다운로드 목록에 있는 첫 번째 아이템의 진행률을 계산하는 예제
```swift
if let progress = DownloadManager.shared.items[0].progress {
    let rate = Double(progress.0) / Double(progress.1) * 100.0
}
```

## failedReason
```swift
public let failedReason: String?
```
|타입|설명|
|:--:|:--|
|String?|다운로드가 실패한 이유|

사용 예제: 다운로드에 실패한 아이템들 중 첫 번째 아이템의 실패 이유를 가져오는 예제
```swift
let failedItems = DownloadManager.shared.itemsByStatus(.failed)
if let item = failedItems.first {
    let reason = item.failedReason ?? "Unknown"
}
```