# DownloadItem.FailedReason

```kotlin
import com.newin.nplayer.sdk.DownloadItem
```

```kotlin
data class DownloadItem {

    enum class FailedReason
}
```
다운로드가 실패한 이유를 나타내는 열거형입니다. 

<div align="right">
참고: <a href="../../class/download-item/home.md">DownloadItem</a>
</div>

## AccessRightsExpired
```kotlin
DownloadItem.FailedReason.AccessRightsExpired
```
접근 권한이 만료된 경우

<div align="right">
참고: <a href="../../class/media-player-exception/home.md#accessrightsexpiredexception">MediaPlayerException.ERROR_CODE_ACCESS_RIGHTS_EXPIRED</a>
</div>


## CannotResume
```kotlin
DownloadItem.FailedReason.CannotResume
```
다운로드를 재개할 수 없는 경우

<div align="right">
참고: <a href="https://developer.android.com/reference/android/app/DownloadManager#ERROR_CANNOT_RESUME">android.app.DownloadManager.ERROR_CANNOT_RESUME</a>
</div>

## DeviceLimitExceeded
```kotlin
DownloadItem.FailedReason.DeviceLimitExceeded
```
기기 제한이 초과한 경우

<div align="right">
참고: <a href="../../class/media-player-exception/home.md#devicelimitexceededexception">MediaPlayerException.ERROR_CODE_DEVICE_LIMIT_EXCEEDED</a>
</div>

## DeviceNotFound
```kotlin
DownloadItem.FailedReason.DeviceNotFound
```
외부 저장소(SD 카드)가 없는 경우

<div align="right">
참고: <a href="https://developer.android.com/reference/android/app/DownloadManager#ERROR_DEVICE_NOT_FOUND">android.app.DownloadManager.ERROR_DEVICE_NOT_FOUND</a>
</div>

## FileAlreadyExists
```kotlin
DownloadItem.FailedReason.FileAlreadyExists
```
파일이 이미 존재하는 경우

<div align="right">
참고: <a href="https://developer.android.com/reference/android/app/DownloadManager#ERROR_FILE_ALREADY_EXISTS">android.app.DownloadManager.ERROR_FILE_ALREADY_EXISTS</a>
</div>

## FileError
```kotlin
DownloadItem.FailedReason.FileError
```
저장소와 관련된 문제가 있는 경우

<div align="right">
참고: <a href="https://developer.android.com/reference/android/app/DownloadManager#ERROR_FILE_ERROR">android.app.DownloadManager.ERROR_FILE_ERROR</a>
</div>

## HttpDataError
```kotlin
DownloadItem.FailedReason.HttpDataError
```
HTTP 레벨에서 오류가 발생한 경우

<div align="right">
참고: <a href="https://developer.android.com/reference/android/app/DownloadManager#ERROR_HTTP_DATA_ERROR">android.app.DownloadManager.ERROR_HTTP_DATA_ERROR</a>
</div>


## InsufficientSpace
```kotlin
DownloadItem.FailedReason.InsufficientSpace
```
저장 공간이 부족한 경우

<div align="right">
참고: <a href="https://developer.android.com/reference/android/app/DownloadManager#ERROR_INSUFFICIENT_SPACE">android.app.DownloadManager.ERROR_INSUFFICIENT_SPACE</a>
</div>


## NoAccessRights
```kotlin
DownloadItem.FailedReason.NoAccessRights
```
접근 권한이 없는 경우

<div align="right">
참고: <a href="../../class/media-player-exception/home.md#noaccessrightsexception">MediaPlayerException.ERROR_CODE_NO_ACCESS_RIGHTS</a>
</div>

## TooManyRedirects
```kotlin
DownloadItem.FailedReason.TooManyRedirects
```
리다이렉션이 많이 일어난 경우

<div align="right">
참고: <a href="https://developer.android.com/reference/android/app/DownloadManager#ERROR_TOO_MANY_REDIRECTS">android.app.DownloadManager.ERROR_TOO_MANY_REDIRECTS</a>
</div>

## Unauthorized
```kotlin
DownloadItem.FailedReason.Unauthorized
```
권한이 없는 경우

<div align="right">
참고: <a href="../../class/media-player-exception/home.md#unauthorizedexception">MediaPlayerException.ERROR_CODE_UNAUTHORIZED</a>
</div>

## UnhandledHttpCode
```kotlin
DownloadItem.FailedReason.UnhandledHttpCode
```
다운로드 매니저가 처리할 수 없는 HTTP 코드를 받은 경우

<div align="right">
참고: <a href="https://developer.android.com/reference/android/app/DownloadManager#ERROR_UNHANDLED_HTTP_CODE">android.app.DownloadManager.ERROR_UNHANDLED_HTTP_CODE</a>
</div>

## Unknown
```kotlin
DownloadItem.FailedReason.Unknown
```
다운로드가 알 수 없는 이유와 함께 완료된 경우

<div align="right">
참고: <a href="https://developer.android.com/reference/android/app/DownloadManager#ERROR_UNKNOWN">android.app.DownloadManager.ERROR_UNKNOWN</a>
</div>