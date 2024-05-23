# SubtitleConfiguration

```swift
struct SubtitleConfiguration
```

자막에 관련한 구조체입니다. 

<div align="right">
참고: <a href="../../how-to-use/home.md#자막을-추가하는-예제">자막을 추가하는 예제</a>
</div>

<br><br>
# 생성자

```swift
init(url: URL, language: String? = nil, label: String? = nil, mode: Mode = .autoSelect)
```

|이름|타입|설명|필수|기본값|
|:--:|:--:|:--:|:--:|:--:|
|url|[URL](https://developer.apple.com/documentation/foundation/url)|자막 주소|O|없음|
|language|String?|자막 언어|X|nil|
|label|String?|자막 라벨|X|nil|
|mode|[SubtitleConfiguration.Mode](#subtitleconfigurationmode)|자막 모드|X|[.autoSelect](../../enum/subtitle-configuration-mode/home.md#autoselect)|

<br><br>
# 속성

## label

```swift
let label: String?
```
|타입|설명|
|:--:|--|
|String?|자막 라벨|

## language
```swift
let language: String?
```
|타입|설명|
|:--:|--|
|String?|자막 언어|

## mode 

```swift
let mode: Mode
```
|타입|설명|
|:--:|--|
|[SubtitleConfiguration.Mode](#subtitleconfigurationmode)|현재 자막 모드|

<div align="right">
참고: <a href="#subtitleconfigurationmode">SubtitleConfiguration.Mode</a>
</div>

## url   

```swift
let url: URL
```
|타입|설명|
|:--:|--|
|[URL](https://developer.apple.com/documentation/foundation/url)|자막 주소|

<br><br>
# 클래스

## SubtitleConfiguration.Builder
```swift
class Builder
```
자막을 만드는 클래스입니다. 자세한 내용은 [SubtitleConfiguration.Builder](../../class/subtitle-configuration-builder/home.md)를 참고하세요.
<div align="right">
참고: <a href="../../class/subtitle-configuration-builder/home.md">SubtitleConfiguration.Builder</a>,<br>
<a href="../../how-to-use/home.md#자막을-추가하는-예제">자막을 추가하는 예제</a>
</div>

# 열거형

## SubtitleConfiguration.Mode
```swift
enum Mode
```
현재 자막 모드를 나타내는 열거형입니다. 자세한 내용은 [SubtitleConfiguration.Mode](../../enum/subtitle-configuration-mode/home.md)를 참고하세요.

<div align="right">
참고: <a href="../../enum/subtitle-configuration-mode/home.md">SubtitleConfiguration.Mode</a>
</div>

