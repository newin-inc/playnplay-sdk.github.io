# Duration

```swift
typealias Duration = CMTime
```

Duration은 시간을 표현하는 [CMTime](https://developer.apple.com/documentation/coremedia/cmtime)을 확장한 구조체입니다. Apple은 iOS 16.0 이상에서 지원하는 [Duration](https://developer.apple.com/documentation/swift/duration)을 제공하고 있지만, 현재 프로젝트에서 필수로 사용해야 하는 부분에 대한 구현을 위해 iOS SDK이 지원하는 모든 버전에서 사용 가능한 독자적인 Duration 구조체로 개발하였습니다. 이 구조체는 [Duration](https://developer.apple.com/documentation/swift/duration)과 유사한 속성과 메서드를 제공하여 사용법에 있어서 큰 변동이 없게 설계되었습니다. 확장한 내용 일부를 아래에 소개합니다. 더 자세한 내용은 [Duration](https://developer.apple.com/documentation/swift/duration)을 참고하시면 됩니다.

<br>

# 속성

```swift
var milliseconds: Float64 { get }
var microseconds: Float64 { get }
var nanoseconds: Float64 { get }
```

밀리초, 마이크로초, 나노초를 나타내는 속성입니다. 초에 해당하는 [seconds](https://developer.apple.com/documentation/coremedia/cmtime/1489443-seconds)는 [CMTime](https://developer.apple.com/documentation/coremedia/cmtime)에 포함되어 있습니다.

<br>

# 정적 메서드

```swift
static func seconds(_ seconds: Float64) -> CMTime
static func seconds<T: BinaryInteger>(_ seconds: T) -> CMTime
static func milliseconds<T: BinaryInteger>(_ milliseconds: T) -> CMTime
static func milliseconds(_ milliseconds: Float64) -> CMTime
static func microseconds<T: BinaryInteger>(_ microseconds: T) -> CMTime
static func microseconds(_ microseconds: Float64) -> CMTime
static func nanoseconds<T: BinaryInteger>(_ nanoseconds: T) -> CMTime
```

위의 정적 메서드를 이용하여, 초, 밀리초, 마이크로초, 나노초 단위를 입력하여 [Duration](#duration)을 만들 수 있습니다.
