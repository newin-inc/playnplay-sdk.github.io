# MediaPlayerException

```kotlin
import com.newin.nplayer.sdk.MediaPlayerException
```

```kotlin
class MediaPlayerException(
    override val message: String,
    override val cause: Throwable?,
    errorCode: Int,
) : PlaybackException(message, cause, errorCode)
```

예외 처리를 위한 클래스입니다. [androidx.media3.common.PlaybackException](https://developer.android.com/reference/kotlin/androidx/media3/common/PlaybackException)을 확장한 클래스로 아래와 같은 예외 처리 클래스로 사용됩니다. 

## AccessRightsExpiredException

```kotlin
class AccessRightsExpiredException(override val message: String) : MediaPlayerException
```

접근 권한이 만료된 경우

## AppBundleNotRegisteredException

```kotlin
class AppBundleNotRegisteredException : MediaPlayerException
```

등록되지 않은 앱 번들 아이디를 사용한 경우

## DeviceLimitExceededException

```kotlin
class DeviceLimitExceededException(override val message: String) : MediaPlayerException
```

기기 제한이 초과한 경우

## LicenseCheckFailedException

```kotlin
class LicenseCheckFailedException(override val message: String) : MediaPlayerException
```

라이선스 확인에 실패한 경우

## LicenseCheckFailureException

```kotlin
class LicenseCheckFailureException(override val message: String) : MediaPlayerException
```

라이선스 확인에 실패한 경우

## LicenseNotFoundException

```kotlin
class LicenseNotFoundException(override val message: String) : MediaPlayerException
```

라이선스를 찾을 수 없는 경우

## MultipleConnectionsException

```kotlin
class MultipleConnectionsException(override val message: String) : MediaPlayerException
```

동시 접속이 감지된 경우

## NetworkException

```kotlin
class NetworkException(override val message: String) : MediaPlayerException
```

네트워크 관련 에러가 발생한 경우

## NoAccessRightsException

```kotlin
class NoAccessRightsException(override val message: String) : MediaPlayerException
```

접근 권한이 없는 경우

## NoCellularAccessException

```kotlin
class NoCellularAccessException : MediaPlayerException
```

셀룰러 데이터 사용이 허용되지 않은 상황에서 와이파이 연결이 끊어졌는데 미디어를 재생하려는 경우

## NoOfflineAccessRightsException

```kotlin
class NoOfflineAccessRightsException(override val message: String) : MediaPlayerException
```

오프라인 접근 권한이 없는 경우

## OfflineAccessRightsExpiredException

```kotlin
class OfflineAccessRightsExpiredException(override val message: String) : MediaPlayerException
```

오프라인 접근 권한이 만료된 경우

## PlaybackLimitExceededException

```kotlin
class PlaybackLimitExceededException(override val message: String) : MediaPlayerException
```

재생 제한이 초과된 경우

## SessionClosedException

```kotlin
class SessionClosedException(override val message: String) : MediaPlayerException
```

세션이 종료된 경우

## SessionNotFoundException

```kotlin
class SessionNotFoundException(override val message: String) : MediaPlayerException
```

세션을 찾을 수 없는 경우

## UnauthorizedException

```kotlin
class UnauthorizedException(override val message: String) : MediaPlayerException
```

권한이 없는 경우

## UnexpectedException

```kotlin
class UnexpectedException(override val message: String, override val cause: Throwable?) : MediaPlayerException
```

현재 정의 되지 않은 에러가 발생한 경우
