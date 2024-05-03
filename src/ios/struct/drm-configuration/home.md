# DrmConfiguration

```swift
public struct DrmConfiguration {

    public let appId: String

    public var offlineAccessPeriod: Duration? = nil

    public var userData: [String : Any]

    public let userId: String

    public func buildUpon() -> DrmConfiguration.Builder

    public class Builder {

        public init(appId: String, userId: String)

        public func offlineAccessPeriod(_ offlineAccessPeriod: Duration?) -> DrmConfiguration.Builder

        public func userData(_ userData: [String : Any]) -> DrmConfiguration.Builder

        public func build() -> DrmConfiguration
    }
}
```

<div align="right">
참고: <a href="../../class/drm-configuration-builder/home.md">DrmConfiguration.Builder</a><br>
<a href="../../how-to-use/home.md#하나의-미디어-열기">하나의 미디어 열기</a>
</div>

DRM 설정을 위한 구조체입니다.

<br><br>
# 속성

## appId
```swift
public let appId: String
```

App 아이디를 가져오는 속성입니다.

<br><br>
## offlineAccessPeriod
```swift
public var offlineAccessPeriod: Duration? = nil
```

<div align="right">
참고: <a href="../../struct/duration/home.md">Duration</a>, 
<a href="../../../agent/home.md#drm">DRM 내 offlineAccessPeriod</a>
</div>
다운로드 컨텐츠의 오프라인 재생 기간을 가져오는 속성입니다.

<br><br>
## userData
```swift
public var userData: [String : Any]
```
사용자 데이터를 나타내는 속성입니다. 
<div align="right">
<a href="../../../agent/home.md#drm">DRM 내 userData</a>
</div

<br><br>
## userId
```swift
public let userId: String
```
사용자 아이디를 나타내는 속성입니다.

<br><br>
# 메서드

## buildUpon
```swift
public func buildUpon() -> DrmConfiguration.Builder
```
Builder를 사용하여 DRM에 대한 초기 설정을 합니다.

<div align="right">
참고: <a href="../../how-to-use/home.md#하나의-미디어-열기">하나의 미디어 열기</a>
</div>

<br><br>
# 클래스

## DrmConfiguration.Builder

```swift
public class Builder {

    public init(appId: String, userId: String)

    public func offlineAccessPeriod(_ offlineAccessPeriod: Duration?) -> DrmConfiguration.Builder

    public func userData(_ userData: [String : Any]) -> DrmConfiguration.Builder

    public func build() -> DrmConfiguration
}
```
<div align="right">
참고: <a href="../../class/drm-configuration-builder/home.md">DrmConfiguration.Builder</a>
</div>
