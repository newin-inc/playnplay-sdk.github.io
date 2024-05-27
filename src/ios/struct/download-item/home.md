# DownloadItem

```swift
struct DownloadItem
```

다운로드 아이템을 나타내는 구조체입니다. 다운로드에 대한 정보, 진행 상태 등의 정보를 가지고 있습니다.

<br>

# 속성

## displayPath

```swift
let displayPath: String
```

|타입|설명|
|:--:|:--:|
|String|다운로드된 아이템이 저장되는 상대 경로. 이때 상대 경로는 [downloadsUrl](../../class/download-manager/home.md#downloadsurl)를 기준으로 함|

<div align="right">
비교: <a href="#tourl">toUrl</a><br>
참고: <a href="../../class/download-manager/home.md#downloadsurl">downloadsUrl</a>
</div>

## failedReason

```swift
let failedReason: String?
```

|타입|설명|
|:--:|:--:|
|String?|다운로드가 실패한 이유|

## fromUrl

```swift
let fromUrl: URL
```

|타입|설명|
|:--:|:--:|
|[URL](https://developer.apple.com/documentation/foundation/url)|아이템을 가져올 주소|

다운로드할 아이템의 주소입니다.

<div align="right">
참고: <a href="https://developer.apple.com/documentation/foundation/url">URL</a>
</div>

## id (DownloadItem.Id)

```swift
let id: Id
```

|타입|설명|
|:--:|:--:|
|Id|다운로드 아이템의 고유 아이디|

다운로드 아이템의 고유의 아이디입니다. 다운로드를 일시정지하거나, 다시 시작할 때, 삭제할 때 등에 사용됩니다. 이때, Id는 아래에서 보이는 것과 같이, NSObject의 typealias입니다. 

```swift
extension DownloadItem {
    public typealias Id = NSObject
}
```

## progress

```swift
let progress: (Int64, Int64)?
```

|타입|설명|
|:--:|:--:|
|(Int64, Int64)?|다운로드 아이템의 다운로드 진행 정도를 나타냅니다. 첫 번째는 현재까지 다운로드된 파일의 크기, 두 번째는 파일 전체 크기를 나타냅니다.|

## status

```swift
let status: Status
```

|타입|설명|
|:--:|:--:|
|[Status](../../enum/download-item-status/home.md)|다운로드 아이템의 현재 상태|

다운로드 아이템의 현재 상태입니다.

<div align="right">
참고: <a href="../../enum/download-item-status/home.md">DownloadItem.Status</a>
</div>

## toUrl

```swift
let toUrl: URL
```

|타입|설명|
|:--:|:--:|
|[URL](https://developer.apple.com/documentation/foundation/url)|다운로드된 아이템이 저장되는 절대 경로|

다운로드된 아이템이 저장되는 절대 경로입니다.

<div align="right">
비교: <a href="#displaypath">displayPath</a>
참고: <a href="https://developer.apple.com/documentation/foundation/url">URL</a>
</div>

<br>

# 열거형

## Status

```swift
enum Status: String
```

아이템의 현재 다운로드 상태를 나타냅니다.

<div align="right">
참고: <a href="../../enum/download-item-status/home.md">DownloadItem.Status</a>
</div>



