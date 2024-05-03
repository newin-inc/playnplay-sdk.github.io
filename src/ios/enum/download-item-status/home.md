# DownloadItem.Status

```swift
extension DownloadItem {

    public enum Status: String {

        case pending = "Pending"

        case downloading = "Downloading"

        case paused = "Paused"

        case failed = "Failed"

        case completed = "Completed"
    }
}
```

|이름|설명|
|:--:|:--:|
|pending|다운로드를 할 수 있는 상태 혹은 다운로드를 기다리는 상태|
|downloading|다운로드 중인 상태|
|paused|다운로드를 일시 정지한 상태|
|failed|다운로드를 실패한 상태|
|completed|다운로드를 완료한 상태|

아이템의 현재 다운로드 상태를 나타냅니다.