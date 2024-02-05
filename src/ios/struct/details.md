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
# TimeRange

TimeRanges는 시간 범위를 표현하는 [CMTimeRange](https://developer.apple.com/documentation/coremedia/cmtimerange)를 typealias한 구조체입니다. 자세한 설명은 [CMTimeRange](https://developer.apple.com/documentation/coremedia/cmtimerange)를 참고하시기 바랍니다. 이 구조체는 [buffered](../media_player/properties/details.md#buffered)와 [seekable](../media_player/properties/details.md#seekable) 속성에서 사용됩니다.
