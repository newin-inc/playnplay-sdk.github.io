# Duration

Duration은 시간을 표현하는 CMTime을 확장한 구조체입니다. Apple은 iOS 16.0 이상에서 지원하는 [Duration](https://developer.apple.com/documentation/swift/duration)을 제공하고 있지만, 현재 프로젝트에서 필수로 사용해야 하는 부분에 대한 구현을 위해 iOS SDK이 지원하는 모든 버전에서 사용 가능한 독자적인 Duration 구조체로 개발하였습니다. 이 구조체는 [Duration](https://developer.apple.com/documentation/swift/duration)과 유사한 속성과 메서드를 제공하여 사용법에 있어서 큰 변동이 없게 설계되었습니다. 확장한 내용 일부를 아래에 소개합니다. 더 자세한 내용은 [Duration](https://developer.apple.com/documentation/swift/duration)을 참고하시면 됩니다.

## 속성
```swift
var milliseconds: Float64
var microseconds: Float64
var nanoseconds: Float64
```

## 정적 메서드
```swift
static func seconds(_ seconds: Float64) -> Duration
static func seconds<T: BinaryInteger>(_ seconds: T) -> Duration
static func milliseconds<T: BinaryInteger>(_ milliseconds: T) -> Duration
static func milliseconds(_ milliseconds: Float64) -> Duration
static func microseconds<T: BinaryInteger>(_ microseconds: T) -> Duration
static func microseconds(_ microseconds: Float64) -> Duration
static func nanoseconds<T: BinaryInteger>(_ nanoseconds: T) -> Duration
```

## 사용 예제
```swift
let duration1: Duration = .seconds(3)
let durationText1 = "\(duration1.seconds) seconds" 	// 3.0 seconds

let duration2: Duration = .milliseconds(2000)
let durationText2 = "\(duration2.seconds) seconds" 	// 2.0 seconds
```

<br><br><br><br>

--------
# MediaItem

MediaItem은 미디어의 url, 자막 정보, 메타 데이터, DRM 설정 등을 가지고 있는 구조체입니다. 

## 메서드

### buildUpon()

Builder를 사용하여 미디어 아이템에 대한 초기 설정을 합니다. 미디어 아이템의 기존 메타데이터나 DRM 구성을 바꿀 때 사용시면 됩니다. 미디어 아이템으로 사용하기 위해서는 반드시 [.build()](#build)를 해야합니다.
<div align="right">
참고: <a href="#builder">Builder</a>
</div>

```swift
func buildUpon() -> Builder
```

### from(url:)
미디어 주소를 파라미터로 입력하여 미디어 아이템을 구성합니다.

```swift
func from(url: URL) -> MediaItem
```

|타입|설명|
|:--:|--|
|URL|[URL](https://developer.apple.com/documentation/foundation/url) 참고|

## 클래스

### Builder
미디어 아이템에 정보를 추가하고 싶을 때는 MediaItem.Builder()를 사용하면 됩니다. 정보 추가 후에는 .build()를 호출하여야 미디어 아이템으로 사용할 수 있습니다.

```swift
extension MediaItem {
    class Builder
}
```

#### 생성자 파라미터

|이름|타입|설명|필수|
|:--:|:--:|--|:--:|
|url|URL|[URL](https://developer.apple.com/documentation/foundation/url) 참고|O|

#### 메서드

#### build()
Builder를 이용하여 설정한 정보에 기반하여 미디어 아이템을 만듭니다.

```swift
func build() -> MediaItem
```

#### drmConfiguration(_)
DRM 설정을 넘겨줍니다.

```swift
func drmConfiguration(_ drmConfiguration: DrmConfiguration?) -> Builder
```

|파라미터|타입|설명|필수|
|:--:|:--:|--|:--:|
|drmConfiguration|DrmConfiguration?|앱 ID와 사용자 ID로 만든 설정|O|

#### metadataConfiguration(_)
DRM 설정을 넘겨줍니다.

```swift
func metadataConfiguration(_ metadataConfiguration: MetadataConfiguration?) -> Builder 
```

|파라미터|타입|설명|필수|
|:--:|:--:|--|:--:|
|metadataConfiguration|MetadataConfiguration?|메타데이터 설정|O|

<br><br><br><br>

--------
# TimeRange

TimeRanges는 시간 범위를 표현하는 [CMTimeRange](https://developer.apple.com/documentation/coremedia/cmtimerange)를 typealias한 구조체입니다. 자세한 설명은 [CMTimeRange](https://developer.apple.com/documentation/coremedia/cmtimerange)를 참고하시기 바랍니다. 이 구조체는 [buffered](../media_player/properties/details.md#buffered)와 [seekable](../media_player/properties/details.md#seekable) 속성에서 사용됩니다.
