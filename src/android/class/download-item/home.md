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
}
```
<div align="right">
참고: <a href="#id">DownloadItemId</a>, 
<a href="../../enum/download-item-status/home.md">Status</a>,
<a href="../../class/download-item-progress/home.md">Progress</a>, 
<a href="../../enum/download-item-failed-reason/home.md">FailedReason</a>
</div>

다운로드 아이템을 나타내는 데이터 클래스입니다. 다운로드에 대한 정보, 진행 상태 등의 정보를 가지고 있습니다.

## id
```kotlin
val id: DownloadItemId
```
|타입|설명|
|:--:|:--:|
|Id|다운로드 아이템의 고유 아이디|

다운로드 아이템의 고유의 아이디입니다. 다운로드를 일시정지하거나, 다시 시작할 때, 삭제할 때 등에 사용됩니다. 이때, Id는 value class로 아래와 같습니다.

```kotlin
typealias DownloadItemId = UUID
```
<div align="right">
참고: <a href="https://developer.android.com/reference/kotlin/java/util/UUID">UUID</a>
</div>

## displayPath
```kotlin
val displayPath: String
```
|타입|설명|
|:--:|:--:|
|String|다운로드된 아이템이 저장되는 상대 경로. 이때 상대 경로는 [downloadsUri](../download-manager/home.md#downloadsuri)를 기준으로 함|
<div align="right">
비교: <a href="#touri">toUrl</a><br>
참고: <a href="../download-manager/home.md#downloadsuri">downloadsUri</a>
</div>

## fromUri
```kotlin
val fromUri: Uri
```
|타입|설명|
|:--:|:--:|
|[android.net.Uri](https://developer.android.com/reference/android/net/Uri)|아이템을 가져올 주소|

다운로드할 아이템의 주소입니다.

## toUri
```kotlin
val toUri: Uri
```
|타입|설명|
|:--:|:--:|
|[android.net.Uri](https://developer.android.com/reference/android/net/Uri)|다운로드된 아이템이 저장되는 절대 경로|
<div align="right">
비교: <a href="#displaypath">displayPath</a><br>
참고: <a href="../download-manager/home.md#downloadsuri">downloadsUri</a>
</div>

다운로드된 아이템이 저장되는 절대 경로입니다.<br>

## status
```kotlin
val status: Status
```
|타입|설명|
|:--:|:--:|
|[Status](../../enum/download-item-status/home.md)|다운로드 아이템의 현재 상태|

<div align="right">
참고: <a href="../../enum/download-item-status/home.md">DownloadItem.Status</a>
</div>

## progress
```kotlin
val progress: Progress?
```
|타입|설명|
|:--:|:--:|
|[Progress](../download-item-progress/home.md)?|다운로드 아이템의 다운로드 진행을 나타냅니다.|

<div align="right">
참고: <a href="../download-item-progress/home.md">Progress</a>
</div>

## failedReason
```kotlin
val failedReason: FailedReason?
```
|타입|설명|
|:--:|:--:|
|[FailedReason](../../enum/download-item-failed-reason/home.md)?|다운로드가 실패한 이유|

<div align="right">
참고: <a href="../../enum/download-item-failed-reason/home.md">DownloadItem.FailedReaseon</a>
</div>
