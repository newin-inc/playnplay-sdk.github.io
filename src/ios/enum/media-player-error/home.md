# MediaPlayerError

```swift
enum MediaPlayerError: LocalizedError
```
<div align="right">
참고: <a href="https://developer.apple.com/documentation/foundation/localizederror">LocalizedError</a>
</div>
<br><br>

|이름|설명|
|:--:|:--:|
|accessRightsExpired(message: String)|접근 권한이 만료된 경우|
|appBundleNotRegistered|등록되지 않은 앱 번들 아이디를 사용한 경우|
|deviceLimitExceeded(message: String)|기기 제한이 초과한 경우|
|licenseCheckFailed(message: String)|라이선스 확인에 실패한 경우|
|licenseNotFound(message: String)|라이선스를 찾을 수 없는 경우|
|multipleConnections(message: String)|동시 접속이 감지된 경우|
|network(message: String)|네트워크 관련 에러가 발생한 경우|
|noAccessRights(message: String)|접근 권한이 없는 경우|
|noCellularAccess|셀룰러 데이터 사용이 허용되지 않은 상황에서 와이파이 연결이 끊어졌는데 미디어를 재생하려는 경우|
|noLicenseData(message: String)|라이선스 데이터가 없는 경우|
|noOfflineAccessRights(message: String)|오프라인 접근 권한이 없는 경우|
|offlineAccessRightsExpired(message: String)|오프라인 접근 권한이 만료된 경우|
|playbackLimitExceeded(message: String)|재생 제한이 초과된 경우|
|screenCaptureDetected(message: String)|화면 캡처가 감지된 경우|
|sessionClosed(message: String)|세션이 종료된 경우|
|sessionNotFound(message: String)|세션을 찾을 수 없는 경우|
|unauthorized(message: String)|권한이 없는 경우|
|unexpected(message: String)|현재 정의 되지 않은 에러가 발생한 경우|

[Locallized Error](https://developer.apple.com/documentation/foundation/localizederror/)를 확장한 열거형으로, 에러 상태를 나타내는 열거형입니다. 에러 발생 시에, 이 열거형을 토대로 상황에 맞는 처리를 할 수 있습니다.