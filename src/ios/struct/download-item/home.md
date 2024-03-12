# DownloadItem

```swift
struct DownloadItem {
    public let id: Id
    public let displayPath: String
    public let fromUrl: URL
    public let toUrl: URL
    public let status: Status
    public let progress: (Int64, Int64)?
}
```
<div align="right">
참고: <a href="../../enum/download-item-status/home.md">DownloadItem.Status</a>
</div>

다운로드 아이템을 나타내는 구조체입니다. 다운로드에 대한 정보, 진행 상태 등의 정보를 가지고 있습니다.

<details open>
<summary>
    <a href="./details.md#속성">속성</a>
</summary>

* [let id: Id](./details.md#id)

* [let displayPath: String](./details.md#displaypath)

* [let fromUrl: URL](./details.md#fromurl)

* [let toUrl: URL](./details.md#tourl)

* [let status: Status](./details.md#status)

* [let progress: (Int64, Int64)?](./details.md#progress)

</details>
<br>
