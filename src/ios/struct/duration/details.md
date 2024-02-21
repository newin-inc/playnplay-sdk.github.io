# 속성
```swift
var milliseconds: Float64
var microseconds: Float64
var nanoseconds: Float64
```

# 정적 메서드
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