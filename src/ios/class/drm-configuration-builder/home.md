# DrmConfiguration.Builder

```swift
class Builder
```

DRM 구성을 위해 초기 설정을 합니다. 제공받은 App 아이디와 사용자 아이디(User ID)를 입력하면 됩니다. [.build()](#build)를 호출하여 구성을 완료합니다.

<br>

# 생성자

```swift
init(appId: String, userId: String)
```
|파라미터|타입|설명|필수|
|:--:|:--:|:--:|:--:|
|appId|String|App 아이디|O|
|userId|String|사용자 아이디|O|

<br>

# 메서드

## build()

```swift
func build() -> DrmConfiguration
```

추가로 입력 받은 정보로부터 DRM을 최종 구성합니다.

<div align="right">
참고: <a href="../../struct/drm-configuration/home.md">DrmConfiguration</a>
</div>

## offlineAccessPeriod(_)

```swift
func offlineAccessPeriod(_ offlineAccessPeriod: Duration?) -> DrmConfiguration.Builder
```

오프라인 재생 기한을 설정합니다.

<div align="right">
참고: <a href="../../struct/duration/home.md">Duration</a><br>
<a href="../../../agent/home.md#drm">DRM 내 offlineAccessPeriod</a>
</div>

## userData(_)

```swift
func userData(_ userData: [String : Any]) -> DrmConfiguration.Builder
```

사용자 데이터(Callback URL에 전달할 데이터)를 추가합니다.

<div align="right">
참고: <a href="../../../agent/home.md#drm">DRM 내 userData</a><br>
<a href="../../how-to-use/home.md#하나의-미디어-열기">하나의 미디어 열기</a>
</div>
