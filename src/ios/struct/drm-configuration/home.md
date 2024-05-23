# DrmConfiguration

```swift
struct DrmConfiguration
```
DRM 설정을 위한 구조체입니다.

<div align="right">
참고: <a href="../../how-to-use/home.md#하나의-미디어-열기">하나의 미디어 열기</a>
</div>

<br><br>
# 생성자
```swift
init(appId: String, userId: String, userData: [String: Any])
```

|이름|타입|설명|필수|
|:--:|:--:|:--:|:--:|
|appId|String|App 아이디|O|
|userId|String|사용자 아이디|O|
|userData|\[String : Any\]|사용자 데이터|O|

App 아이디, 사용자 아이디, 사용자 데이터를 입력하여 Drm 설정을 할 수 있습니다.

<br><br>
# 속성

## appId
```swift
let appId: String
```
|타입|설명|
|:--:|:--:|
|String|App 아이디|

<br><br>
## offlineAccessPeriod
```swift
var offlineAccessPeriod: Duration? = nil
```
|타입|설명|
|:--:|:--:|
|[Duration](../../struct/duration/home.md)?|다운로드 컨텐츠의 오프라인 재생 기간|

<div align="right">
참고: <a href="../../struct/duration/home.md">Duration</a>, 
<a href="../../../agent/home.md#drm">DRM 내 offlineAccessPeriod</a>
</div>

<br><br>
## userData
```swift
var userData: [String : Any]
```
|타입|설명|
|:--:|:--:|
|\[String : Any\]|사용자 데이터|

<div align="right">
참고: <a href="../../../agent/home.md#drm">DRM 내 userData</a>
</div

<br><br>
## userId
```swift
let userId: String
```
|타입|설명|
|:--:|:--:|
|String|사용자 아이디|

<br><br>
# 메서드

## buildUpon()
```swift
func buildUpon() -> DrmConfiguration.Builder
```
Builder를 사용하여 DRM에 대한 초기 설정을 합니다.

<div align="right">
참고: <a href="#drmconfigurationbuilder">DrmConfiguration.Builder</a><br>
<a href="../../how-to-use/home.md#하나의-미디어-열기">하나의 미디어 열기</a>
</div>

<br><br>
# 클래스

## DrmConfiguration.Builder

```swift
class Builder
```

DRM 구성을 하기 위한 클래스입니다. 자세한 내용은 [DrmConfiguration.Builder 문서](../../class/drm-configuration-builder/home.md)를 참고하세요.

<div align="right">
참고: <a href="../../class/drm-configuration-builder/home.md">DrmConfiguration.Builder</a>
</div>
