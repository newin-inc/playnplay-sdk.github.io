# MediaMetadata.Builder

```swift
extension MediaMetadata {

    public class Builder {

        public init()

        public func title(_ title: String?) -> MediaMetadata.Builder

        public func artworkUrl(_ artworkUrl: URL?) -> MediaMetadata.Builder

        public func downloadPath(_ downloadPath: String?) -> MediaMetadata.Builder

        public func build() -> MediaMetadata
    }
}
```
제목, 아트워크, 다운로드 경로를 추가할 때 사용합니다. .build()를 호출하여 구성을 완료합니다.

## 생성자
```swift
public init()
```
파라미터 없이, 초기화합니다.

<br><br>
## 메서드

### title(_)
```swift
public func title(_ title: String?) -> MediaMetadata.Builder
``` 
제목을 추가합니다.

<br><br>
### artworkUrl(_)
```swift
public func artworkUrl(_ artworkUrl: URL?) -> MediaMetadata.Builder
``` 
아트워크를 추가합니다.

<br><br>
### downloadPath(_)
```swift
public func downloadPath(_ downloadPath: String?) -> MediaMetadata.Builder
``` 
다운로드 경로를 추가합니다.

<br><br>
### build()
```swift
public func build() -> MediaMetadata
``` 
추가로 입력 받은 정보로부터 메타데이터를 최종 구성합니다.

<br><br>
## 사용 예제
```swift
let mediaMetadata = MediaMetadata
    .Builder()
    .title("제목")
    .artworkUrl(URL(string:"https://www.example.com/image.jpg")!)
    .build()

let mediaItem = MediaItem
    .Builder(url: URL(string: "https://example.com/media.mp4")!)
    .mediaMetadata(mediaMetadata)
    .build()
```

<div align="right">
참고: <a href="../../class/media-item-builder/home.md">MediaItem.Builder</a>
</div>
