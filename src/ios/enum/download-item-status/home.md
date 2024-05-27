# DownloadItem.Status

```swift
enum Status : String
```

아이템의 현재 다운로드 상태를 나타냅니다.

<br>

# 케이스

## completed

```swift
case completed = "Completed"
```

다운로드를 완료한 상태

## downloading

```swift
case downloading = "Downloading"
```

다운로드 중인 상태

## failed

```swift
case failed = "Failed"
```

다운로드를 실패한 상태

## paused

```swift
case paused = "Paused"
```

다운로드를 일시 정지한 상태

## pending

```swift
case pending = "Pending"
```

다운로드를 할 수 있는 상태 혹은 다운로드를 기다리는 상태
