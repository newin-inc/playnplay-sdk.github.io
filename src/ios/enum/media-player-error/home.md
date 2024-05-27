# MediaPlayerError

```swift
enum MediaPlayerError : LocalizedError
```

[Locallized Error](https://developer.apple.com/documentation/foundation/localizederror/)를 확장한 열거형으로, 에러 상태를 나타내는 열거형입니다. 에러 발생 시에, 이 열거형을 토대로 상황에 맞는 처리를 할 수 있습니다.

<div align="right">
참고: <a href="https://developer.apple.com/documentation/foundation/localizederror">LocalizedError</a>
</div>

<br>

# 케이스

## accessRightsExpired

```swift
case accessRightsExpired(message: String)
```

접근 권한이 만료된 경우

## appBundleNotRegistered

```swift
case appBundleNotRegistered
```

등록되지 않은 앱 번들 아이디를 사용한 경우

## deviceLimitExceeded

```swift
case deviceLimitExceeded(message: String)
```

기기 제한이 초과한 경우

## licenseCheckFailed

```swift
case licenseCheckFailed(message: String)
```

라이선스 확인에 실패한 경우

## licenseNotFound

```swift
case licenseNotFound(message: String)
```

라이선스를 찾을 수 없는 경우

## multipleConnections

```swift
case multipleConnections(message: String)
```

동시 접속이 감지된 경우

## network

```swift
case network(message: String)
```

네트워크 관련 에러가 발생한 경우

## noAccessRights

```swift
case noAccessRights(message: String)
```

접근 권한이 없는 경우

## noCellularAccess

```swift
case noCellularAccess
```

셀룰러 데이터 사용이 허용되지 않은 상황에서 와이파이 연결이 끊어졌는데 미디어를 재생하려는 경우

## noLicenseData

```swift
case noLicenseData(message: String)
```

라이선스 데이터가 없는 경우

## noOfflineAccessRights

```swift
case noOfflineAccessRights(message: String)
```

오프라인 접근 권한이 없는 경우

## offlineAccessRightsExpired

```swift
case offlineAccessRightsExpired(message: String)
```

오프라인 접근 권한이 만료된 경우

## playbackLimitExceeded

```swift
case playbackLimitExceeded(message: String)
```

재생 제한이 초과된 경우

## screenCaptureDetected

```swift
case screenCaptureDetected(message: String)
```

화면 캡처가 감지된 경우

## sessionClosed

```swift
case sessionClosed(message: String)
```

세션이 종료된 경우

## sessionNotFound

```swift
case sessionNotFound(message: String)
```

세션을 찾을 수 없는 경우

## unauthorized

```swift
case unauthorized(message: String)
```

권한이 없는 경우

## unexpected

```swift
case unexpected(message: String)
```

현재 정의 되지 않은 에러가 발생한 경우

