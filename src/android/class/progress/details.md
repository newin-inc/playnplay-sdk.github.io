# 속성

## downloadedSize
```kotlin
val downloadedSize: Long
```
현재까지 다운로드된 파일의 크기를 나타내는 속성입니다. 단위는 바이트입니다.

## fileSize
```kotlin
val fileSize: Long
```
파일 전체 크기를 나타내는 속성입니다. 단위는 바이트입니다.

### 사용 예제
다운로드 중인 아이템들의 진행률을 화면에 출력하는 예제
```kotlin
val downloadingItems =
    DownloadManager.shared.items.filter { 
        it.status == DownloadItem.Status.Downloading
    }
downloadingItems.forEach { item ->
    val progress = item.progress ?: return@forEach
    val rate = progress.downloadedSize.toDouble() / progress.fileSize * 100
    println(rate)
}
```

결과로 아래와 같은 값을 볼 수 있습니다.
```log
...
11.653606356829108
4.4705683157887695
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
아이템의 현재 다운로드 진행률을 문자열 형태로 나타낼 때 사용하는 메서드입니다.

사용 예제: 모든 아이템의 진행률을 문자열 형태로 화면에 출력하는 예제
```kotlin
DownloadManager.shared.items.forEach { item ->
    println(item.progress)
}
```

결과로 아래와 같은 문자열 목록을 볼 수 있습니다.
```log
...
11.87MB / 170MB (7.0%)
4.50MB / 4.50MB (100.0%)
...
```