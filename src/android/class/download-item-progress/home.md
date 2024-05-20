# Progress
```kotlin
import com.newin.nplayer.sdk.DownloadItem
```

```kotlin
data class DownloadItem {
    ...

    data class Progress(
        val downloadedSize: Long,
        val fileSize: Long
    )
}
```

다운로드 진행 정도를 나타내는 데이터 클래스입니다. 현재 다운로드된 파일 크기와 전체 파일 크기를 가지고 있습니다.

<br><br>
# 생성자 파라미터

## downloadedSize
```kotlin
val downloadedSize: Long
```
|타입|설명|
|:--:|:--:|
|Long|다운로드된 파일 크기|

현재까지 다운로드된 파일의 크기를 나타내는 속성입니다. 단위는 바이트입니다.

## fileSize
```kotlin
val fileSize: Long
```
|타입|설명|
|:--:|:--:|
|Long|파일 전체 크기|

파일 전체 크기를 나타내는 속성입니다. 단위는 바이트입니다.