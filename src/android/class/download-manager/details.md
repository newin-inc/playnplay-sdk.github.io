# 속성

## downloadsUri
```kotlin
var downloadsUri: Uri
```
|타입|설명|설정|
|:--:|--|:--:|
|[Uri](https://developer.android.com/reference/android/net/Uri)|다운로드된 아이템이 저장되는 최상위 디렉토리|불가능|
<div align="right">
참고: <a href="../download-item/details.md#displaypath">displayPath</a>, 
<a href="../download-item/details.md#touri">toUri</a>
</div>

다운로드된 아이템이 저장되는 디렉토리 중 최상위 디렉토리를 나타내는 속성입니다.<br>
[displayPath](../download-item/details.md#displaypath)와 [toUri](../download-item/details.md#touri)와의 관계에 관한 보다 더 자세한 설명은 [displayPath](../download-item/details.md#displaypath)를 참고하세요.

사용 예제: 루트 디렉토리 가져오는 예제
```kotlin
val rootUrl = DownloadManager.shared.downloadsUri
```

## items
```kotlin
val items: List<DownloadItem>
```
|타입|설명|설정|
|:--:|--|:--:|
|List<[DownloadItem](../download-item/home.md)>|현재 다운로드 목록에 있는 아이템들|불가능|

현재 다운로드 목록에 있는 아이템들을 반환하는 속성입니다.

사용 예제: 다운로드 목록에 있는 아이템들의 개수를 구하고, 아이템을 화면에 출력하는 예제
```kotlin
val count = DownloadManager.shared.items.count()

DownloadManager.shared.items.forEach { item ->
    createTableRow(item, count)
}
```

## maxParallelDownloads
```kotlin
var maxParallelDownloads: Int
```
|타입|설명|설정|기본값|
|:--:|--|:--:|:--:|
|Int|동시에 다운받을 수 있는 아이템 최대 개수|가능|3|

동시에 받을 수 있는 아이템의 최대 개수를 반환하거나 설정합니다.

사용 예제: 다운로드를 모두 일시 정지한 후, 동시 다운로드 개수를 2개로 제한한 뒤에, 다시 다운로드를 시작하는 예제
```kotlin
DownloadManager.shared.pauseAll()   // 다운로드를 모두 일시 정지한 후,

DownloadManager.shared.maxParallelDownloads = 2 // 동시에 2개의 다운로드만 허용하도록 설정을 바꾸고,

DownloadManager.shared.resumeAll()  // 다운로드 작업을 재개합니다.
```

## shared
```kotlin
val shared: DownloadManager
```
|타입|설명|설정|
|:--:|--|:--:|
|DownloadManager|현재 활성화된 다운로드 매니저에 접근하기 위한 속성|불가능|

다운로드 매니저에 접근하기 위한 속성입니다. 아래와 같은 방법으로 사용할 수 있습니다.

사용 예제: 다운로드를 모두 일시 정지 후, 어떤 작업을 한 뒤에, 다운로드 목록에서 아이템을 모두 제거하는 예제
```kotlin
DownloadManager.shared.pauseAll()

...

val firstCompletedItem = DownloadManager.shared.items.first { item ->
    item.status == DownloadItem.Status.Completed
}
...

DownloadManager.shared.removeAll()
```

<br><br><br>
------
------
# 메서드

## add
```kotlin
fun add(mediaItem: MediaItem): DownloadItem.Id
```
|파라미터|타입|설명|
|:--:|:--:|--|
|mediaItem|[MediaItem](https://developer.android.com/reference/androidx/media3/common/MediaItem)|추가하고자 하는 미디어 아이템|

다운로드를 할 미디어 아이템을 추가합니다. 현재 다운로드가 진행되고 있는 아이템의 수가 [maxParallelDownloads](#maxparalleldownloads) 보다 적으면 바로 다운로드를 시작합니다.

사용 예제: 미디어 아이템을 다운로드 매니저에 추가하고, 아이디를 저장하는 예제
```kotlin
val id = DownloadManager.shared.add(mediaItem) // Id(value=xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx)
```

## getItemsByStatus
```kotlin
fun getItemsByStatus(status: DownloadItem.Status): List<DownloadItem>
```
|파라미터|타입|설명|
|:--:|:--:|--|
|status|[DownloadItem.Status](../../enum/download-item-status/home.md)|구분하고자 하는 아이템의 다운로드 상태|

특정 다운로드 상태의 아이템 목록을 가져오기 위해서 사용하는 메서드입니다.<br>

사용 예제: 다운로드가 완료된 아이템의 개수 구하는 예제
```kotlin
val completedItemsCount =
    DownloadManager.shared.getItemsByStatus(DownloadItem.Status.Completed).count()
```

## pause
```kotlin
fun pause(id: DownloadItem.Id)
```
|파라미터|타입|설명|
|:--:|:--:|--|
|id|[Id](../download-item/details.md#id)|일서 정지할 다운로드 아이템의 아이디|

다운로드를 일시 정지할 때 사용하는 메서드입니다.

사용 예제: 다운로드가 진행중인 아이템 중, 첫 번째 아이템을 일시 정지하는 예제
```kotlin
val downloadingItems =
    DownloadManager.shared.getItemsByStatus(DownloadItem.Status.Downloading)
downloadingItems.firstOrNull()?.apply {
    DownloadManager.shared.pause(id)
}
```

## pauseAll
```kotlin
fun pauseAll()
```
다운로드 목록에 있는 모든 아이템의 다운로드를 일시 정지하게 하는 메서드입니다.

```kotlin
DownloadManager.shared.pauseAll()
```

## remove
```kotlin
fun remove(id: DownloadItem.Id)
```
|파라미터|타입|설명|
|:--:|:--:|--|
|id|[Id](../download-item/details.md#id)|제거할 다운로드 아이템의 아이디|

다운로드 목록에서 아이템을 지울 때 사용하는 메서드입니다.

사용 예제: 다운로드를 실패한 아이템들을 다운로드 목록에서 제거하는 예제
```kotlin
val failedItems =
    DownloadManager.shared.getItemsByStatus(DownloadItem.Status.Failed)
failedItems.forEach { item ->
    DownloadManager.shared.remove(item.id)
}
```

## removeAll
```kotlin
fun removeAll()
```
다운로드 아이템 목록을 모두 지우는 메서드입니다.

사용 예제: 다운로드 목록에서 모든 아이템을 제거하는 예제
```kotlin
DownloadManager.shared.removeAll()
```

## removeCompleted
```kotlin
fun removeCompleted()
```
다운로드가 완료된 아이템을 목록에서 모두 지우는 메서드입니다.

사용 예제: 다운로드가 완료된 아이템을 목록에서 제거하고 확인하는 예제
```kotlin
DownloadManager.shared.removeCompleted()
val isEmpty =
    DownloadManager.shared.getItemsByStatus(DownloadItem.Status.Completed)
        .isEmpty()
assert(isEmpty)
```

## resume
```kotlin
fun resume(id: DownloadItem.Id)
```
|파라미터|타입|설명|
|:--:|:--:|--|
|id|[Id](../download-item/details.md#id)|다운로드 재개할 아이템의 아이디|

일시 정지한 아이템을 다시 다운로드하게 하는 메서드입니다.

사용 예제: 일시 정지된 다운로드 아이템들을 순차적으로 다운로드 재개하게 만드는 예제
```kotlin
val pausedItems =
    DownloadManager.shared.getItemsByStatus(DownloadItem.Status.Paused)
pausedItems.forEach { item ->
    DownloadManager.shared.resume(item.id)
}
```

## resumeAll
```kotlin
fun resumeAll()
```
일시 정지한 모든 아이템을 다시 다운로드하게 하는 메서드입니다.

사용 예제: 모든 아이템의 다운로드를 재개하게 만드는 예제
```kotlin
DownloadManager.shared.resumeAll()
```

## addListener
```kotlin
fun addListener(listener: Listener)
```
|파라미터|타입|설명|
|:--:|:--:|--|
|listener|[DownloadManager.Listener](../../interface/download-manager-listener/home.md)|추가할 다운로드 매니저 리스너|

[다운로드 매니저 리스너](../../interface/download-manager-listener/home.md)를 추가하기 위한 메서드입니다.

사용 예제: 다운로드가 진행됨에 따라, 진행률이 변경됨에 따라 어떠한 처리를 하고자 하는 예제
```kotlin
class ComponentListener : DownloadManager.Listener {
    override fun onProgressUpdated(item: DownloadItem) {
        val progress = item.progress ?: return
        val rate =
            progress.downloadedSize.toDouble() / progress.fileSize * 100
        ...
    }
}

val componentListener = ComponentListener()
DownloadManager.shared.addListener(componentListener)
```

## removeListener
```kotlin
fun removeListener(listener: Listener)
```
|파라미터|타입|설명|
|:--:|:--:|--|
|listener|[DownloadManager.Listener](../../interface/download-manager-listener/home.md)|제거할 다운로드 매니저 리스너|

[다운로드 매니저 리스너](../../interface/download-manager-listener/home.md)를 제거하기 위한 메서드입니다.

사용 예제: 리스너를 제거하는 예제
```kotlin
// addListener의 사용 예제에 이어서 구현한 내용입니다.
DownloadManager.shared.removeListener(componentListener)
```