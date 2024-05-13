# DownloadItem.FailedReason

```kotlin
import com.newin.nplayer.sdk.DownloadItem
```

```kotlin
data class DownloadItem {

    enum class FailedReason(val value: Int) {

        AccessRightsExpired(MediaPlayerException.ERROR_CODE_ACCESS_RIGHTS_EXPIRED),

        CannotResume(android.app.DownloadManager.ERROR_CANNOT_RESUME),

        DeviceLimitExceeded(MediaPlayerException.ERROR_CODE_DEVICE_LIMIT_EXCEEDED),

        DeviceNotFound(android.app.DownloadManager.ERROR_DEVICE_NOT_FOUND),

        FileAlreadyExists(android.app.DownloadManager.ERROR_FILE_ALREADY_EXISTS),

        FileError(android.app.DownloadManager.ERROR_FILE_ERROR),

        HttpDataError(android.app.DownloadManager.ERROR_HTTP_DATA_ERROR),

        InsufficientSpace(android.app.DownloadManager.ERROR_INSUFFICIENT_SPACE),

        NoAccessRights(MediaPlayerException.ERROR_CODE_NO_ACCESS_RIGHTS),

        TooManyRedirects(android.app.DownloadManager.ERROR_TOO_MANY_REDIRECTS),

        Unauthorized(MediaPlayerException.ERROR_CODE_UNAUTHORIZED);

        UnhandledHttpCode(android.app.DownloadManager.ERROR_UNHANDLED_HTTP_CODE),

        Unknown(android.app.DownloadManager.ERROR_UNKNOWN),
    }
}
```

다운로드가 실패한 이유를 나타내는 데이터 클래스입니다. 

|이름|설명|
|:--:|--|
|AccessRightsExpired|접근 권한이 만료된 경우|
|CannotResume|다운로드를 재개할 수 없는 경우<br>참고: [android.app.DownloadManager.ERROR_CANNOT_RESUME](https://developer.android.com/reference/android/app/DownloadManager#ERROR_CANNOT_RESUME)|
|DeviceLimitExceeded|기기 제한이 초과한 경우|
|DeviceNotFound|외부 저장소(SD 카드)가 없는 경우<br>참고: [android.app.DownloadManager.ERROR_DEVICE_NOT_FOUND](https://developer.android.com/reference/android/app/DownloadManager#ERROR_DEVICE_NOT_FOUND)|
|FileAlreadyExists|파일이 이미 존재하는 경우<br>참고: [android.app.DownloadManager.ERROR_FILE_ALREADY_EXISTS](https://developer.android.com/reference/android/app/DownloadManager#ERROR_FILE_ALREADY_EXISTS)|
|FileError|저장소와 관련된 문제가 있는 경우<br>참고: [android.app.DownloadManager.ERROR_FILE_ERROR](https://developer.android.com/reference/android/app/DownloadManager#ERROR_FILE_ERROR)| 
|HttpDataError|HTTP 레벨에서 오류가 발생한 경우<br>참고: [android.app.DownloadManager.ERROR_HTTP_DATA_ERROR](https://developer.android.com/reference/android/app/DownloadManager#ERROR_HTTP_DATA_ERROR)|
|InsufficientSpace|저장 공간이 부족한 경우<br>참고: [android.app.DownloadManager.ERROR_INSUFFICIENT_SPACE](https://developer.android.com/reference/android/app/DownloadManager#ERROR_INSUFFICIENT_SPACE)|
|NoAccessRights|접근 권한이 없는 경우|
|TooManyRedirects|리다이렉션이 많이 일어난 경우<br>참고: [android.app.DownloadManager.ERROR_TOO_MANY_REDIRECTS](https://developer.android.com/reference/android/app/DownloadManager#ERROR_TOO_MANY_REDIRECTS)|
|Unauthorized|권한이 없는 경우|
|UnhandledHttpCode|다운로드 매니저가 처리할 수 없는 HTTP 코드를 받은 경우<br>참고: [android.app.DownloadManager.ERROR_UNHANDLED_HTTP_CODE](https://developer.android.com/reference/android/app/DownloadManager#ERROR_UNHANDLED_HTTP_CODE)|
|Unknown|다운로드가 알 수 없는 이유와 함께 완료된 경우<br>참고: [android.app.DownloadManager.ERROR_UNKNOWN](https://developer.android.com/reference/android/app/DownloadManager#ERROR_UNKNOWN)|
