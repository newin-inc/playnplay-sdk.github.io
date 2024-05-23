# TextTrack

```swift
class TextTrack : MediaTrack
```
[MediaTrack](../media-track/home.md)을 확장한 클래스로, 자막에 사용되는 클래스입니다.

<div align="right">
부모 클래스: <a href="../media-track/home.md">MediaTrack</a>
</div>

<br><br>
# 클래스 메서드

## load(url:)

```swift
class func load(url: URL) async throws -> [TextTrack] 
```

|파라미터|타입|설명|
|:--:|:--:|:--:|
|url|[URL]("https://developer.apple.com/documentation/foundation/url")|자막을 가져올 url|

url을 통해서, 자막을 가져오는 메서드입니다.

<br><br>
# 클래스 

## TextTrack.Cue

```swift
extension TextTrack {
    public class Cue : Equatable
}
```

텍스트 큐를 나타내는 클래스입니다. 아래의 속성을 가지고 있습니다.

|이름|파라미터|설명|
|:--:|:--:|:--:|
|id|String?|자막 아이디|
|startTime|[Duration](../../struct/duration/home.md)|시작 위치|
|endTime|[Duration](../../struct/duration/home.md)|종료 위치|
|text|String?|자막|



