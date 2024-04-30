# MediaPlayerException

```kotlin
class MediaPlayerException(
    override val message: String,
    override val cause: Throwable?,
    errorCode: Int,
) : PlaybackException(message, cause, errorCode)
```
예외 처리를 위한 클래스입니다. [PlaybackException](https://developer.android.com/reference/kotlin/androidx/media3/common/PlaybackException)을 확장한 클래스로 아래와 같은 예외 처리 클래스로 사용됩니다. 

```kotlin
class AccessRightsExpiredException(override val message: String) : MediaPlayerException

class AppBundleNotRegisteredException : MediaPlayerException

class DeviceLimitExceededException(override val message: String) : MediaPlayerException

class LicenseCheckFailedException(override val message: String) : MediaPlayerException

class LicenseCheckFailureException(override val message: String) : MediaPlayerException

class LicenseNotFoundException(override val message: String) : MediaPlayerException

class MultipleConnectionsException(override val message: String) : MediaPlayerException

class NetworkException(override val message: String) : MediaPlayerException

class NoAccessRightsException(override val message: String) : MediaPlayerException

class NoCellularAccessException : MediaPlayerException

class NoOfflineAccessRightsException(override val message: String) : MediaPlayerException

class OfflineAccessRightsExpiredException(override val message: String) : MediaPlayerException

class PlaybackLimitExceededException(override val message: String) : MediaPlayerException

class SessionClosedException(override val message: String) : MediaPlayerException

class SessionNotFoundException(override val message: String) : MediaPlayerException

class UnauthorizedException(override val message: String) : MediaPlayerException

class UnexpectedException(override val message: String, override val cause: Throwable?) : MediaPlayerException
```

|이름|설명|
|:--:|:--:|
|AccessRightsExpiredException|접근 권한이 만료된 경우|
|AppBundleNotRegisteredException|등록되지 않은 앱 번들 아이디를 사용한 경우|
|DeviceLimitExceededException|기기 제한이 초과한 경우|
|LicenseCheckFailedException|라이선스 확인에 실패한 경우|
|LicenseCheckFailureException|라이선스 확인에 실패한 경우|
|LicenseNotFoundException|라이선스를 찾을 수 없는 경우|
|MultipleConnectionsException|동시 접속이 감지된 경우|
|NetworkException|네트워크 관련 에러가 발생한 경우|
|NoAccessRightsException|접근 권한이 없는 경우|
|NoCellularAccessException|셀룰러 데이터 사용이 허용되지 않은 상황에서 와이파이 연결이 끊어졌는데 미디어를 재생하려는 경우|
|NoOfflineAccessRightsException|오프라인 접근 권한이 없는 경우|
|OfflineAccessRightsExpiredException|오프라인 접근 권한이 만료된 경우|
|PlaybackLimitExceededException|재생 제한이 초과된 경우|
|SessionClosedException|세션이 종료된 경우|
|SessionNotFoundException|세션을 찾을 수 없는 경우|
|UnauthorizedException|권한이 없는 경우|
|UnexpectedException|현재 정의 되지 않은 에러가 발생한 경우|
