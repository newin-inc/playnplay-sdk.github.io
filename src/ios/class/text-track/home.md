# TextTrack

```swift
public class TextTrack : MediaTrack {

    func getCues(at: Duration) -> [Cue]
}

extension TextTrack {

    class func load(url: URL) async throws -> [TextTrack] 

    public class Cue : Equatable {

        final public let id: String?

        final public let startTime: Duration

        final public let endTime: Duration

        final public let text: String?
    }
}
```
<div align="right">
부모 클래스: <a href="../media-track/home.md">MediaTrack</a>
</div>

[MediaTrack](../media-track/home.md)을 확장한 클래스로, 자막에 사용되는 클래스입니다.

<br><br>
# 메서드

## getCue(at:)

```swift
func getCues(at: Duration) -> [Cue]
```

재생 위치를 입력받아서 해당 위치가 포함된 모든 자막 큐를 가져옵니다.

|파라미터|타입|설명|
|:--:|:--:|:--:|
|at|[Duration](../../struct/duration/home.md)|얻어오고 싶은 자막 큐의 재생 위치|

<div align="right">
참고: <a href="#cue">TextTrack.Cue</a>
</div>

<br><br>
## load(url:)

```swift
class func load(url: URL) async throws -> [TextTrack] 
```

url을 통해서, 자막을 가져오는 메서드입니다.

|파라미터|타입|설명|
|:--:|:--:|:--:|
|url|[URL]("https://developer.apple.com/documentation/foundation/url")|자막을 가져올 url|

<br><br>
# 클래스 

## TextTrack.Cue

```swift
extension TextTrack {
    public class Cue : Equatable {

        final public let id: String?

        final public let startTime: Duration

        final public let endTime: Duration

        final public let text: String?
    }
}
```

텍스트 큐를 나타내는 클래스입니다. 

|이름|파라미터|설명|
|:--:|:--:|:--:|
|id|String?|자막 아이디|
|startTime|[Duration](../../struct/duration/home.md)|시작 위치|
|endTime|[Duration](../../struct/duration/home.md)|종료 위치|
|text|String?|자막|



