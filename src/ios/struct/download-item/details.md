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

## fromUrl
```swift
public let fromUrl: URL
```
|타입|설명|
|:--:|:--|
|URL|아이템을 가져올 주소|

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

## status
```swift
public let status: Status
```
|타입|설명|
|:--:|:--|
|[Status](../../enum/download-item-status/home.md)|다운로드 아이템의 현재 상태|

<div align="right">
참고: <a href="../../enum/download-item-status/">DownloadItem.Status</a>
</div>

사용 예제
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

사용 예제
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

사용 예제
```swift
let failedItems = DownloadManager.shared.itemsByStatus(.failed)
if let item = failedItems.first {
    let reason = item.failedReason ?? "Unknown"
}
```