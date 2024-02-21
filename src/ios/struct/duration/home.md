# Duration

```swift
typealias Duration = CMTime

extension CMTime {

    public var milliseconds: Float64 { get }

    public var microseconds: Float64 { get }

    public var nanoseconds: Float64 { get }

    public static func seconds(_ seconds: Float64) -> CMTime

    public static func seconds<T>(_ seconds: T) -> CMTime where T : BinaryInteger

    public static func milliseconds<T>(_ milliseconds: T) -> CMTime where T : BinaryInteger

    public static func milliseconds(_ milliseconds: Float64) -> CMTime

    public static func microseconds<T>(_ microseconds: T) -> CMTime where T : BinaryInteger

    public static func microseconds(_ microseconds: Float64) -> CMTime

    public static func nanoseconds<T>(_ nanoseconds: T) -> CMTime where T : BinaryInteger
}
```

Duration은 시간을 표현하는 CMTime을 확장한 구조체입니다. Apple은 iOS 16.0 이상에서 지원하는 [Duration](https://developer.apple.com/documentation/swift/duration)을 제공하고 있지만, 현재 프로젝트에서 필수로 사용해야 하는 부분에 대한 구현을 위해 iOS SDK이 지원하는 모든 버전에서 사용 가능한 독자적인 Duration 구조체로 개발하였습니다. 이 구조체는 [Duration](https://developer.apple.com/documentation/swift/duration)과 유사한 속성과 메서드를 제공하여 사용법에 있어서 큰 변동이 없게 설계되었습니다. 확장한 내용 일부를 아래에 소개합니다. 더 자세한 내용은 [Duration](https://developer.apple.com/documentation/swift/duration)을 참고하시면 됩니다.

* [속성](./details.md#속성)

* [정적 메서드](./details.md#정적-메서드)

* [사용 예제](./details.md#사용-예제)