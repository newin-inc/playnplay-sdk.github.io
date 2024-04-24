# MediaPlayerError

```swift
public enum MediaPlayerError: LocalizedError {

    case accessRightsExpired(message: String)
    case appBundleNotRegistered
    case deviceLimitExceeded(message: String)
    case licenseNotFound(message: String)
    case licenseCheckFailed(message: String)
    case multipleConnections(message: String)
    case network(message: String)
    case noAccessRights(message: String)
    case noCellularAccess
    case noLicenseData(message: String)
    case noOfflineAccessRights(message: String)
    case offlineAccessRightsExpired(message: String)
    case playbackLimitExceeded(message: String)
    case screenCaptureDetected(message: String)
    case sessionClosed(message: String)
    case sessionNotFound(message: String)
    case unexpected(message: String)
    case unauthorized(message: String)
}
```
<div align="right">
참고: <a href="https://developer.apple.com/documentation/foundation/localizederror">LocalizedError</a>
</div>
<br><br>

|이름|설명|
|:--:|--|
|accessRightsExpired(message: String)|접근 권환이 만료된 경우|
|appBundleNotRegistered|등록되지 않은 앱 번들 아이디를 사용한 경우|
|deviceLimitExceeded(message: String)|기기 제한이 초과한 경우|
|licenseCheckFailed(message: String)|라이선스 확인에 실패한 경우|
|licenseNotFound(message: String)|라이선스를 찾을 수 없는 경우|
|multipleConnections(message: String)|동시 접속이 감지된 경우|
|network(message: String)|네트워크 관련 에러가 발생한 경우|
|noAccessRights(message: String)|접근 권한이 없는 경우|
|noCellularAccess|셀룰러 데이터 사용이 허용되지 않은 상황에서 와이파이 연결이 끊어졌는데 미디어를 재생하려는 경우|
|noLicenseData(message: String)|라이선스 데이터가 없는 경우|
|noOfflineAccessRights(message: String)|오프라인 접근 권환이 없는 경우|
|offlineAccessRightsExpired(message: String)|오프라인 접근 권한이 만료된 경우|
|playbackLimitExceeded(message: String)|재생 제한이 초과된 경우|
|screenCaptureDetected(message: String)|화면 캡처가 감지된 경우|
|sessionClosed(message: String)|세션이 종료된 경우|
|sessionNotFound(message: String)|세션을 찾을 수 없는 경우|
|unauthorized(message: String)|권한이 없는 경우|
|unexpected(message: String)|현재 정의 되지 않은 에러가 발생한 경우|

에러 상태를 나타내는 열거형입니다.

사용 예제: 에러 형태를 처리하는 예제
```swift
player.addEventHandler(
    .error({ error in

        switch error {
        case MediaPlayerError.noCellularAccess:
            NSLog("\(error.localizedDescription)")
        case let MediaPlayerError.unauthorized(message: message):
            NSLog(message)
        default: break
        }

        if case let MediaPlayerError.screenCaptureDetected(message: message) = error {
            NSLog("\(message)")
        }
    })
)
```
<div align="right">
참고: <a href="../../class/media-player/details.md#addeventhandler_">addEventHandler</a>, 
<a href="../event-handlers/details.md#error">.error</a>, 
<a href="#localizeddescription">localizedDescription</a>
</div>

## 속성

### localizedDescription
```swift
var localizedDescription: String { get }
```
에러를 텍스트 형태로 출력한 속성입니다. 해당 속성은 [Error](https://developer.apple.com/documentation/swift/error) 프로토콜에서 제공하는 [localizedDescription](https://developer.apple.com/documentation/swift/error/localizeddescription)입니다.

사용 예제: 에러 메시지 포함한 알림창을 보여주는 예제
```swift
player.addEventHandler(
    .error({ error in
        let alert = UIAlertController(
            title: nil,
            message: error.localizedDescription,
            preferredStyle: .alert
        )
        present(alert, animated: true)
    })
)
```

