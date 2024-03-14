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
    ) {
        override fun toString(): String
    }
}
```

다운로드 진행을 나타내는 데이터 클래스입니다. 현재 다운로드된 파일 크기와 전체 파일 크기를 가지고 있습니다.

<details open>
<summary>
    <a href="./details.md#속성">속성</a>
</summary>

* [val downloadedSize: Long](./details.md#downloadedsize)

* [val fileSize: Long](./details.md#filesize)
    
* [사용 예제](./details.md#사용-예제)

</details>
<br>

<details open>
<summary>
    <a href="./details.md#메서드">메서드</a>
</summary>

* [fun toString(): String](./details.md#tostring)

</details>
<br>