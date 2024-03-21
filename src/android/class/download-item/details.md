# 속성

## id
```kotlin
val id: DownloadItemId
```
|타입|설명|
|:--:|:--|
|Id|다운로드 아이템의 고유 아이디|

다운로드 아이템의 고유의 아이디입니다. 다운로드를 일시정지하거나, 다시 시작할 때, 삭제할 때 등에 사용됩니다. 이때, Id는 value class로 아래와 같습니다.

```kotlin
typealias DownloadItemId = UUID
```
<div align="right">
참고: <a href="https://developer.android.com/reference/kotlin/java/util/UUID">UUID</a>
</div>

사용 예제: 다운로드 목록에 아이템을 추가하고, 이후에 일시 정지를 하는 예제
```kotlin
val id = DownloadManager.shared.add(mediaItem)  // Id(value=xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx)

...

DownloadManager.shared.pause(id)
```

<br><br>
## displayPath
```kotlin
val displayPath: String
```
|타입|설명|
|:--:|:--|
|String|다운로드된 아이템이 저장되는 상대 경로. 이때 상대 경로는 [downloadsUri](../download-manager/details.md#downloadsuri)를 기준으로 함|
<div align="right">
비교: <a href="#touri">toUrl</a><br>
참고: <a href="../download-manager/details.md#downloadsuri">downloadsUri</a>
</div>

다운로드 아이템(item)이 있을 때, [item.toUri](#touri)는 [DownloadManager.shared.downloadsUri](../download-manager/details.md#downloadsuri)와 [item.displayPath](#displaypath)로 구성된다고 할 수 있고, 간단하게 아래와 같이 테스트를 할 수 있습니다.

```kotlin
println(item.toUri)
println(DownloadManager.shared.downloadsUri)
println(item.displayPath)
assert(
    "${item.toUri}" == "${DownloadManager.shared.downloadsUri}${item.displayPath}"
) // true
```

실행 결과 아래와 같은 로그를 볼 수 있습니다.
```log
file:///data/user/0/com.xxx.xxx/files/video/test.mp4    // toUri
file:///data/user/0/com.xxx.xxx/files                   // downloadsUri
/video/test.mp4                                         // displayPath
```

<br><br>
## fromUri
```kotlin
val fromUri: Uri
```
|타입|설명|
|:--:|:--|
|[Uri](https://developer.android.com/reference/android/net/Uri)|아이템을 가져올 주소|

다운로드할 아이템의 주소입니다.

<br><br>
## toUri
```kotlin
val toUri: Uri
```
|타입|설명|
|:--:|:--|
|[Uri](https://developer.android.com/reference/android/net/Uri)|다운로드된 아이템이 저장되는 절대 경로|
<div align="right">
비교: <a href="#displaypath">displayPath</a>
참고: <a href="../download-manager/details.md#downloadsuri">downloadsUri</a>
</div>

다운로드된 아이템이 저장되는 절대 경로입니다.<br>
[displayPath](#displaypath)와 [DownloadManager.shared.downloadRootUrl](../download-manager/details.md#downloadsuri)와의 관계에 관한 보다 더 자세한 설명은 [displayPath](#displaypath)를 참고하세요.

<br><br>
## status
```kotlin
val status: Status
```
|타입|설명|
|:--:|:--|
|[Status](../../enum/download-item-status/home.md)|다운로드 아이템의 현재 상태|

<div align="right">
참고: <a href="../../enum/download-item-status/home.md">DownloadItem.Status</a>
</div>

사용 예제: 다운로드를 실패한 아이템들을 목록에서 지우는 예제
```kotlin
val failedItems =
    DownloadManager.shared.items.filter { it.status == DownloadItem.Status.Failed }
    // DownloadManager.shared.getItemsByStatus(DownloadItem.Status.Failed) 와 동일한 결과

failedItems.forEach { item ->
    DownloadManager.shared.remove(item.id)
}
```

<br><br>
## progress
```kotlin
val progress: Progress?
```
|타입|설명|
|:--:|:--|
|[Progress](../download-item-progress/home.md)?|다운로드 아이템의 다운로드 진행을 나타냅니다.|

<div align="right">
참고: <a href="../download-item-progress/home.md">Progress</a>
</div>

사용 예제: 다운로드 중인 아이템들의 현재 진행률을 화면에 출력하는 예제
```kotlin
val downloadingItems =
    DownloadManager.shared.getItemsByStatus(DownloadItem.Status.Downloading) 

downloadingItems.forEach { item ->
    val progress = item.progress ?: return@forEach

    val progressText = progress.toString()
    println(progressText)

    val rate = progress.downloadedSize.toDouble() / progress.fileSize * 100
    println(rate)
}
```

아래와 같은 결과를 볼 수 있습니다.
```log
...
19.77MB / 170MB (11.7%) // progressText
11.653606356829108      // rate
...
```

<br><br>
## failedReason
```kotlin
val failedReason: FailedReason?
```
|타입|설명|
|:--:|:--|
|[FailedReason](../../enum/download-item-failed-reason/home.md)?|다운로드가 실패한 이유|

<div align="right">
참고: <a href="../../enum/download-item-failed-reason/home.md">DownloadItem.FailedReaseon</a>
</div>


사용 예제: 다운로드에 실패한 아이템들의 실패 이유를 화면에 출력하는 예제
```kotlin
val failedItems =
    DownloadManager.shared.getItemsByStatus(DownloadItem.Status.Failed)

failedItems.forEach { item ->
    val reason = item.failedReason?.toString()
    println(reason)
}
```

실행 결과로 아래와 같이 출력될 수 있습니다.
```log
...
File Error
Device limit exceeded
...
```

<br><br><br>
------
------
# 메서드

## toString
```kotlin
override fun toString(): String
```
다운로드 아이템의 현재 상태를 문자열 형태로 나타낼 때 사용하는 메서드입니다.

사용 예제: 다운로드 목록에 있는 아이템들을 화면에 출력하는 예제
```kotlin
DownloadManager.shared.items.forEach { item ->
    println(item) 
}
```

실행 결과로 다운로드 아이템이 아래와 같이 문자열 형태로 출력됩니다.
```log
...
DownloadItem(
    id=Id(value=xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx),
    fromUri=https://xxxx/xx/xx/~~/xxx/xyz.mp4,
    toUri=file:///data/~~/xxx/xyz.mp4,
    status=Paused,
    displayPath=/xxx/xyz.mp4,
    progress=11.87MB / 170MB (7.0%),
    failedReason=null
)
...
```