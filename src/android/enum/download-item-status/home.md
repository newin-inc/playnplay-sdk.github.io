# DownloadItem.Status

```kotlin
import com.newin.nplayer.sdk.DownloadItem
```

```kotlin
data class DownloadItem {

    enum class Status(val value: String) {

        Completed("Completed").

        Downloading("Downloading"),

        Failed("Failed"),

        Paused("Paused"),

        Pending("Pending")
    }
}
```

|이름|설명|
|:--:|--|
|Completed|다운로드를 완료한 상태|
|Downloading|다운로드 중인 상태|
|Failed|다운로드를 실패한 상태|
|Paused|다운로드를 일시 정지한 상태|
|Pending|다운로드를 할 수 있는 상태 혹은 다운로드를 기다리는 상태|

아이템의 현재 다운로드 상태를 나타냅니다.

## 사용 예제
다운로드가 완료된 아이템 중 첫 번째 아이템을 가져오는 예제
```kotlin
val firstCompletedItem = DownloadManager.shared.items.first { item ->
    item.status == DownloadItem.Status.Completed
}
```