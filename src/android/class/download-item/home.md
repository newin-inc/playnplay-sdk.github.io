# DownloadItem
```kotlin
import com.newin.nplayer.sdk.DownloadItem
```

```kotlin
data class DownloadItem(
    val id: DownloadItemId,
    val fromUri: Uri,
    val toUri: Uri,
    val status: Status,
    val displayPath: String,
    val progress: Progress?,
    val failedReason: FailedReason?
) {
    enum class Status(val value: String)
    data class Progress(val downloadedSize: Long, val fileSize: Long)
    enum class FailedReason(val value: Int)
    override fun toString(): String
}
```
<div align="right">
참고: <a href="./details.md#id">DownloadItemId</a>, 
<a href="../../enum/download-item-status/home.md">Status</a>,
<a href="../../class/download-item-progress/home.md">Progress</a>
</div>

다운로드 아이템을 나타내는 데이터 클래스입니다. 다운로드에 대한 정보, 진행 상태 등의 정보를 가지고 있습니다.

<details open>
<summary>
    <a href="./details.md#속성">속성</a>
</summary>

* [val id: DownloadItemId](./details.md#id)

* [val displayPath: String](./details.md#displaypath)

* [val fromUri: Uri](./details.md#fromuri)

* [val toUri: Uri](./details.md#touri)

* [val status: Status](./details.md#status)

* [val progress: Progress?](./details.md#progress)

* [val failedReason: FailedReason?](./details.md#failedreason)
    
</details>
<br>

<details open>
<summary>
    <a href="./details.md#메서드">메서드</a>
</summary>

* [fun toString(): String](./details.md#tostring)

</details>
<br>