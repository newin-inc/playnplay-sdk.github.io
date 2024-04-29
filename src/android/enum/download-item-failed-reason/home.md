# DownloadItem.FailedReason

```kotlin
import com.newin.nplayer.sdk.DownloadItem
```

```kotlin
data class DownloadItem {

    enum class FailedReason(val value: Int) {

        Unknown(android.app.DownloadManager.ERROR_UNKNOWN),

        FileError(android.app.DownloadManager.ERROR_FILE_ERROR),

        UnhandledHttpCode(android.app.DownloadManager.ERROR_UNHANDLED_HTTP_CODE),

        HttpDataError(android.app.DownloadManager.ERROR_HTTP_DATA_ERROR),

        TooManyRedirects(android.app.DownloadManager.ERROR_TOO_MANY_REDIRECTS),

        InsufficientSpace(android.app.DownloadManager.ERROR_INSUFFICIENT_SPACE),

        DeviceNotFound(android.app.DownloadManager.ERROR_DEVICE_NOT_FOUND),

        CannotResume(android.app.DownloadManager.ERROR_CANNOT_RESUME),

        FileAlreadyExists(android.app.DownloadManager.ERROR_FILE_ALREADY_EXISTS),

        DeviceLimitExceeded(MediaPlayerException.ERROR_CODE_DEVICE_LIMIT_EXCEEDED),

        AccessRightsExpired(MediaPlayerException.ERROR_CODE_ACCESS_RIGHTS_EXPIRED),

        NoAccessRights(MediaPlayerException.ERROR_CODE_NO_ACCESS_RIGHTS),

        Unauthorized(MediaPlayerException.ERROR_CODE_UNAUTHORIZED);

        override fun toString(): String

    }
}
```

다운로드가 실패한 이유를 나타내는 데이터 클래스입니다. 

## 사용 예제
다운로드 아이템이 만약 실패했다면, 실패한 이유를 화면에 출력하는 예제.
```kotlin
if (item.status == DownloadItem.Status.Failed) {
    println("Failed: ${item.failedReason}")
}
```
toString() 메서드를 통해서 아래처럼 화면에 출력됩니다.
```log
Failed: Access rights expired
```

