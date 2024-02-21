# MetadataConfiguration.Builder

```swift
extension MetadataConfiguration {

    public class Builder {

        public init()

        public func title(_ title: String?) -> MetadataConfiguration.Builder

        public func artworkUrl(_ artworkUrl: URL?) -> MetadataConfiguration.Builder

        public func build() -> MetadataConfiguration
    }
}
```
제목과 아트워크를 추가할 때 사용합니다. .build()를 호출하여 구성을 완료합니다.

## 생성자
```swift
public init()
```
파라미터 없이, 초기화합니다.

## 메서드

### title(_)
```swift
public func title(_ title: String?) -> MetadataConfiguration.Builder
``` 
제목을 추가합니다.

### artworkUrl(_)
```swift
public func artworkUrl(_ artworkUrl: URL?) -> MetadataConfiguration.Builder
``` 
아트워크를 추가합니다.

### build()
```swift
public func build() -> MetadataConfiguration
``` 
추가로 입력 받은 정보로부터 메타데이터를 최종 구성합니다.

## 사용 예제
```swift
let metadataConfiguration = MetadataConfiguration
    .Builder()
    .title("제목")
    .artworkUrl(URL(string:"이미지주소.jpg")!)
    .build()

let mediaItem = MediaItem
    .Builder(url: URL(string: "미디어주소.mp3")!)
    .metadataConfiguration(metadataConfiguration)
    .build()
```

<div align="right">
참고: <a href="../../class/media-item-builder/home.md">MediaItem.Builder</a>
</div>
